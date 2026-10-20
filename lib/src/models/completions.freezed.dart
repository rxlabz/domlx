// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'completions.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$CompletionRequest {

/// Model ID (e.g., 'mlx-community/Qwen2.5-7B-Instruct-4bit').
 String get model;/// Prompt string or list of prompt strings/token IDs.
 dynamic get prompt;/// Sampling temperature (default 1.0).
 double? get temperature;/// Nucleus sampling probability threshold.
@JsonKey(name: 'top_p') double? get topP;/// Maximum tokens to generate.
@JsonKey(name: 'max_tokens') int? get maxTokens;/// Number of completions to generate for each prompt.
 int? get n;/// Whether to stream partial tokens via SSE.
 bool? get stream;/// Stop sequences.
 dynamic get stop;/// Suffix that comes after a completion of inserted text.
 String? get suffix;/// Echo back the prompt in addition to the completion.
 bool? get echo;/// User identifier for tracking.
 String? get user;/// Additional parameters.
 Map<String, dynamic> get extra;
/// Create a copy of CompletionRequest
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CompletionRequestCopyWith<CompletionRequest> get copyWith => _$CompletionRequestCopyWithImpl<CompletionRequest>(this as CompletionRequest, _$identity);



@override
bool operator ==(Object other) {
  final _this = this as CompletionRequest;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CompletionRequest&&(identical(other.model, _this.model) || other.model == _this.model)&&const DeepCollectionEquality().equals(other.prompt, _this.prompt)&&(identical(other.temperature, _this.temperature) || other.temperature == _this.temperature)&&(identical(other.topP, _this.topP) || other.topP == _this.topP)&&(identical(other.maxTokens, _this.maxTokens) || other.maxTokens == _this.maxTokens)&&(identical(other.n, _this.n) || other.n == _this.n)&&(identical(other.stream, _this.stream) || other.stream == _this.stream)&&const DeepCollectionEquality().equals(other.stop, _this.stop)&&(identical(other.suffix, _this.suffix) || other.suffix == _this.suffix)&&(identical(other.echo, _this.echo) || other.echo == _this.echo)&&(identical(other.user, _this.user) || other.user == _this.user)&&const DeepCollectionEquality().equals(other.extra, _this.extra));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as CompletionRequest;
  return Object.hash(runtimeType,_this.model,const DeepCollectionEquality().hash(_this.prompt),_this.temperature,_this.topP,_this.maxTokens,_this.n,_this.stream,const DeepCollectionEquality().hash(_this.stop),_this.suffix,_this.echo,_this.user,const DeepCollectionEquality().hash(_this.extra));
}

@override
String toString() {
  final _this = this as CompletionRequest;
  return 'CompletionRequest(model: ${_this.model}, prompt: ${_this.prompt}, temperature: ${_this.temperature}, topP: ${_this.topP}, maxTokens: ${_this.maxTokens}, n: ${_this.n}, stream: ${_this.stream}, stop: ${_this.stop}, suffix: ${_this.suffix}, echo: ${_this.echo}, user: ${_this.user}, extra: ${_this.extra})';
}


}

