# domlx

[![pub package](https://img.shields.io/badge/pub-v1.0.0-blue.svg)](https://pub.dev/packages/domlx)
[![license](https://img.shields.io/badge/license-MIT-green.svg)](LICENSE)

A type-safe Dart client library for **[oMLX](https://github.com/jundot/omlx)** — the macOS-native Apple Silicon LLM inference server featuring continuous batching, SSD caching, and OpenAI-compatible HTTP endpoints.

## Features

- **Full OpenAI-Compatible API Support**: Chat completions, text completions, embeddings, and audio (STT/TTS).
- **oMLX Extensions**:
  - **Reasoning Content**: Native extraction of `<think>` reasoning blocks (DeepSeek-R1, Qwen 2.5, MiniMax).
  - **Prefix Cache & Timing**: Detailed `Usage` object including `cached_tokens`, `prompt_tokens_details`, `prefill_duration`, and `generation_duration`.
  - **SSE Keep-Alive Handling**: Transparent handling of `: keep-alive` comments during long prefill phases.
- **Structured Output**: Native JSON Schema validation with `ResponseFormat.jsonSchema(...)`.
- **Tool Calling**: Multi-format function calling with structured argument serialization.
- **Semantic Document Reranking**: Direct `/v1/rerank` endpoint integration.
- **OpenAI Responses API (`/v1/responses`)**: Context continuation and tool execution for Codex CLI compatibility.
- **Models Lifecycle**: Inspect discovered models, monitor per-model engine status, and manually unload models.

---

## Getting Started

Add `domlx` to your `pubspec.yaml`:

```yaml
dependencies:
  domlx: ^1.0.0
```

---

## Quick Start

```dart
import 'package:domlx/domlx.dart';

void main() async {
  final client = OmlxClient(
    baseUrl: 'http://localhost:8000',
    // apiKey: 'optional-bearer-token',
  );

  try {
    // 1. Health check
    final health = await client.health();
    print('oMLX Server Status: ${health.status} (version: ${health.version})');

    // 2. Chat completion
    final response = await client.chat.create(
      ChatCompletionRequest(
        model: 'mlx-community/Qwen2.5-7B-Instruct-4bit',
        messages: [
          ChatMessage.system('You are an expert software engineer.'),
          ChatMessage.user('How does continuous batching work in LLM serving?'),
        ],
        temperature: 0.7,
      ),
    );

    print('Response: ${response.firstText}');
    print('Usage: ${response.usage}');
  } finally {
    client.close();
  }
}
```

---

## Usage Guide

### 1. Reasoning & Thinking Models

Models like DeepSeek-R1 and Qwen 2.5 wrap their internal thought process inside `<think>` blocks. `domlx` surfaces these thoughts via `reasoningContent`:

```dart
final response = await client.chat.create(
  ChatCompletionRequest(
    model: 'deepseek-r1-distill-qwen-7b',
    messages: [
      ChatMessage.user('What is the square root of 9801?'),
    ],
  ),
);

// Access reasoning steps
if (response.firstReasoningContent != null) {
  print('Internal Reasoning:\n${response.firstReasoningContent}\n');
}

// Access final answer
print('Answer: ${response.firstText}');
```

### 2. Streaming Responses (Server-Sent Events)

Streams receive token deltas in real time. Built-in keep-alive comments from oMLX are handled automatically:

```dart
final stream = client.chat.createStream(
  ChatCompletionRequest(
    model: 'mlx-community/Qwen2.5-7B-Instruct-4bit',
    messages: [ChatMessage.user('Tell me a short story about an astronaut.')],
  ),
);

await for (final chunk in stream) {
  final token = chunk.firstContent;
  if (token != null) {
    stdout.write(token);
  }
}
```

Or using the convenience helper:

```dart
await for (final token in client.chat.streamText(
  model: 'mlx-community/Qwen2.5-7B-Instruct-4bit',
  prompt: 'Write a haiku about Apple Silicon.',
)) {
  stdout.write(token);
}
```

### 3. Tool Calling (Function Calling)

```dart
final response = await client.chat.create(
  ChatCompletionRequest(
    model: 'mlx-community/Qwen2.5-7B-Instruct-4bit',
    messages: [ChatMessage.user('What is the weather in Tokyo?')],
    tools: [
      Tool.function(
        name: 'get_current_weather',
        description: 'Get the current weather in a city',
        parameters: {
          'type': 'object',
          'properties': {
            'location': {'type': 'string', 'description': 'The city and state'},
            'unit': {'type': 'string', 'enum': ['celsius', 'fahrenheit']},
          },
          'required': ['location'],
        },
      ),
    ],
  ),
);

final toolCalls = response.firstMessage?.toolCalls;
if (toolCalls != null && toolCalls.isNotEmpty) {
  for (final tool in toolCalls) {
    print('Function to call: ${tool.function.name}');
    print('Arguments: ${tool.function.arguments}');
  }
}
```

### 4. Structured Output (JSON Schema)

Enforce guaranteed JSON outputs matching a JSON Schema:

```dart
final response = await client.chat.create(
  ChatCompletionRequest(
    model: 'mlx-community/Qwen2.5-7B-Instruct-4bit',
    messages: [
      ChatMessage.user('Extract information: Bob is a 45-year-old architect from London.'),
    ],
    responseFormat: ResponseFormat.jsonSchema(
      name: 'person_info',
      schema: {
        'type': 'object',
        'properties': {
          'name': {'type': 'string'},
          'age': {'type': 'integer'},
          'city': {'type': 'string'},
        },
        'required': ['name', 'age', 'city'],
      },
      strict: true,
    ),
  ),
);

print(response.firstText);
```

### 5. Semantic Document Reranking

Rerank retrieved passages according to semantic relevance:

```dart
final rankings = await client.rerank.rank(
  model: 'mlx-community/jina-reranker-v3-mlx',
  query: 'How does prefix caching improve LLM latency?',
  documents: [
    'Prefix caching reuses KV cache for repeated prompt prefixes.',
    'Photosynthesis is the process by which green plants make food.',
    'Continuous batching schedules prompts dynamically.',
  ],
  topN: 2,
);

for (final result in rankings) {
  print('Relevance: ${result.relevanceScore.toStringAsFixed(4)} -> ${result.document}');
}
```

### 6. Text Embeddings

```dart
final vector = await client.embeddings.createVector(
  model: 'mlx-community/bge-m3-mlx-4bit',
  text: 'Apple Silicon Unified Memory Architecture',
);
print('Embedding vector dimensions: ${vector.length}');
```

### 7. Models Management

```dart
// List models
final models = await client.models.list();
for (final m in models.data) {
  print('Model: ${m.id}');
}

// Check engine loading status
final statuses = await client.models.status();
for (final s in statuses) {
  print('Model ${s.modelId} loaded: ${s.isLoaded}');
}

// Unload model from unified memory
await client.models.unload('mlx-community/Qwen2.5-7B-Instruct-4bit');
```

### 8. Audio (Whisper STT & TTS)

```dart
// Speech-to-Text
final transcription = await client.audio.transcribe(
  AudioTranscriptionRequest(
    fileBytes: await File('audio.mp3').readAsBytes(),
    filename: 'audio.mp3',
    model: 'mlx-community/whisper-large-v3-turbo',
  ),
);
print('Transcription: ${transcription.text}');

// Text-to-Speech
final audioBytes = await client.audio.speech(
  AudioSpeechRequest(
    model: 'mlx-community/Kokoro-82M-bf16',
    input: 'Hello from oMLX running locally on Mac!',
    voice: 'af_heart',
    responseFormat: 'mp3',
  ),
);
await File('output.mp3').writeAsBytes(audioBytes);
```

#### Audio Models

- **[Kokoro 82M bf16](https://huggingface.co/mlx-community/Kokoro-82M-bf16)** (`mlx-community/Kokoro-82M-bf16`):
  - **US English (`us`)**:
    - Female: `af_heart`, `af_bella`, `af_nova`, `af_sky`
    - Male: `am_adam`, `am_echo`
  - **British English (`en`)**:
    - Female: `bf_alice`, `bf_emma`
    - Male: `bm_daniel`, `bm_george`
- See the [MLX Audio Models Directory](https://blaizzy.github.io/mlx-audio/models/) for additional supported STT and TTS models.

### 9. Text Completions & OpenAI Responses API

```dart
// Legacy text completions (/v1/completions)
final text = await client.completions.generate(
  model: 'mlx-community/Qwen2.5-7B-Instruct-4bit',
  prompt: 'Once upon a time in Silicon Valley,',
  maxTokens: 64,
);
print(text);

// OpenAI Responses API (/v1/responses)
final response = await client.responses.create(
  ResponsesRequest(
    model: 'mlx-community/Qwen2.5-7B-Instruct-4bit',
    instructions: 'Reply concisely.',
    input: 'What is unified memory?',
    store: true,
  ),
);
print(response.outputText);
```
      
---

## Error Handling

`domlx` provides strongly-typed exceptions:

```dart
try {
  final response = await client.chat.create(...);
} on OmlxApiException catch (e) {
  print('HTTP ${e.statusCode}: ${e.message}');
  if (e.isUnauthorized) print('Check your API key');
  if (e.isModelNotFound) print('Model is not downloaded or discovered');
  if (e.isInsufficientMemory) print('Model is too large for available RAM');
} on OmlxNetworkException catch (e) {
  print('Network failure: ${e.message}');
}
```

---

## License

MIT License. See [LICENSE](LICENSE) for details.
