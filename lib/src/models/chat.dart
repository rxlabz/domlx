import 'package:freezed_annotation/freezed_annotation.dart';
import 'common.dart';

part 'chat.freezed.dart';
part 'chat.g.dart';

/// A streaming event emitted during chat completions.
sealed class ChatStreamEvent {
  const ChatStreamEvent();
}

/// A streaming token chunk representing model reasoning/thinking thoughts.
class ChatReasoningEvent extends ChatStreamEvent {
  /// The reasoning or thought token text.
  final String text;

  /// Creates a [ChatReasoningEvent] with [text].
  const ChatReasoningEvent(this.text);

  @override
  String toString() => 'ChatReasoningEvent($text)';
}

/// A streaming token chunk representing output content.
class ChatContentEvent extends ChatStreamEvent {
  /// The content token text.
  final String text;

  /// Creates a [ChatContentEvent] with [text].
  const ChatContentEvent(this.text);

  @override
  String toString() => 'ChatContentEvent($text)';
}

/// Message role in chat conversations.
enum ChatRole {
  /// System message role.
  system('system'),

  /// User message role.
  user('user'),

  /// Assistant message role.
  assistant('assistant'),

  /// Tool execution result role.
  tool('tool'),

  /// Developer instruction role.
  developer('developer');

  /// The string representation of the role.
  final String value;

  /// Creates a [ChatRole] with the given [value].
  const ChatRole(this.value);

  /// Parses a [ChatRole] from a string [role].
  static ChatRole fromString(String role) {
    return switch (role.toLowerCase()) {
      'system' => ChatRole.system,
      'user' => ChatRole.user,
      'assistant' => ChatRole.assistant,
      'tool' => ChatRole.tool,
      'developer' => ChatRole.developer,
      _ => ChatRole.user,
    };
  }
}

/// Represents a part of a multi-modal message content (text or image).
sealed class ContentPart {
  /// Part type, such as 'text' or 'image_url'.
  final String type;

  /// Creates a [ContentPart] of the given [type].
  const ContentPart(this.type);

  /// Serializes this content part to a JSON map.
  Map<String, dynamic> toJson();

  /// Creates a [ContentPart] from a JSON map.
  factory ContentPart.fromJson(Map<String, dynamic> json) {
    final type = json['type'] as String? ?? 'text';
    if (type == 'image_url') {
      return ImageContentPart.fromJson(json);
    }
    return TextContentPart.fromJson(json);
  }

  /// Creates a [TextContentPart] with [text].
  factory ContentPart.text(String text) => TextContentPart(text: text);

  /// Creates an [ImageContentPart] with [url] and optional [detail].
  factory ContentPart.imageUrl(String url, {String? detail}) =>
      ImageContentPart(url: url, detail: detail);
}

/// A text part of a multi-modal message.
@freezed
abstract class TextContentPart extends ContentPart with _$TextContentPart {
  const TextContentPart._() : super('text');

  /// Creates a [TextContentPart] instance.
  const factory TextContentPart({
    /// The text content.
    required String text,

    /// The part type, typically 'text'.
    @Default('text') String type,
  }) = _TextContentPart;

  /// Creates a [TextContentPart] from a JSON map.
  factory TextContentPart.fromJson(Map<String, dynamic> json) =>
      _$TextContentPartFromJson(json);
}

/// An image part of a multi-modal message with URL or base64 data.
@Freezed(toJson: false)
abstract class ImageContentPart extends ContentPart with _$ImageContentPart {
  const ImageContentPart._() : super('image_url');

  /// Creates an [ImageContentPart] instance.
  const factory ImageContentPart({
    /// URL or base64 data URI of the image.
    required String url,

    /// Image detail fidelity: 'auto', 'low', or 'high'.
    String? detail,

    /// The part type, typically 'image_url'.
    @Default('image_url') String type,
  }) = _ImageContentPart;