/// @nodoc
abstract mixin class $CompletionRequestCopyWith<$Res>  {
  factory $CompletionRequestCopyWith(CompletionRequest value, $Res Function(CompletionRequest) _then) = _$CompletionRequestCopyWithImpl;
@useResult
$Res call({
 String model, dynamic prompt, double? temperature,@JsonKey(name: 'top_p') double? topP,@JsonKey(name: 'max_tokens') int? maxTokens, int? n, bool? stream, dynamic stop, String? suffix, bool? echo, String? user, Map<String, dynamic> extra
});




}
/// @nodoc
class _$CompletionRequestCopyWithImpl<$Res>
    implements $CompletionRequestCopyWith<$Res> {
  _$CompletionRequestCopyWithImpl(this._self, this._then);

  final CompletionRequest _self;
  final $Res Function(CompletionRequest) _then;

/// Create a copy of CompletionRequest
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? model = null,Object? prompt = freezed,Object? temperature = freezed,Object? topP = freezed,Object? maxTokens = freezed,Object? n = freezed,Object? stream = freezed,Object? stop = freezed,Object? suffix = freezed,Object? echo = freezed,Object? user = freezed,Object? extra = null,}) {
  return _then(CompletionRequest(
model: null == model ? _self.model : model // ignore: cast_nullable_to_non_nullable
as String,prompt: freezed == prompt ? _self.prompt : prompt // ignore: cast_nullable_to_non_nullable
as dynamic,temperature: freezed == temperature ? _self.temperature : temperature // ignore: cast_nullable_to_non_nullable
as double?,topP: freezed == topP ? _self.topP : topP // ignore: cast_nullable_to_non_nullable
as double?,maxTokens: freezed == maxTokens ? _self.maxTokens : maxTokens // ignore: cast_nullable_to_non_nullable
as int?,n: freezed == n ? _self.n : n // ignore: cast_nullable_to_non_nullable
as int?,stream: freezed == stream ? _self.stream : stream // ignore: cast_nullable_to_non_nullable
as bool?,stop: freezed == stop ? _self.stop : stop // ignore: cast_nullable_to_non_nullable
as dynamic,suffix: freezed == suffix ? _self.suffix : suffix // ignore: cast_nullable_to_non_nullable
as String?,echo: freezed == echo ? _self.echo : echo // ignore: cast_nullable_to_non_nullable
as bool?,user: freezed == user ? _self.user : user // ignore: cast_nullable_to_non_nullable
as String?,extra: null == extra ? _self.extra : extra // ignore: cast_nullable_to_non_nullable
as Map<String, dynamic>,
  ));
}

}


