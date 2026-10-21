import 'dart:io';

import 'package:domlx/domlx.dart';

// ignore: non_constant_identifier_names
final OMLX_KEY = const String.fromEnvironment('OMLX_KEY');

void main() async {
  // Connect to a local oMLX server running on port 8000
  final client = OmlxClient(baseUrl: 'http://localhost:8000', apiKey: OMLX_KEY);

  try {
    print('=== 1. Checking oMLX Server Health ===');
    final health = await client.health();
    print('Status: ${health.status}');
    print('Version: ${health.version}');
    print('Default Model: ${health.defaultModel}');
    print('Engine Pool: ${health.enginePool}');
    print('');

    print('=== 2. Listing Available Models ===');
    final models = await client.listModels();
    for (final model in models.data) {
      print('- ${model.id} (owned by: ${model.ownedBy})');
    }
    print('');

    final modelId = 'mlx-community/Qwen3.5-9B-MLX-4bit'
    /*health.defaultModel ??
        (models.data.isNotEmpty
            ? models.data.first.id
            : 'mlx-community/Qwen2.5-7B-Instruct-4bit')*/
    ;

    print('=== 3. Chat Completion with Reasoning (Thinking Models) ===');
    final completion = await client.chat.create(
      ChatCompletionRequest(
        model: modelId,
        messages: [
          ChatMessage.system('You are a helpful AI assistant.'),
          ChatMessage.user('Solve: What is 17 * 19? Show your reasoning.'),
        ],
        temperature: 0.7,
      ),
    );

    if (completion.firstReasoningContent != null) {
      print('Thinking:\n${completion.firstReasoningContent}\n');
    }
    print('Answer: ${completion.firstText}');
    if (completion.usage != null) {
      print('Usage: ${completion.usage}');
      if (completion.usage?.cachedTokens != null) {
        print(
          'Cached tokens (Prefix Cache): ${completion.usage?.cachedTokens}',
        );
      }
    }
    print('');

    print('=== 4. Streaming Chat Completion (SSE) ===');
    stdoutWrite('Streaming: ');
    final stream = client.chat.createStream(
      ChatCompletionRequest(
        model: modelId,
        messages: [ChatMessage.user('Count from 1 to 5.')],
      ),
    );

    await for (final chunk in stream) {
      final text = chunk.firstContent;
      if (text != null) {
        stdoutWrite(text);
      }
    }
    print('\n');

    print('=== 5. Structured Output (JSON Schema) ===');
    final structuredResponse = await client.chat.create(
      ChatCompletionRequest(
        model: modelId,
        messages: [
          ChatMessage.user(
            'Generate a user profile for Alice, age 30, Software Engineer.',
          ),
        ],
        responseFormat: ResponseFormat.jsonSchema(
          name: 'user_profile',
          schema: {
            'type': 'object',
            'properties': {
              'name': {'type': 'string'},
              'age': {'type': 'integer'},
              'occupation': {'type': 'string'},
            },
            'required': ['name', 'age', 'occupation'],
          },
          strict: true,
        ),
      ),
    );
    print('Structured JSON: ${structuredResponse.firstText}\n');

    print('=== 6. Tool Calling ===');
    final toolCallingResponse = await client.chat.create(
      ChatCompletionRequest(
        model: modelId,
        messages: [
          ChatMessage.user('What is the weather in San Francisco, CA?'),
        ],
        tools: [
          Tool.function(
            name: 'get_current_weather',
            description: 'Get current weather in a given city',
            parameters: {
              'type': 'object',
              'properties': {
                'location': {'type': 'string', 'description': 'City and state'},
                'unit': {
                  'type': 'string',
                  'enum': ['celsius', 'fahrenheit'],
                },
              },
              'required': ['location'],
            },
          ),
        ],
      ),
    );

    final toolCalls = toolCallingResponse.firstMessage?.toolCalls;
    if (toolCalls != null && toolCalls.isNotEmpty) {
      for (final call in toolCalls) {
        print(
          'Model requested tool: ${call.function.name} with args: ${call.function.arguments}',
        );
      }
    } else {
      print('Response: ${toolCallingResponse.firstText}');
    }
    print('');

    print('=== 7. Semantic Document Reranking ===');
    final rerankResults = await client.rerank.rank(
      model: 'mlx-community/jina-reranker-v3-mlx',
      query: 'What is Apple Silicon MLX framework?',
      documents: [
        'MLX is an array framework designed specifically for machine learning on Apple silicon.',
        'The quick brown fox jumps over the lazy dog.',
        'Continuous batching increases LLM serving throughput significantly.',
      ],
      topN: 2,
    );

    for (final res in rerankResults) {
      print(
        'Score: ${res.relevanceScore.toStringAsFixed(4)} | Doc: ${res.document}',
      );
    }
    print('');

    print('=== 8. Text Embeddings ===');
    final vector = await client.embeddings.createVector(
      model: 'mlx-community/bge-m3-mlx-4bit',
      text: 'Semantic search with local Apple Silicon embeddings.',
    );
    print('Vector dimensions: ${vector.length}');
    print('');

    print('=== 9. Text-to-Speech (TTS) ===');
    final audioBytes = await client.audio.speech(
      const AudioSpeechRequest(
        model: 'mlx-community/Kokoro-82M-bf16',
        input: 'Hello from oMLX running locally on Apple Silicon!',
        voice: 'af_heart',
        responseFormat: 'mp3',
      ),
    );
    final outputFile = File('output.mp3');
    await outputFile.writeAsBytes(audioBytes);
    print(
      'Saved ${audioBytes.length} bytes of audio to ${outputFile.path}',
    );
  } on OmlxApiException catch (e) {
    print('API Error [HTTP ${e.statusCode}]: ${e.message}');
    if (e.isModelNotFound) {
      print('Hint: Check if the model is downloaded in oMLX.');
    }
  } on OmlxNetworkException catch (e) {
    print('Network Error: ${e.message}');
    print(
      'Hint: Make sure oMLX is running (`omlx run` or menu bar app on port 8000).',
    );
  } finally {
    client.close();
  }
}

void stdoutWrite(String message) {
  stdout.write(message);
}