  /// Creates an [ImageContentPart] from a JSON map.
  factory ImageContentPart.fromJson(Map<String, dynamic> json) {
    final img = json['image_url'];
    if (img is Map<String, dynamic>) {
      return ImageContentPart(
        url: img['url'] as String? ?? '',
        detail: img['detail'] as String?,
      );
    }
    return ImageContentPart(url: img as String? ?? '');
  }

  @override
  Map<String, dynamic> toJson() => {
        'type': type,
        'image_url': {
          'url': url,
          if (detail != null) 'detail': detail,
        },
      };
}

/// Function definition in a tool specification.
@freezed
abstract class FunctionDefinition with _$FunctionDefinition {
  /// Creates a [FunctionDefinition] instance.
  const factory FunctionDefinition({
    /// Function name.
    required String name,

    /// Description of the function's purpose.
    String? description,

    /// JSON Schema describing the function's parameters.
    Map<String, dynamic>? parameters,
  }) = _FunctionDefinition;

  /// Creates a [FunctionDefinition] from a JSON map.
  factory FunctionDefinition.fromJson(Map<String, dynamic> json) =>
      _$FunctionDefinitionFromJson(json);
}

/// Tool available for function calling.
@freezed
abstract class Tool with _$Tool {
  /// Creates a [Tool] instance.
  const factory Tool({
    /// The tool type, typically 'function'.
    @Default('function') String type,

    /// Function definition and parameters.
    required FunctionDefinition function,
  }) = _Tool;

  /// Creates a function [Tool].
  factory Tool.function({
    required String name,
    String? description,
    Map<String, dynamic>? parameters,
  }) =>
      Tool(
        function: FunctionDefinition(
          name: name,
          description: description,
          parameters: parameters,
        ),
      );

  /// Creates a [Tool] from a JSON map.
  factory Tool.fromJson(Map<String, dynamic> json) => _$ToolFromJson(json);
}

/// Helper for configuring `tool_choice` in chat completions.
class ToolChoice {
  const ToolChoice._();

  /// Model will not call any tool.
  static const none = 'none';

  /// Model can pick between generating a message or calling one or more tools.
  static const auto = 'auto';

  /// Model must call one or more tools.
  static const required = 'required';

  /// Forces the model to call a specific tool function.
  static Map<String, dynamic> function(String name) => {
        'type': 'function',
        'function': {'name': name},
      };
}

/// Specific function call inside a tool call.
@freezed
abstract class FunctionCall with _$FunctionCall {
  /// Creates a [FunctionCall] instance.
  const factory FunctionCall({
    /// Function name to execute.
    @Default('') String name,

    /// JSON string containing the arguments to pass.
    @Default('') String arguments,
  }) = _FunctionCall;

  /// Creates a [FunctionCall] from a JSON map.
  factory FunctionCall.fromJson(Map<String, dynamic> json) =>
      _$FunctionCallFromJson(json);
}

/// Tool call generated by an assistant message.
@freezed
abstract class ToolCall with _$ToolCall {
  /// Creates a [ToolCall] instance.
  const factory ToolCall({
    /// Unique ID of the tool call.
    String? id,

    /// Index of the tool call in streaming chunks.
    int? index,

    /// Type of tool call, typically 'function'.
    @Default('function') String type,

    /// Function name and arguments.
    required FunctionCall function,
  }) = _ToolCall;

  /// Creates a [ToolCall] from a JSON map.
  factory ToolCall.fromJson(Map<String, dynamic> json) =>
      _$ToolCallFromJson(json);
}

/// A single message in the chat history.
@freezed
abstract class ChatMessage with _$ChatMessage {
  const ChatMessage._();

  /// Creates a [ChatMessage] instance.
  const factory ChatMessage({
    /// Message role: "system", "user", "assistant", "tool", or "developer".
    required String role,

    /// String content or multi-modal list of content parts.
    dynamic content,

    /// Reasoning / thinking content extracted from `<think>` blocks (oMLX reasoning models).
    @JsonKey(name: 'reasoning_content') String? reasoningContent,

    /// Tool calls generated by the model (assistant role).
    @JsonKey(name: 'tool_calls') List<ToolCall>? toolCalls,

    /// Tool call ID matching the corresponding tool call (tool role).
    @JsonKey(name: 'tool_call_id') String? toolCallId,

    /// Whether to continue from this message instead of starting a new turn.
    bool? partial,
  }) = _ChatMessage;