/// Adds pattern-matching-related methods to [CompletionRequest].
extension CompletionRequestPatterns on CompletionRequest {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CompletionRequest value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CompletionRequest() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CompletionRequest value)  $default,){
final _that = this;
switch (_that) {
case _CompletionRequest():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CompletionRequest value)?  $default,){
final _that = this;
switch (_that) {
case _CompletionRequest() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String model,  dynamic prompt,  double? temperature, @JsonKey(name: 'top_p')  double? topP, @JsonKey(name: 'max_tokens')  int? maxTokens,  int? n,  bool? stream,  dynamic stop,  String? suffix,  bool? echo,  String? user,  Map<String, dynamic> extra)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CompletionRequest() when $default != null:
return $default(_that.model,_that.prompt,_that.temperature,_that.topP,_that.maxTokens,_that.n,_that.stream,_that.stop,_that.suffix,_that.echo,_that.user,_that.extra);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String model,  dynamic prompt,  double? temperature, @JsonKey(name: 'top_p')  double? topP, @JsonKey(name: 'max_tokens')  int? maxTokens,  int? n,  bool? stream,  dynamic stop,  String? suffix,  bool? echo,  String? user,  Map<String, dynamic> extra)  $default,) {final _that = this;
switch (_that) {
case _CompletionRequest():
return $default(_that.model,_that.prompt,_that.temperature,_that.topP,_that.maxTokens,_that.n,_that.stream,_that.stop,_that.suffix,_that.echo,_that.user,_that.extra);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String model,  dynamic prompt,  double? temperature, @JsonKey(name: 'top_p')  double? topP, @JsonKey(name: 'max_tokens')  int? maxTokens,  int? n,  bool? stream,  dynamic stop,  String? suffix,  bool? echo,  String? user,  Map<String, dynamic> extra)?  $default,) {final _that = this;
switch (_that) {
case _CompletionRequest() when $default != null:
return $default(_that.model,_that.prompt,_that.temperature,_that.topP,_that.maxTokens,_that.n,_that.stream,_that.stop,_that.suffix,_that.echo,_that.user,_that.extra);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable(createToJson: false)

class _CompletionRequest extends CompletionRequest {
  const _CompletionRequest({required this.model, required this.prompt, this.temperature, @JsonKey(name: 'top_p') this.topP, @JsonKey(name: 'max_tokens') this.maxTokens, this.n, this.stream, this.stop, this.suffix, this.echo, this.user,  Map<String, dynamic> extra = const {}}): _extra = extra,super._();
  factory _CompletionRequest.fromJson(Map<String, dynamic> json) => _$CompletionRequestFromJson(json);

/// Model ID (e.g., 'mlx-community/Qwen2.5-7B-Instruct-4bit').
@override final  String model;
/// Prompt string or list of prompt strings/token IDs.
@override final  dynamic prompt;
/// Sampling temperature (default 1.0).
@override final  double? temperature;
/// Nucleus sampling probability threshold.
@override@JsonKey(name: 'top_p') final  double? topP;
/// Maximum tokens to generate.
@override@JsonKey(name: 'max_tokens') final  int? maxTokens;
/// Number of completions to generate for each prompt.
@override final  int? n;
/// Whether to stream partial tokens via SSE.
@override final  bool? stream;
/// Stop sequences.
@override final  dynamic stop;
/// Suffix that comes after a completion of inserted text.
@override final  String? suffix;
/// Echo back the prompt in addition to the completion.
@override final  bool? echo;
/// User identifier for tracking.
@override final  String? user;
/// Additional parameters.
 final  Map<String, dynamic> _extra;
/// Additional parameters.
@override@JsonKey() Map<String, dynamic> get extra {
  if (_extra is EqualUnmodifiableMapView) return _extra;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableMapView(_extra);
}


/// Create a copy of CompletionRequest
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CompletionRequestCopyWith<_CompletionRequest> get copyWith => __$CompletionRequestCopyWithImpl<_CompletionRequest>(this, _$identity);



@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _CompletionRequest&&(identical(other.model, model) || other.model == model)&&const DeepCollectionEquality().equals(other.prompt, prompt)&&(identical(other.temperature, temperature) || other.temperature == temperature)&&(identical(other.topP, topP) || other.topP == topP)&&(identical(other.maxTokens, maxTokens) || other.maxTokens == maxTokens)&&(identical(other.n, n) || other.n == n)&&(identical(other.stream, stream) || other.stream == stream)&&const DeepCollectionEquality().equals(other.stop, stop)&&(identical(other.suffix, suffix) || other.suffix == suffix)&&(identical(other.echo, echo) || other.echo == echo)&&(identical(other.user, user) || other.user == user)&&const DeepCollectionEquality().equals(other.extra, _extra));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,model,const DeepCollectionEquality().hash(prompt),temperature,topP,maxTokens,n,stream,const DeepCollectionEquality().hash(stop),suffix,echo,user,const DeepCollectionEquality().hash(_extra));
}

@override
String toString() {
    return 'CompletionRequest(model: $model, prompt: $prompt, temperature: $temperature, topP: $topP, maxTokens: $maxTokens, n: $n, stream: $stream, stop: $stop, suffix: $suffix, echo: $echo, user: $user, extra: $extra)';
}


}

