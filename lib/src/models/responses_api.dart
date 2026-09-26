import 'chat.dart';
import 'common.dart';

/// Item in the input list for the OpenAI Responses API (`/v1/responses`).
class InputItem {
  final String role;
  final dynamic content;
  final String? type;
  final Map<String, dynamic> extra;

  const InputItem({
    required this.role,
    required this.content,
    this.type,
    this.extra = const {},
  });

  factory InputItem.developer(String instructions) =>
      InputItem(role: 'developer', content: instructions);

  factory InputItem.user(dynamic content) =>
      InputItem(role: 'user', content: content);

  factory InputItem.fromJson(Map<String, dynamic> json) {
    final copy = Map<String, dynamic>.from(json);
    final role = copy.remove('role') as String? ?? 'user';
    final content = copy.remove('content');
    final type = copy.remove('type') as String?;
    return InputItem(
      role: role,
      content: content,
      type: type,
      extra: copy,
    );
  }

  Map<String, dynamic> toJson() => {
        'role': role,
        'content': content,
        if (type != null) 'type': type,
        ...extra,
      };

  @override
  String toString() => 'InputItem(role: $role, content: $content)';
}

/// Request for `POST /v1/responses`.
class ResponsesRequest {
  final String model;

  /// String prompt or list of input items.
  final dynamic input;

  /// System instructions prepended to the prompt.
  final String? instructions;

  /// ID of a previous response to continue context from `ResponseStore`.
  final String? previousResponseId;

  /// Whether to persist this response in the `ResponseStore`.
  final bool? store;

  /// Available tools for function calling.
  final List<Tool>? tools;

  /// Additional parameters.
  final Map<String, dynamic> extra;

  const ResponsesRequest({
    required this.model,
    required this.input,
    this.instructions,
    this.previousResponseId,
    this.store,
    this.tools,
    this.extra = const {},
  });

  Map<String, dynamic> toJson() {
    dynamic serializedInput = input;
    if (input is List) {
      serializedInput = (input as List).map((e) {
        if (e is InputItem) return e.toJson();
        return e;
      }).toList();
    }

    return {
      'model': model,
      'input': serializedInput,
      if (instructions != null) 'instructions': instructions,
      if (previousResponseId != null)
        'previous_response_id': previousResponseId,
      if (store != null) 'store': store,
      if (tools != null && tools!.isNotEmpty)
        'tools': tools!.map((t) => t.toJson()).toList(),
      ...extra,
    };
  }

  @override
  String toString() =>
      'ResponsesRequest(model: $model, previousResponseId: $previousResponseId, store: $store)';
}

/// Output item in a Responses API response.
class ResponseOutputItem {
  final String id;
  final String type;
  final String role;
  final dynamic content;
  final Map<String, dynamic> extra;

  const ResponseOutputItem({
    required this.id,
    required this.type,
    required this.role,
    this.content,
    this.extra = const {},
  });

  factory ResponseOutputItem.fromJson(Map<String, dynamic> json) {
    final copy = Map<String, dynamic>.from(json);
    return ResponseOutputItem(
      id: copy.remove('id') as String? ?? '',
      type: copy.remove('type') as String? ?? 'message',
      role: copy.remove('role') as String? ?? 'assistant',
      content: copy.remove('content'),
      extra: copy,
    );
  }

  Map<String, dynamic> toJson() => {
        'id': id,
        'type': type,
        'role': role,
        if (content != null) 'content': content,
        ...extra,
      };

  @override
  String toString() => 'ResponseOutputItem(id: $id, type: $type, role: $role)';
}

/// Response returned by `POST /v1/responses` (Codex compatibility).
class ResponsesResponse {
  final String id;
  final String object;
  final int created;
  final String model;
  final String status;
  final List<ResponseOutputItem> output;
  final String? outputText;
  final Usage? usage;
  final Map<String, dynamic> raw;

  const ResponsesResponse({
    required this.id,
    this.object = 'response',
    required this.created,
    required this.model,
    required this.status,
    required this.output,
    this.outputText,
    this.usage,
    this.raw = const {},
  });

  factory ResponsesResponse.fromJson(Map<String, dynamic> json) {
    final outputList = json['output'] as List<dynamic>? ?? [];
    return ResponsesResponse(
      id: json['id'] as String? ?? '',
      object: json['object'] as String? ?? 'response',
      created: (json['created'] as num?)?.toInt() ?? 0,
      model: json['model'] as String? ?? '',
      status: json['status'] as String? ?? 'completed',
      output: outputList
          .whereType<Map<String, dynamic>>()
          .map((e) => ResponseOutputItem.fromJson(e))
          .toList(),
      outputText: json['output_text'] as String?,
      usage: json['usage'] is Map<String, dynamic>
          ? Usage.fromJson(json['usage'] as Map<String, dynamic>)
          : null,
      raw: json,
    );
  }

  Map<String, dynamic> toJson() => raw;

  @override
  String toString() =>
      'ResponsesResponse(id: $id, model: $model, status: $status, outputText: $outputText)';
}