  /// Strongly-typed role enum helper.
  ChatRole get chatRole => ChatRole.fromString(role);

  /// Convenient helper to get content as a plain string.
  String get textContent {
    if (content == null) return '';
    if (content is String) return content as String;
    if (content is List) {
      final list = content as List;
      final buffer = StringBuffer();
      for (final item in list) {
        if (item is ContentPart) {
          if (item is TextContentPart) buffer.write(item.text);
        } else if (item is Map) {
          if (item['type'] == 'text') buffer.write(item['text'] ?? '');
        }
      }
      return buffer.toString();
    }
    return content.toString();
  }

  /// Creates a system [ChatMessage].
  factory ChatMessage.system(String content) =>
      ChatMessage(role: 'system', content: content);

  /// Creates a developer [ChatMessage].
  factory ChatMessage.developer(String content) =>
      ChatMessage(role: 'developer', content: content);

  /// Creates a user [ChatMessage].
  factory ChatMessage.user(dynamic content) =>
      ChatMessage(role: 'user', content: content);

  /// Convenient typed constructor for multi-modal user messages.
  factory ChatMessage.userParts(List<ContentPart> parts) =>
      ChatMessage(role: 'user', content: parts);

  /// Creates an assistant [ChatMessage].
  factory ChatMessage.assistant(
    String? content, {
    String? reasoningContent,
    List<ToolCall>? toolCalls,
    bool? partial,
  }) =>
      ChatMessage(
        role: 'assistant',
        content: content,
        reasoningContent: reasoningContent,
        toolCalls: toolCalls,
        partial: partial,
      );

  /// Creates a tool result [ChatMessage].
  factory ChatMessage.tool({
    required String toolCallId,
    required String content,
  }) =>
      ChatMessage(
        role: 'tool',
        toolCallId: toolCallId,
        content: content,
      );

  /// Creates a [ChatMessage] from a JSON map.
  factory ChatMessage.fromJson(Map<String, dynamic> json) {
    final rawContent = json['content'];
    dynamic parsedContent = rawContent;
    if (rawContent is List) {
      parsedContent = rawContent.map((item) {
        if (item is Map<String, dynamic>) {
          return ContentPart.fromJson(item);
        }
        return item;
      }).toList();
    }

    final rawTools = json['tool_calls'] as List<dynamic>?;
    final toolCalls = rawTools
        ?.whereType<Map<String, dynamic>>()
        .map((e) => ToolCall.fromJson(e))
        .toList();

    return ChatMessage(
      role: json['role'] as String? ?? 'user',
      content: parsedContent,
      reasoningContent: json['reasoning_content'] as String?,
      toolCalls: toolCalls,
      toolCallId: json['tool_call_id'] as String?,
      partial: json['partial'] as bool?,
    );
  }

  /// Serializes this message to a JSON map.
  Map<String, dynamic> toJson() {
    dynamic serializedContent = content;
    if (content is List) {
      serializedContent = (content as List).map((e) {
        if (e is ContentPart) return e.toJson();
        return e;
      }).toList();
    }

    return {
      'role': role,
      'content': ?serializedContent,
      'reasoning_content': ?reasoningContent,
      if (toolCalls != null)
        'tool_calls': toolCalls!.map((e) => e.toJson()).toList(),
      'tool_call_id': ?toolCallId,
      'partial': ?partial,
    };
  }
}

/// Configuration for structured output (JSON Schema).
@freezed
abstract class ResponseFormat with _$ResponseFormat {
  /// Creates a [ResponseFormat] instance.
  const factory ResponseFormat({
    /// Either "text", "json_object", or "json_schema".
    required String type,

    /// Optional JSON schema configuration when type is "json_schema".
    @JsonKey(name: 'json_schema') Map<String, dynamic>? jsonSchema,
  }) = _ResponseFormat;