/// @nodoc
abstract mixin class _$CompletionRequestCopyWith<$Res> implements $CompletionRequestCopyWith<$Res> {
  factory _$CompletionRequestCopyWith(_CompletionRequest value, $Res Function(_CompletionRequest) _then) = __$CompletionRequestCopyWithImpl;
@override @useResult
$Res call({
 String model, dynamic prompt, double? temperature,@JsonKey(name: 'top_p') double? topP,@JsonKey(name: 'max_tokens') int? maxTokens, int? n, bool? stream, dynamic stop, String? suffix, bool? echo, String? user, Map<String, dynamic> extra
});




}
/// @nodoc
class __$CompletionRequestCopyWithImpl<$Res>
    implements _$CompletionRequestCopyWith<$Res> {
  __$CompletionRequestCopyWithImpl(this._self, this._then);

  final _CompletionRequest _self;
  final $Res Function(_CompletionRequest) _then;

/// Create a copy of CompletionRequest
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? model = null,Object? prompt = freezed,Object? temperature = freezed,Object? topP = freezed,Object? maxTokens = freezed,Object? n = freezed,Object? stream = freezed,Object? stop = freezed,Object? suffix = freezed,Object? echo = freezed,Object? user = freezed,Object? extra = null,}) {
  return _then(_CompletionRequest(
model: null == model ? _self.model : model // ignore: cast_nullable_to_non_nullable
as String,prompt: freezed == prompt ? _self.prompt : prompt // ignore: cast_nullable_to_non_nullable
as dynamic,temperature: freezed == temperature ? _self.temperature : temperature // ignore: cast_nullable_to_non_nullable
as double?,topP: freezed == topP ? _self.topP : topP // ignore: cast_nullable_to_non_nullable
as double?,maxTokens: freezed == maxTokens ? _self.maxTokens : maxTokens // ignore: cast_nullable_to_non_nullable
as int?,n: freezed == n ? _self.n : n // ignore: cast_nullable_to_non_nullable
as int?,stream: freezed == stream ? _self.stream : stream // ignore: cast_nullable_to_non_nullable
as bool?,stop: freezed == stop ? _self.stop : stop // ignore: cast_nullable_to_non_nullable
as dynamic,suffix: freezed == suffix ? _self.suffix : suffix // ignore: cast_nullable_to_non_nullable
as String?,echo: freezed == echo ? _self.echo : echo // ignore: cast_nullable_to_non_nullable
as bool?,user: freezed == user ? _self.user : user // ignore: cast_nullable_to_non_nullable
as String?,extra: null == extra ? _self._extra : extra // ignore: cast_nullable_to_non_nullable
as Map<String, dynamic>,
  ));
}


}


/// @nodoc
mixin _$CompletionChoice {

 String get text; int get index;@JsonKey(name: 'finish_reason') String? get finishReason; Map<String, dynamic>? get logprobs;
/// Create a copy of CompletionChoice
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CompletionChoiceCopyWith<CompletionChoice> get copyWith => _$CompletionChoiceCopyWithImpl<CompletionChoice>(this as CompletionChoice, _$identity);

  /// Serializes this CompletionChoice to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as CompletionChoice;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CompletionChoice&&(identical(other.text, _this.text) || other.text == _this.text)&&(identical(other.index, _this.index) || other.index == _this.index)&&(identical(other.finishReason, _this.finishReason) || other.finishReason == _this.finishReason)&&const DeepCollectionEquality().equals(other.logprobs, _this.logprobs));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as CompletionChoice;
  return Object.hash(runtimeType,_this.text,_this.index,_this.finishReason,const DeepCollectionEquality().hash(_this.logprobs));
}

@override
String toString() {
  final _this = this as CompletionChoice;
  return 'CompletionChoice(text: ${_this.text}, index: ${_this.index}, finishReason: ${_this.finishReason}, logprobs: ${_this.logprobs})';
}


}

/// @nodoc
abstract mixin class $CompletionChoiceCopyWith<$Res>  {
  factory $CompletionChoiceCopyWith(CompletionChoice value, $Res Function(CompletionChoice) _then) = _$CompletionChoiceCopyWithImpl;
@useResult
$Res call({
 String text, int index,@JsonKey(name: 'finish_reason') String? finishReason, Map<String, dynamic>? logprobs
});




}
/// @nodoc
class _$CompletionChoiceCopyWithImpl<$Res>
    implements $CompletionChoiceCopyWith<$Res> {
  _$CompletionChoiceCopyWithImpl(this._self, this._then);

  final CompletionChoice _self;
  final $Res Function(CompletionChoice) _then;

/// Create a copy of CompletionChoice
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? text = null,Object? index = null,Object? finishReason = freezed,Object? logprobs = freezed,}) {
  return _then(CompletionChoice(
text: null == text ? _self.text : text // ignore: cast_nullable_to_non_nullable
as String,index: null == index ? _self.index : index // ignore: cast_nullable_to_non_nullable
as int,finishReason: freezed == finishReason ? _self.finishReason : finishReason // ignore: cast_nullable_to_non_nullable
as String?,logprobs: freezed == logprobs ? _self.logprobs : logprobs // ignore: cast_nullable_to_non_nullable
as Map<String, dynamic>?,
  ));
}

}


