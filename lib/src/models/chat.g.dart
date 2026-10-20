// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'chat.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_TextContentPart _$TextContentPartFromJson(Map<String, dynamic> json) =>
    _TextContentPart(
      text: json['text'] as String,
      type: json['type'] as String? ?? 'text',
    );

Map<String, dynamic> _$TextContentPartToJson(_TextContentPart instance) =>
    <String, dynamic>{'text': instance.text, 'type': instance.type};

_FunctionDefinition _$FunctionDefinitionFromJson(Map<String, dynamic> json) =>
    _FunctionDefinition(
      name: json['name'] as String,
      description: json['description'] as String?,
      parameters: json['parameters'] as Map<String, dynamic>?,
    );

Map<String, dynamic> _$FunctionDefinitionToJson(_FunctionDefinition instance) =>
    <String, dynamic>{
      'name': instance.name,
      'description': ?instance.description,
      'parameters': ?instance.parameters,
    };

_Tool _$ToolFromJson(Map<String, dynamic> json) => _Tool(
  type: json['type'] as String? ?? 'function',
  function: FunctionDefinition.fromJson(
    json['function'] as Map<String, dynamic>,
  ),
);

Map<String, dynamic> _$ToolToJson(_Tool instance) => <String, dynamic>{
  'type': instance.type,
  'function': instance.function.toJson(),
};

_FunctionCall _$FunctionCallFromJson(Map<String, dynamic> json) =>
    _FunctionCall(
      name: json['name'] as String? ?? '',
      arguments: json['arguments'] as String? ?? '',
    );

Map<String, dynamic> _$FunctionCallToJson(_FunctionCall instance) =>
    <String, dynamic>{'name': instance.name, 'arguments': instance.arguments};

_ToolCall _$ToolCallFromJson(Map<String, dynamic> json) => _ToolCall(
  id: json['id'] as String?,
  index: (json['index'] as num?)?.toInt(),
  type: json['type'] as String? ?? 'function',
  function: FunctionCall.fromJson(json['function'] as Map<String, dynamic>),
);

Map<String, dynamic> _$ToolCallToJson(_ToolCall instance) => <String, dynamic>{
  'id': ?instance.id,
  'index': ?instance.index,
  'type': instance.type,
  'function': instance.function.toJson(),
};

_ResponseFormat _$ResponseFormatFromJson(Map<String, dynamic> json) =>
    _ResponseFormat(
      type: json['type'] as String,
      jsonSchema: json['json_schema'] as Map<String, dynamic>?,
    );

Map<String, dynamic> _$ResponseFormatToJson(_ResponseFormat instance) =>
    <String, dynamic>{
      'type': instance.type,
      'json_schema': ?instance.jsonSchema,
    };

_ChatCompletionRequest _$ChatCompletionRequestFromJson(
  Map<String, dynamic> json,
) => _ChatCompletionRequest(
  model: json['model'] as String,
  messages: (json['messages'] as List<dynamic>)
      .map((e) => ChatMessage.fromJson(e as Map<String, dynamic>))
      .toList(),
  temperature: (json['temperature'] as num?)?.toDouble(),
  topP: (json['top_p'] as num?)?.toDouble(),
  topK: (json['top_k'] as num?)?.toInt(),
  repetitionPenalty: (json['repetition_penalty'] as num?)?.toDouble(),
  maxTokens: (json['max_tokens'] as num?)?.toInt(),
  stream: json['stream'] as bool?,
  tools: (json['tools'] as List<dynamic>?)
      ?.map((e) => Tool.fromJson(e as Map<String, dynamic>))
      .toList(),
  toolChoice: json['tool_choice'],
  responseFormat: json['response_format'] == null
      ? null
      : ResponseFormat.fromJson(
          json['response_format'] as Map<String, dynamic>,
        ),
  stop: json['stop'],
  user: json['user'] as String?,
  extra: json['extra'] as Map<String, dynamic>? ?? const {},
);

_ChatChoice _$ChatChoiceFromJson(Map<String, dynamic> json) => _ChatChoice(
  index: (json['index'] as num?)?.toInt() ?? 0,
  message: ChatMessage.fromJson(json['message'] as Map<String, dynamic>),
  finishReason: json['finish_reason'] as String?,
);

Map<String, dynamic> _$ChatChoiceToJson(_ChatChoice instance) =>
    <String, dynamic>{
      'index': instance.index,
      'message': instance.message.toJson(),
      'finish_reason': ?instance.finishReason,
    };

_ChatCompletion _$ChatCompletionFromJson(Map<String, dynamic> json) =>
    _ChatCompletion(
      id: json['id'] as String,
      object: json['object'] as String? ?? 'chat.completion',
      created: (json['created'] as num).toInt(),
      model: json['model'] as String,
      choices: (json['choices'] as List<dynamic>)
          .map((e) => ChatChoice.fromJson(e as Map<String, dynamic>))
          .toList(),
      usage: json['usage'] == null
          ? null
          : Usage.fromJson(json['usage'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$ChatCompletionToJson(_ChatCompletion instance) =>
    <String, dynamic>{
      'id': instance.id,
      'object': instance.object,
      'created': instance.created,
      'model': instance.model,
      'choices': instance.choices.map((e) => e.toJson()).toList(),
      'usage': ?instance.usage?.toJson(),
    };

_ChatDelta _$ChatDeltaFromJson(Map<String, dynamic> json) => _ChatDelta(
  role: json['role'] as String?,
  content: json['content'] as String?,
  reasoningContent: json['reasoning_content'] as String?,
  toolCalls: (json['tool_calls'] as List<dynamic>?)
      ?.map((e) => ToolCall.fromJson(e as Map<String, dynamic>))
      .toList(),
);

Map<String, dynamic> _$ChatDeltaToJson(_ChatDelta instance) =>
    <String, dynamic>{
      'role': ?instance.role,
      'content': ?instance.content,
      'reasoning_content': ?instance.reasoningContent,
      'tool_calls': ?instance.toolCalls?.map((e) => e.toJson()).toList(),
    };

_ChatChunkChoice _$ChatChunkChoiceFromJson(Map<String, dynamic> json) =>
    _ChatChunkChoice(
      index: (json['index'] as num?)?.toInt() ?? 0,
      delta: ChatDelta.fromJson(json['delta'] as Map<String, dynamic>),
      finishReason: json['finish_reason'] as String?,
    );

Map<String, dynamic> _$ChatChunkChoiceToJson(_ChatChunkChoice instance) =>
    <String, dynamic>{
      'index': instance.index,
      'delta': instance.delta.toJson(),
      'finish_reason': ?instance.finishReason,
    };

_ChatCompletionChunk _$ChatCompletionChunkFromJson(Map<String, dynamic> json) =>
    _ChatCompletionChunk(
      id: json['id'] as String,
      object: json['object'] as String? ?? 'chat.completion.chunk',
      created: (json['created'] as num).toInt(),
      model: json['model'] as String,
      choices: (json['choices'] as List<dynamic>)
          .map((e) => ChatChunkChoice.fromJson(e as Map<String, dynamic>))
          .toList(),
      usage: json['usage'] == null
          ? null
          : Usage.fromJson(json['usage'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$ChatCompletionChunkToJson(
  _ChatCompletionChunk instance,
) => <String, dynamic>{
  'id': instance.id,
  'object': instance.object,
  'created': instance.created,
  'model': instance.model,
  'choices': instance.choices.map((e) => e.toJson()).toList(),
  'usage': ?instance.usage?.toJson(),
};