  /// Standard plain text output format.
  static const text = ResponseFormat(type: 'text');

  /// Standard JSON object output format.
  static const jsonObject = ResponseFormat(type: 'json_object');

  /// Creates a JSON Schema structured output format.
  factory ResponseFormat.jsonSchema({
    required String name,
    required Map<String, dynamic> schema,
    String? description,
    bool? strict,
  }) =>
      ResponseFormat(
        type: 'json_schema',
        jsonSchema: {
          'name': name,
          'schema': schema,
          'description': ?description,
          'strict': ?strict,
        },
      );

  /// Creates a [ResponseFormat] from a JSON map.
  factory ResponseFormat.fromJson(Map<String, dynamic> json) =>
      _$ResponseFormatFromJson(json);
}

/// Request payload for `POST /v1/chat/completions`.
@Freezed(toJson: false)
abstract class ChatCompletionRequest with _$ChatCompletionRequest {
  const ChatCompletionRequest._();

  /// Creates a [ChatCompletionRequest] instance.
  const factory ChatCompletionRequest({
    /// Model ID (e.g., 'mlx-community/Qwen2.5-7B-Instruct-4bit').
    required String model,

    /// List of messages comprising the conversation.
    required List<ChatMessage> messages,

    /// Sampling temperature (default 1.0).
    double? temperature,

    /// Nucleus sampling probability threshold.
    @JsonKey(name: 'top_p') double? topP,

    /// Top-K sampling cutoff.
    @JsonKey(name: 'top_k') int? topK,

    /// Repetition penalty factor.
    @JsonKey(name: 'repetition_penalty') double? repetitionPenalty,

    /// Maximum tokens to generate.
    @JsonKey(name: 'max_tokens') int? maxTokens,

    /// Whether to stream partial message deltas via SSE.
    bool? stream,

    /// List of tools available to the model.
    List<Tool>? tools,

    /// Control which tool is called ("auto", "none", "required", or specific function).
    @JsonKey(name: 'tool_choice') dynamic toolChoice,

    /// Structured output configuration.
    @JsonKey(name: 'response_format') ResponseFormat? responseFormat,

    /// Stop sequences.
    dynamic stop,

    /// User identifier for tracking.
    String? user,

    /// Additional oMLX or custom vendor parameters.
    @Default({}) Map<String, dynamic> extra,
  }) = _ChatCompletionRequest;

  /// Serializes this request to a JSON map.
  Map<String, dynamic> toJson() => {
        'model': model,
        'messages': messages.map((m) => m.toJson()).toList(),
        if (temperature != null) 'temperature': temperature,
        if (topP != null) 'top_p': topP,
        if (topK != null) 'top_k': topK,
        if (repetitionPenalty != null) 'repetition_penalty': repetitionPenalty,
        if (maxTokens != null) 'max_tokens': maxTokens,
        if (stream != null) 'stream': stream,
        if (tools != null && tools!.isNotEmpty)
          'tools': tools!.map((t) => t.toJson()).toList(),
        if (toolChoice != null) 'tool_choice': toolChoice,
        if (responseFormat != null) 'response_format': responseFormat!.toJson(),
        if (stop != null) 'stop': stop,
        if (user != null) 'user': user,
        ...extra,
      };

  /// Creates a [ChatCompletionRequest] from a JSON map.
  factory ChatCompletionRequest.fromJson(Map<String, dynamic> json) =>
      _$ChatCompletionRequestFromJson(json);
}

/// A choice in a non-streaming chat completion.
@freezed
abstract class ChatChoice with _$ChatChoice {
  /// Creates a [ChatChoice] instance.
  const factory ChatChoice({
    /// Choice index.
    @Default(0) int index,

    /// The generated message.
    required ChatMessage message,

    /// Finish reason string.
    @JsonKey(name: 'finish_reason') String? finishReason,
  }) = _ChatChoice;