/// Adds pattern-matching-related methods to [CompletionChoice].
extension CompletionChoicePatterns on CompletionChoice {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CompletionChoice value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CompletionChoice() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CompletionChoice value)  $default,){
final _that = this;
switch (_that) {
case _CompletionChoice():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CompletionChoice value)?  $default,){
final _that = this;
switch (_that) {
case _CompletionChoice() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String text,  int index, @JsonKey(name: 'finish_reason')  String? finishReason,  Map<String, dynamic>? logprobs)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CompletionChoice() when $default != null:
return $default(_that.text,_that.index,_that.finishReason,_that.logprobs);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String text,  int index, @JsonKey(name: 'finish_reason')  String? finishReason,  Map<String, dynamic>? logprobs)  $default,) {final _that = this;
switch (_that) {
case _CompletionChoice():
return $default(_that.text,_that.index,_that.finishReason,_that.logprobs);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String text,  int index, @JsonKey(name: 'finish_reason')  String? finishReason,  Map<String, dynamic>? logprobs)?  $default,) {final _that = this;
switch (_that) {
case _CompletionChoice() when $default != null:
return $default(_that.text,_that.index,_that.finishReason,_that.logprobs);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _CompletionChoice implements CompletionChoice {
  const _CompletionChoice({required this.text, this.index = 0, @JsonKey(name: 'finish_reason') this.finishReason,  Map<String, dynamic>? logprobs}): _logprobs = logprobs;
  factory _CompletionChoice.fromJson(Map<String, dynamic> json) => _$CompletionChoiceFromJson(json);

@override final  String text;
@override@JsonKey() final  int index;
@override@JsonKey(name: 'finish_reason') final  String? finishReason;
 final  Map<String, dynamic>? _logprobs;
@override Map<String, dynamic>? get logprobs {
  final value = _logprobs;
  if (value == null) return null;
  if (_logprobs is EqualUnmodifiableMapView) return _logprobs;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableMapView(value);
}


/// Create a copy of CompletionChoice
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CompletionChoiceCopyWith<_CompletionChoice> get copyWith => __$CompletionChoiceCopyWithImpl<_CompletionChoice>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$CompletionChoiceToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _CompletionChoice&&(identical(other.text, text) || other.text == text)&&(identical(other.index, index) || other.index == index)&&(identical(other.finishReason, finishReason) || other.finishReason == finishReason)&&const DeepCollectionEquality().equals(other.logprobs, _logprobs));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,text,index,finishReason,const DeepCollectionEquality().hash(_logprobs));
}

@override
String toString() {
    return 'CompletionChoice(text: $text, index: $index, finishReason: $finishReason, logprobs: $logprobs)';
}


}

/// @nodoc
abstract mixin class _$CompletionChoiceCopyWith<$Res> implements $CompletionChoiceCopyWith<$Res> {
  factory _$CompletionChoiceCopyWith(_CompletionChoice value, $Res Function(_CompletionChoice) _then) = __$CompletionChoiceCopyWithImpl;
@override @useResult
$Res call({
 String text, int index,@JsonKey(name: 'finish_reason') String? finishReason, Map<String, dynamic>? logprobs
});




}
/// @nodoc
class __$CompletionChoiceCopyWithImpl<$Res>
    implements _$CompletionChoiceCopyWith<$Res> {
  __$CompletionChoiceCopyWithImpl(this._self, this._then);

  final _CompletionChoice _self;
  final $Res Function(_CompletionChoice) _then;

/// Create a copy of CompletionChoice
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? text = null,Object? index = null,Object? finishReason = freezed,Object? logprobs = freezed,}) {
  return _then(_CompletionChoice(
text: null == text ? _self.text : text // ignore: cast_nullable_to_non_nullable
as String,index: null == index ? _self.index : index // ignore: cast_nullable_to_non_nullable
as int,finishReason: freezed == finishReason ? _self.finishReason : finishReason // ignore: cast_nullable_to_non_nullable
as String?,logprobs: freezed == logprobs ? _self._logprobs : logprobs // ignore: cast_nullable_to_non_nullable
as Map<String, dynamic>?,
  ));
}


}


