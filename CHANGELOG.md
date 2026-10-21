## 1.0.1

- **Streaming & SSE Robustness**:
  - Added inactivity timeout handling to `OmlxHttpClient.postStream` to throw `OmlxNetworkException` instead of hanging indefinitely on stalled connections.
  - Added mid-stream SSE error detection (`event: error` and `error`/`detail` JSON payloads), surfacing typed `OmlxApiException`s during streaming.
- **Error Handling**:
  - Updated `OmlxApiException.isInsufficientMemory` to match both HTTP `507` and `code == 'insufficient_memory'`.
  - Improved error response parsing for string error payloads, top-level `code` fields, and numeric error status codes.
- **Type Safety & Documentation**:
  - Enabled strict analyzer checks (`strict-casts`, `strict-inference`, `strict-raw-types`) and `public_member_api_docs`.
  - Added comprehensive `///` API documentation across all public services, exceptions, and models.
  - Added unit tests for SSE timeouts, mid-stream error handling, and exception helpers.

## 1.0.0

- Initial release of `domlx`, a type-safe Dart client library for **oMLX** (Apple Silicon LLM inference server).
- **Chat Completions (`/v1/chat/completions`)**:
  - Synchronous and SSE streaming chat completions (`ChatService.create`, `ChatService.createStream`, `ChatService.generateText`, `ChatService.streamText`).
  - Native support for reasoning/thinking models (`reasoningContent` / `firstReasoningContent` and `ChatService.streamReasoning`).
  - Multi-modal user messages via `ChatMessage.userParts(...)` (`ContentPart.text`, `ContentPart.imageUrl`).
  - Structured outputs with JSON Schema validation (`ResponseFormat.jsonSchema(...)`, `ResponseFormat.jsonObject()`).
  - Function/tool calling with `Tool.function(...)` and `ToolChoice` helpers (`none`, `auto`, `required`, `function`).
  - Transparent handling of oMLX `: keep-alive` SSE comments during long prefill phases.
- **Text Completions (`/v1/completions`)**:
  - Legacy text completion support (`CompletionsService.create`, `createStream`, `generate`, `streamText`).
- **Text Embeddings (`/v1/embeddings`)**:
  - Single and batch embedding generation (`EmbeddingRequest.single`, `EmbeddingRequest.batch`, `EmbeddingsService.createVector`, `createVectors`).
- **Semantic Document Reranking (`/v1/rerank`)**:
  - Document relevance scoring and top-N ranking (`RerankService.create`, `RerankService.rank`).
- **OpenAI Responses API (`/v1/responses`)**:
  - Stateful context continuation (`previousResponseId`, `store`), instructions, tool execution, and streaming (`ResponsesService.create`, `createStream`).
- **Audio (`/v1/audio/*`)**:
  - Speech-to-Text transcription via Whisper (`AudioService.transcribe`).
  - Text-to-Speech synthesis (`AudioService.speech`) returning binary `Uint8List` audio data.
- **Models & Server Lifecycle (`/v1/models`, `/health`)**:
  - Server health and engine pool inspection (`OmlxClient.health`).
  - Model listing, engine loading status, and manual memory unloading (`ModelsService.list`, `status`, `unload`).
- **Prefix Cache & Timing Metrics**:
  - Detailed `Usage` metadata including `cachedTokens`, `promptTokensDetails`, `prefillDuration`, and `generationDuration`.
- **Error Handling & Immutability**:
  - Strongly-typed `OmlxApiException` (with helpers like `isUnauthorized`, `isModelNotFound`, `isInsufficientMemory`) and `OmlxNetworkException`.
  - Immutable `freezed` data models with `json_serializable` serialization.