  /// Creates a [ChatChoice] from a JSON map.
  factory ChatChoice.fromJson(Map<String, dynamic> json) =>
      _$ChatChoiceFromJson(json);
}

/// Full response from non-streaming `POST /v1/chat/completions`.
@freezed
abstract class ChatCompletion with _$ChatCompletion {
  const ChatCompletion._();

  /// Creates a [ChatCompletion] instance.
  const factory ChatCompletion({
    /// Unique completion ID.
    required String id,

    /// Object type, typically 'chat.completion'.
    @Default('chat.completion') String object,

    /// Unix timestamp when completion was generated.
    required int created,

    /// Model ID used.
    required String model,

    /// Generated completion choices.
    required List<ChatChoice> choices,

    /// Token usage statistics.
    Usage? usage,
  }) = _ChatCompletion;

  /// Convenient getter for primary message.
  ChatMessage? get firstMessage =>
      choices.isNotEmpty ? choices.first.message : null;

  /// Convenient getter for text content.
  String get firstText => firstMessage?.textContent ?? '';

  /// Convenient getter for reasoning content.
  String? get firstReasoningContent => firstMessage?.reasoningContent;

  /// Creates a [ChatCompletion] from a JSON map.
  factory ChatCompletion.fromJson(Map<String, dynamic> json) =>
      _$ChatCompletionFromJson(json);
}

/// Partial delta received in a streaming chunk.
@freezed
abstract class ChatDelta with _$ChatDelta {
  /// Creates a [ChatDelta] instance.
  const factory ChatDelta({
    /// Role delta.
    String? role,

    /// Text content delta.
    String? content,

    /// Reasoning thought content delta.
    @JsonKey(name: 'reasoning_content') String? reasoningContent,

    /// Tool call deltas.
    @JsonKey(name: 'tool_calls') List<ToolCall>? toolCalls,
  }) = _ChatDelta;

  /// Creates a [ChatDelta] from a JSON map.
  factory ChatDelta.fromJson(Map<String, dynamic> json) =>
      _$ChatDeltaFromJson(json);
}

/// A choice in a streaming chunk.
@freezed
abstract class ChatChunkChoice with _$ChatChunkChoice {
  /// Creates a [ChatChunkChoice] instance.
  const factory ChatChunkChoice({
    /// Choice index.
    @Default(0) int index,

    /// Message delta.
    required ChatDelta delta,

    /// Finish reason if stream completed on this choice.
    @JsonKey(name: 'finish_reason') String? finishReason,
  }) = _ChatChunkChoice;

  /// Creates a [ChatChunkChoice] from a JSON map.
  factory ChatChunkChoice.fromJson(Map<String, dynamic> json) =>
      _$ChatChunkChoiceFromJson(json);
}

/// Streaming chunk from `POST /v1/chat/completions` (SSE).
@freezed
abstract class ChatCompletionChunk with _$ChatCompletionChunk {
  const ChatCompletionChunk._();

  /// Creates a [ChatCompletionChunk] instance.
  const factory ChatCompletionChunk({
    /// Unique chunk ID.
    required String id,

    /// Object type, typically 'chat.completion.chunk'.
    @Default('chat.completion.chunk') String object,

    /// Unix timestamp.
    required int created,

    /// Model ID.
    required String model,

    /// Chunk choices.
    required List<ChatChunkChoice> choices,

    /// Terminal usage statistics if present.
    Usage? usage,
  }) = _ChatCompletionChunk;

  /// Convenient getter for the first choice delta.
  ChatDelta? get firstDelta =>
      choices.isNotEmpty ? choices.first.delta : null;

  /// Convenient getter for text content in the first delta.
  String? get firstContent => firstDelta?.content;

  /// Convenient getter for reasoning content in the first delta.
  String? get firstReasoningContent => firstDelta?.reasoningContent;

  /// Creates a [ChatCompletionChunk] from a JSON map.
  factory ChatCompletionChunk.fromJson(Map<String, dynamic> json) =>
      _$ChatCompletionChunkFromJson(json);
}