/// @nodoc
mixin _$TextCompletion {

 String get id; String get object; int get created; String get model; List<CompletionChoice> get choices; Usage? get usage;
/// Create a copy of TextCompletion
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$TextCompletionCopyWith<TextCompletion> get copyWith => _$TextCompletionCopyWithImpl<TextCompletion>(this as TextCompletion, _$identity);

  /// Serializes this TextCompletion to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as TextCompletion;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TextCompletion&&(identical(other.id, _this.id) || other.id == _this.id)&&(identical(other.object, _this.object) || other.object == _this.object)&&(identical(other.created, _this.created) || other.created == _this.created)&&(identical(other.model, _this.model) || other.model == _this.model)&&const DeepCollectionEquality().equals(other.choices, _this.choices)&&(identical(other.usage, _this.usage) || other.usage == _this.usage));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as TextCompletion;
  return Object.hash(runtimeType,_this.id,_this.object,_this.created,_this.model,const DeepCollectionEquality().hash(_this.choices),_this.usage);
}

@override
String toString() {
  final _this = this as TextCompletion;
  return 'TextCompletion(id: ${_this.id}, object: ${_this.object}, created: ${_this.created}, model: ${_this.model}, choices: ${_this.choices}, usage: ${_this.usage})';
}


}

/// @nodoc
abstract mixin class $TextCompletionCopyWith<$Res>  {
  factory $TextCompletionCopyWith(TextCompletion value, $Res Function(TextCompletion) _then) = _$TextCompletionCopyWithImpl;
@useResult
$Res call({
 String id, String object, int created, String model, List<CompletionChoice> choices, Usage? usage
});


$UsageCopyWith<$Res>? get usage;

}
/// @nodoc
class _$TextCompletionCopyWithImpl<$Res>
    implements $TextCompletionCopyWith<$Res> {
  _$TextCompletionCopyWithImpl(this._self, this._then);

  final TextCompletion _self;
  final $Res Function(TextCompletion) _then;

/// Create a copy of TextCompletion
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? object = null,Object? created = null,Object? model = null,Object? choices = null,Object? usage = freezed,}) {
  return _then(TextCompletion(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,object: null == object ? _self.object : object // ignore: cast_nullable_to_non_nullable
as String,created: null == created ? _self.created : created // ignore: cast_nullable_to_non_nullable
as int,model: null == model ? _self.model : model // ignore: cast_nullable_to_non_nullable
as String,choices: null == choices ? _self.choices : choices // ignore: cast_nullable_to_non_nullable
as List<CompletionChoice>,usage: freezed == usage ? _self.usage : usage // ignore: cast_nullable_to_non_nullable
as Usage?,
  ));
}
/// Create a copy of TextCompletion
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$UsageCopyWith<$Res>? get usage {
    if (_self.usage == null) {
    return null;
  }

  return $UsageCopyWith<$Res>(_self.usage!, (value) {
    return _then(_self.copyWith(usage: value));
  });
}
}


