import 'package:freezed_annotation/freezed_annotation.dart';
import 'chat.dart';
import 'common.dart';

part 'responses_api.freezed.dart';
part 'responses_api.g.dart';

/// Item in the input list for the OpenAI Responses API (`/v1/responses`).
@freezed
abstract class InputItem with _$InputItem {
  const InputItem._();

  const factory InputItem({
    required String role,
    required dynamic content,
    String? type,
    @Default({}) Map<String, dynamic> extra,
  }) = _InputItem;

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
}

/// Request for `POST /v1/responses`.
@freezed
abstract class ResponsesRequest with _$ResponsesRequest {
  const ResponsesRequest._();

  const factory ResponsesRequest({
    required String model,

    /// String prompt or list of input items.
    required dynamic input,

    /// System instructions prepended to the prompt.
    String? instructions,

    /// ID of a previous response to continue context from `ResponseStore`.
    @JsonKey(name: 'previous_response_id') String? previousResponseId,

    /// Whether to persist this response in the `ResponseStore`.
    bool? store,

    /// Available tools for function calling.
    List<Tool>? tools,

    /// Additional parameters.
    @Default({}) Map<String, dynamic> extra,
  }) = _ResponsesRequest;

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
      'input': ?serializedInput,
      'instructions': ?instructions,
      'previous_response_id': ?previousResponseId,
      'store': ?store,
      if (tools != null && tools!.isNotEmpty)
        'tools': tools!.map((t) => t.toJson()).toList(),
      ...extra,
    };
  }

  factory ResponsesRequest.fromJson(Map<String, dynamic> json) {
    final copy = Map<String, dynamic>.from(json);
    final model = copy.remove('model') as String? ?? '';
    final input = copy.remove('input');
    final instructions = copy.remove('instructions') as String?;
    final previousResponseId =
        copy.remove('previous_response_id') as String?;
    final store = copy.remove('store') as bool?;
    final rawTools = copy.remove('tools') as List<dynamic>?;
    final tools = rawTools
        ?.whereType<Map<String, dynamic>>()
        .map((e) => Tool.fromJson(e))
        .toList();

    return ResponsesRequest(
      model: model,
      input: input,
      instructions: instructions,
      previousResponseId: previousResponseId,
      store: store,
      tools: tools,
      extra: copy,
    );
  }
}

/// Output item in a Responses API response.
@freezed
abstract class ResponseOutputItem with _$ResponseOutputItem {
  const factory ResponseOutputItem({
    required String id,
    @Default('message') String type,
    @Default('assistant') String role,
    dynamic content,
    @Default({}) Map<String, dynamic> extra,
  }) = _ResponseOutputItem;

  factory ResponseOutputItem.fromJson(Map<String, dynamic> json) =>
      _$ResponseOutputItemFromJson(json);
}

/// Response returned by `POST /v1/responses` (Codex compatibility).
@freezed
abstract class ResponsesResponse with _$ResponsesResponse {
  const factory ResponsesResponse({
    required String id,
    @Default('response') String object,
    required int created,
    required String model,
    @Default('completed') String status,
    required List<ResponseOutputItem> output,
    @JsonKey(name: 'output_text') String? outputText,
    Usage? usage,
    @Default({}) Map<String, dynamic> raw,
  }) = _ResponsesResponse;

  factory ResponsesResponse.fromJson(Map<String, dynamic> json) =>
      _$ResponsesResponseFromJson(json).copyWith(raw: json);
}