/// Adds pattern-matching-related methods to [TextCompletion].
extension TextCompletionPatterns on TextCompletion {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _TextCompletion value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _TextCompletion() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _TextCompletion value)  $default,){
final _that = this;
switch (_that) {
case _TextCompletion():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _TextCompletion value)?  $default,){
final _that = this;
switch (_that) {
case _TextCompletion() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String object,  int created,  String model,  List<CompletionChoice> choices,  Usage? usage)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _TextCompletion() when $default != null:
return $default(_that.id,_that.object,_that.created,_that.model,_that.choices,_that.usage);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String object,  int created,  String model,  List<CompletionChoice> choices,  Usage? usage)  $default,) {final _that = this;
switch (_that) {
case _TextCompletion():
return $default(_that.id,_that.object,_that.created,_that.model,_that.choices,_that.usage);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String object,  int created,  String model,  List<CompletionChoice> choices,  Usage? usage)?  $default,) {final _that = this;
switch (_that) {
case _TextCompletion() when $default != null:
return $default(_that.id,_that.object,_that.created,_that.model,_that.choices,_that.usage);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _TextCompletion extends TextCompletion {
  const _TextCompletion({required this.id, this.object = 'text_completion', required this.created, required this.model, required  List<CompletionChoice> choices, this.usage}): _choices = choices,super._();
  factory _TextCompletion.fromJson(Map<String, dynamic> json) => _$TextCompletionFromJson(json);

@override final  String id;
@override@JsonKey() final  String object;
@override final  int created;
@override final  String model;
 final  List<CompletionChoice> _choices;
@override List<CompletionChoice> get choices {
  if (_choices is EqualUnmodifiableListView) return _choices;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_choices);
}

@override final  Usage? usage;

/// Create a copy of TextCompletion
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$TextCompletionCopyWith<_TextCompletion> get copyWith => __$TextCompletionCopyWithImpl<_TextCompletion>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$TextCompletionToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _TextCompletion&&(identical(other.id, id) || other.id == id)&&(identical(other.object, object) || other.object == object)&&(identical(other.created, created) || other.created == created)&&(identical(other.model, model) || other.model == model)&&const DeepCollectionEquality().equals(other.choices, _choices)&&(identical(other.usage, usage) || other.usage == usage));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,id,object,created,model,const DeepCollectionEquality().hash(_choices),usage);
}

@override
String toString() {
    return 'TextCompletion(id: $id, object: $object, created: $created, model: $model, choices: $choices, usage: $usage)';
}


}

/// @nodoc
abstract mixin class _$TextCompletionCopyWith<$Res> implements $TextCompletionCopyWith<$Res> {
  factory _$TextCompletionCopyWith(_TextCompletion value, $Res Function(_TextCompletion) _then) = __$TextCompletionCopyWithImpl;
@override @useResult
$Res call({
 String id, String object, int created, String model, List<CompletionChoice> choices, Usage? usage
});


@override $UsageCopyWith<$Res>? get usage;

}
/// @nodoc
class __$TextCompletionCopyWithImpl<$Res>
    implements _$TextCompletionCopyWith<$Res> {
  __$TextCompletionCopyWithImpl(this._self, this._then);

  final _TextCompletion _self;
  final $Res Function(_TextCompletion) _then;

/// Create a copy of TextCompletion
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? object = null,Object? created = null,Object? model = null,Object? choices = null,Object? usage = freezed,}) {
  return _then(_TextCompletion(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,object: null == object ? _self.object : object // ignore: cast_nullable_to_non_nullable
as String,created: null == created ? _self.created : created // ignore: cast_nullable_to_non_nullable
as int,model: null == model ? _self.model : model // ignore: cast_nullable_to_non_nullable
as String,choices: null == choices ? _self._choices : choices // ignore: cast_nullable_to_non_nullable
as List<CompletionChoice>,usage: freezed == usage ? _self.usage : usage // ignore: cast_nullable_to_non_nullable
as Usage?,
  ));
}

/// Create a copy of TextCompletion
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$UsageCopyWith<$Res>? get usage {
    if (_self.usage == null) {
    return null;
  }

  return $UsageCopyWith<$Res>(_self.usage!, (value) {
    return _then(_self.copyWith(usage: value));
  });
}
}

// dart format on
