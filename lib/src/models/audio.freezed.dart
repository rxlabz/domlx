// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'audio.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$AudioTranscriptionRequest {

/// The audio file bytes to transcribe.
 List<int> get fileBytes;/// The filename (e.g. 'recording.wav', 'speech.mp3').
 String get filename;/// Model ID (e.g. 'whisper-large-v3', 'mlx-community/whisper-tiny').
 String get model;/// Optional language code in ISO-639-1 format (e.g. 'en', 'es', 'fr').
 String? get language;/// Optional text prompt to guide the model's style or vocabulary.
 String? get prompt;/// Desired response format: "json" (default), "text", "verbose_json", "srt", "vtt".
@JsonKey(name: 'response_format') String? get responseFormat;/// Sampling temperature between 0 and 1.
 double? get temperature;
/// Create a copy of AudioTranscriptionRequest
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AudioTranscriptionRequestCopyWith<AudioTranscriptionRequest> get copyWith => _$AudioTranscriptionRequestCopyWithImpl<AudioTranscriptionRequest>(this as AudioTranscriptionRequest, _$identity);



@override
bool operator ==(Object other) {
  final _this = this as AudioTranscriptionRequest;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AudioTranscriptionRequest&&const DeepCollectionEquality().equals(other.fileBytes, _this.fileBytes)&&(identical(other.filename, _this.filename) || other.filename == _this.filename)&&(identical(other.model, _this.model) || other.model == _this.model)&&(identical(other.language, _this.language) || other.language == _this.language)&&(identical(other.prompt, _this.prompt) || other.prompt == _this.prompt)&&(identical(other.responseFormat, _this.responseFormat) || other.responseFormat == _this.responseFormat)&&(identical(other.temperature, _this.temperature) || other.temperature == _this.temperature));
}


@override
int get hashCode {
  final _this = this as AudioTranscriptionRequest;
  return Object.hash(runtimeType,const DeepCollectionEquality().hash(_this.fileBytes),_this.filename,_this.model,_this.language,_this.prompt,_this.responseFormat,_this.temperature);
}

@override
String toString() {
  final _this = this as AudioTranscriptionRequest;
  return 'AudioTranscriptionRequest(fileBytes: ${_this.fileBytes}, filename: ${_this.filename}, model: ${_this.model}, language: ${_this.language}, prompt: ${_this.prompt}, responseFormat: ${_this.responseFormat}, temperature: ${_this.temperature})';
}


}

/// @nodoc
abstract mixin class $AudioTranscriptionRequestCopyWith<$Res>  {
  factory $AudioTranscriptionRequestCopyWith(AudioTranscriptionRequest value, $Res Function(AudioTranscriptionRequest) _then) = _$AudioTranscriptionRequestCopyWithImpl;
@useResult
$Res call({
 List<int> fileBytes, String filename, String model, String? language, String? prompt,@JsonKey(name: 'response_format') String? responseFormat, double? temperature
});




}
/// @nodoc
class _$AudioTranscriptionRequestCopyWithImpl<$Res>
    implements $AudioTranscriptionRequestCopyWith<$Res> {
  _$AudioTranscriptionRequestCopyWithImpl(this._self, this._then);

  final AudioTranscriptionRequest _self;
  final $Res Function(AudioTranscriptionRequest) _then;

/// Create a copy of AudioTranscriptionRequest
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? fileBytes = null,Object? filename = null,Object? model = null,Object? language = freezed,Object? prompt = freezed,Object? responseFormat = freezed,Object? temperature = freezed,}) {
  return _then(AudioTranscriptionRequest(
fileBytes: null == fileBytes ? _self.fileBytes : fileBytes // ignore: cast_nullable_to_non_nullable
as List<int>,filename: null == filename ? _self.filename : filename // ignore: cast_nullable_to_non_nullable
as String,model: null == model ? _self.model : model // ignore: cast_nullable_to_non_nullable
as String,language: freezed == language ? _self.language : language // ignore: cast_nullable_to_non_nullable
as String?,prompt: freezed == prompt ? _self.prompt : prompt // ignore: cast_nullable_to_non_nullable
as String?,responseFormat: freezed == responseFormat ? _self.responseFormat : responseFormat // ignore: cast_nullable_to_non_nullable
as String?,temperature: freezed == temperature ? _self.temperature : temperature // ignore: cast_nullable_to_non_nullable
as double?,
  ));
}

}


/// Adds pattern-matching-related methods to [AudioTranscriptionRequest].
extension AudioTranscriptionRequestPatterns on AudioTranscriptionRequest {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _AudioTranscriptionRequest value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _AudioTranscriptionRequest() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _AudioTranscriptionRequest value)  $default,){
final _that = this;
switch (_that) {
case _AudioTranscriptionRequest():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _AudioTranscriptionRequest value)?  $default,){
final _that = this;
switch (_that) {
case _AudioTranscriptionRequest() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( List<int> fileBytes,  String filename,  String model,  String? language,  String? prompt, @JsonKey(name: 'response_format')  String? responseFormat,  double? temperature)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _AudioTranscriptionRequest() when $default != null:
return $default(_that.fileBytes,_that.filename,_that.model,_that.language,_that.prompt,_that.responseFormat,_that.temperature);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( List<int> fileBytes,  String filename,  String model,  String? language,  String? prompt, @JsonKey(name: 'response_format')  String? responseFormat,  double? temperature)  $default,) {final _that = this;
switch (_that) {
case _AudioTranscriptionRequest():
return $default(_that.fileBytes,_that.filename,_that.model,_that.language,_that.prompt,_that.responseFormat,_that.temperature);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( List<int> fileBytes,  String filename,  String model,  String? language,  String? prompt, @JsonKey(name: 'response_format')  String? responseFormat,  double? temperature)?  $default,) {final _that = this;
switch (_that) {
case _AudioTranscriptionRequest() when $default != null:
return $default(_that.fileBytes,_that.filename,_that.model,_that.language,_that.prompt,_that.responseFormat,_that.temperature);case _:
  return null;

}
}

}

/// @nodoc


class _AudioTranscriptionRequest implements AudioTranscriptionRequest {
  const _AudioTranscriptionRequest({required  List<int> fileBytes, required this.filename, required this.model, this.language, this.prompt, @JsonKey(name: 'response_format') this.responseFormat, this.temperature}): _fileBytes = fileBytes;
  

/// The audio file bytes to transcribe.
 final  List<int> _fileBytes;
/// The audio file bytes to transcribe.
@override List<int> get fileBytes {
  if (_fileBytes is EqualUnmodifiableListView) return _fileBytes;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_fileBytes);
}

/// The filename (e.g. 'recording.wav', 'speech.mp3').
@override final  String filename;
/// Model ID (e.g. 'whisper-large-v3', 'mlx-community/whisper-tiny').
@override final  String model;
/// Optional language code in ISO-639-1 format (e.g. 'en', 'es', 'fr').
@override final  String? language;
/// Optional text prompt to guide the model's style or vocabulary.
@override final  String? prompt;
/// Desired response format: "json" (default), "text", "verbose_json", "srt", "vtt".
@override@JsonKey(name: 'response_format') final  String? responseFormat;
/// Sampling temperature between 0 and 1.
@override final  double? temperature;

/// Create a copy of AudioTranscriptionRequest
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AudioTranscriptionRequestCopyWith<_AudioTranscriptionRequest> get copyWith => __$AudioTranscriptionRequestCopyWithImpl<_AudioTranscriptionRequest>(this, _$identity);



@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _AudioTranscriptionRequest&&const DeepCollectionEquality().equals(other.fileBytes, _fileBytes)&&(identical(other.filename, filename) || other.filename == filename)&&(identical(other.model, model) || other.model == model)&&(identical(other.language, language) || other.language == language)&&(identical(other.prompt, prompt) || other.prompt == prompt)&&(identical(other.responseFormat, responseFormat) || other.responseFormat == responseFormat)&&(identical(other.temperature, temperature) || other.temperature == temperature));
}


@override
int get hashCode {
    return Object.hash(runtimeType,const DeepCollectionEquality().hash(_fileBytes),filename,model,language,prompt,responseFormat,temperature);
}

@override
String toString() {
    return 'AudioTranscriptionRequest(fileBytes: $fileBytes, filename: $filename, model: $model, language: $language, prompt: $prompt, responseFormat: $responseFormat, temperature: $temperature)';
}


}

/// @nodoc
abstract mixin class _$AudioTranscriptionRequestCopyWith<$Res> implements $AudioTranscriptionRequestCopyWith<$Res> {
  factory _$AudioTranscriptionRequestCopyWith(_AudioTranscriptionRequest value, $Res Function(_AudioTranscriptionRequest) _then) = __$AudioTranscriptionRequestCopyWithImpl;
@override @useResult
$Res call({
 List<int> fileBytes, String filename, String model, String? language, String? prompt,@JsonKey(name: 'response_format') String? responseFormat, double? temperature
});




}
/// @nodoc
class __$AudioTranscriptionRequestCopyWithImpl<$Res>
    implements _$AudioTranscriptionRequestCopyWith<$Res> {
  __$AudioTranscriptionRequestCopyWithImpl(this._self, this._then);

  final _AudioTranscriptionRequest _self;
  final $Res Function(_AudioTranscriptionRequest) _then;

/// Create a copy of AudioTranscriptionRequest
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? fileBytes = null,Object? filename = null,Object? model = null,Object? language = freezed,Object? prompt = freezed,Object? responseFormat = freezed,Object? temperature = freezed,}) {
  return _then(_AudioTranscriptionRequest(
fileBytes: null == fileBytes ? _self._fileBytes : fileBytes // ignore: cast_nullable_to_non_nullable
as List<int>,filename: null == filename ? _self.filename : filename // ignore: cast_nullable_to_non_nullable
as String,model: null == model ? _self.model : model // ignore: cast_nullable_to_non_nullable
as String,language: freezed == language ? _self.language : language // ignore: cast_nullable_to_non_nullable
as String?,prompt: freezed == prompt ? _self.prompt : prompt // ignore: cast_nullable_to_non_nullable
as String?,responseFormat: freezed == responseFormat ? _self.responseFormat : responseFormat // ignore: cast_nullable_to_non_nullable
as String?,temperature: freezed == temperature ? _self.temperature : temperature // ignore: cast_nullable_to_non_nullable
as double?,
  ));
}


}


/// @nodoc
mixin _$AudioTranscriptionResponse {

 String get text; Map<String, dynamic> get raw;
/// Create a copy of AudioTranscriptionResponse
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AudioTranscriptionResponseCopyWith<AudioTranscriptionResponse> get copyWith => _$AudioTranscriptionResponseCopyWithImpl<AudioTranscriptionResponse>(this as AudioTranscriptionResponse, _$identity);

  /// Serializes this AudioTranscriptionResponse to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as AudioTranscriptionResponse;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AudioTranscriptionResponse&&(identical(other.text, _this.text) || other.text == _this.text)&&const DeepCollectionEquality().equals(other.raw, _this.raw));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as AudioTranscriptionResponse;
  return Object.hash(runtimeType,_this.text,const DeepCollectionEquality().hash(_this.raw));
}

@override
String toString() {
  final _this = this as AudioTranscriptionResponse;
  return 'AudioTranscriptionResponse(text: ${_this.text}, raw: ${_this.raw})';
}


}

/// @nodoc
abstract mixin class $AudioTranscriptionResponseCopyWith<$Res>  {
  factory $AudioTranscriptionResponseCopyWith(AudioTranscriptionResponse value, $Res Function(AudioTranscriptionResponse) _then) = _$AudioTranscriptionResponseCopyWithImpl;
@useResult
$Res call({
 String text, Map<String, dynamic> raw
});




}
/// @nodoc
class _$AudioTranscriptionResponseCopyWithImpl<$Res>
    implements $AudioTranscriptionResponseCopyWith<$Res> {
  _$AudioTranscriptionResponseCopyWithImpl(this._self, this._then);

  final AudioTranscriptionResponse _self;
  final $Res Function(AudioTranscriptionResponse) _then;

/// Create a copy of AudioTranscriptionResponse
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? text = null,Object? raw = null,}) {
  return _then(AudioTranscriptionResponse(
text: null == text ? _self.text : text // ignore: cast_nullable_to_non_nullable
as String,raw: null == raw ? _self.raw : raw // ignore: cast_nullable_to_non_nullable
as Map<String, dynamic>,
  ));
}

}


/// Adds pattern-matching-related methods to [AudioTranscriptionResponse].
extension AudioTranscriptionResponsePatterns on AudioTranscriptionResponse {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _AudioTranscriptionResponse value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _AudioTranscriptionResponse() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _AudioTranscriptionResponse value)  $default,){
final _that = this;
switch (_that) {
case _AudioTranscriptionResponse():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _AudioTranscriptionResponse value)?  $default,){
final _that = this;
switch (_that) {
case _AudioTranscriptionResponse() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String text,  Map<String, dynamic> raw)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _AudioTranscriptionResponse() when $default != null:
return $default(_that.text,_that.raw);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String text,  Map<String, dynamic> raw)  $default,) {final _that = this;
switch (_that) {
case _AudioTranscriptionResponse():
return $default(_that.text,_that.raw);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String text,  Map<String, dynamic> raw)?  $default,) {final _that = this;
switch (_that) {
case _AudioTranscriptionResponse() when $default != null:
return $default(_that.text,_that.raw);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _AudioTranscriptionResponse implements AudioTranscriptionResponse {
  const _AudioTranscriptionResponse({this.text = '',  Map<String, dynamic> raw = const {}}): _raw = raw;
  factory _AudioTranscriptionResponse.fromJson(Map<String, dynamic> json) => _$AudioTranscriptionResponseFromJson(json);

@override@JsonKey() final  String text;
 final  Map<String, dynamic> _raw;
@override@JsonKey() Map<String, dynamic> get raw {
  if (_raw is EqualUnmodifiableMapView) return _raw;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableMapView(_raw);
}


/// Create a copy of AudioTranscriptionResponse
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AudioTranscriptionResponseCopyWith<_AudioTranscriptionResponse> get copyWith => __$AudioTranscriptionResponseCopyWithImpl<_AudioTranscriptionResponse>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$AudioTranscriptionResponseToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _AudioTranscriptionResponse&&(identical(other.text, text) || other.text == text)&&const DeepCollectionEquality().equals(other.raw, _raw));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,text,const DeepCollectionEquality().hash(_raw));
}

@override
String toString() {
    return 'AudioTranscriptionResponse(text: $text, raw: $raw)';
}


}

/// @nodoc
abstract mixin class _$AudioTranscriptionResponseCopyWith<$Res> implements $AudioTranscriptionResponseCopyWith<$Res> {
  factory _$AudioTranscriptionResponseCopyWith(_AudioTranscriptionResponse value, $Res Function(_AudioTranscriptionResponse) _then) = __$AudioTranscriptionResponseCopyWithImpl;
@override @useResult
$Res call({
 String text, Map<String, dynamic> raw
});




}
/// @nodoc
class __$AudioTranscriptionResponseCopyWithImpl<$Res>
    implements _$AudioTranscriptionResponseCopyWith<$Res> {
  __$AudioTranscriptionResponseCopyWithImpl(this._self, this._then);

  final _AudioTranscriptionResponse _self;
  final $Res Function(_AudioTranscriptionResponse) _then;

/// Create a copy of AudioTranscriptionResponse
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? text = null,Object? raw = null,}) {
  return _then(_AudioTranscriptionResponse(
text: null == text ? _self.text : text // ignore: cast_nullable_to_non_nullable
as String,raw: null == raw ? _self._raw : raw // ignore: cast_nullable_to_non_nullable
as Map<String, dynamic>,
  ));
}


}


/// @nodoc
mixin _$AudioSpeechRequest {

/// Model ID (e.g., 'tts-1', 'mlx-community/Kokoro-82M').
 String get model;/// The text to synthesize into speech.
 String get input;/// Voice to use (e.g. 'alloy', 'echo', 'fable', 'onyx', 'nova', 'shimmer').
 String get voice;/// Audio format: "mp3" (default), "opus", "aac", "flac", "wav", or "pcm".
@JsonKey(name: 'response_format') String? get responseFormat;/// Speech speed between 0.25 and 4.0 (default 1.0).
 double? get speed;
/// Create a copy of AudioSpeechRequest
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AudioSpeechRequestCopyWith<AudioSpeechRequest> get copyWith => _$AudioSpeechRequestCopyWithImpl<AudioSpeechRequest>(this as AudioSpeechRequest, _$identity);

  /// Serializes this AudioSpeechRequest to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as AudioSpeechRequest;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AudioSpeechRequest&&(identical(other.model, _this.model) || other.model == _this.model)&&(identical(other.input, _this.input) || other.input == _this.input)&&(identical(other.voice, _this.voice) || other.voice == _this.voice)&&(identical(other.responseFormat, _this.responseFormat) || other.responseFormat == _this.responseFormat)&&(identical(other.speed, _this.speed) || other.speed == _this.speed));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as AudioSpeechRequest;
  return Object.hash(runtimeType,_this.model,_this.input,_this.voice,_this.responseFormat,_this.speed);
}

@override
String toString() {
  final _this = this as AudioSpeechRequest;
  return 'AudioSpeechRequest(model: ${_this.model}, input: ${_this.input}, voice: ${_this.voice}, responseFormat: ${_this.responseFormat}, speed: ${_this.speed})';
}


}

/// @nodoc
abstract mixin class $AudioSpeechRequestCopyWith<$Res>  {
  factory $AudioSpeechRequestCopyWith(AudioSpeechRequest value, $Res Function(AudioSpeechRequest) _then) = _$AudioSpeechRequestCopyWithImpl;
@useResult
$Res call({
 String model, String input, String voice,@JsonKey(name: 'response_format') String? responseFormat, double? speed
});




}
/// @nodoc
class _$AudioSpeechRequestCopyWithImpl<$Res>
    implements $AudioSpeechRequestCopyWith<$Res> {
  _$AudioSpeechRequestCopyWithImpl(this._self, this._then);

  final AudioSpeechRequest _self;
  final $Res Function(AudioSpeechRequest) _then;

/// Create a copy of AudioSpeechRequest
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? model = null,Object? input = null,Object? voice = null,Object? responseFormat = freezed,Object? speed = freezed,}) {
  return _then(AudioSpeechRequest(
model: null == model ? _self.model : model // ignore: cast_nullable_to_non_nullable
as String,input: null == input ? _self.input : input // ignore: cast_nullable_to_non_nullable
as String,voice: null == voice ? _self.voice : voice // ignore: cast_nullable_to_non_nullable
as String,responseFormat: freezed == responseFormat ? _self.responseFormat : responseFormat // ignore: cast_nullable_to_non_nullable
as String?,speed: freezed == speed ? _self.speed : speed // ignore: cast_nullable_to_non_nullable
as double?,
  ));
}

}


/// Adds pattern-matching-related methods to [AudioSpeechRequest].
extension AudioSpeechRequestPatterns on AudioSpeechRequest {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _AudioSpeechRequest value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _AudioSpeechRequest() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _AudioSpeechRequest value)  $default,){
final _that = this;
switch (_that) {
case _AudioSpeechRequest():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _AudioSpeechRequest value)?  $default,){
final _that = this;
switch (_that) {
case _AudioSpeechRequest() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String model,  String input,  String voice, @JsonKey(name: 'response_format')  String? responseFormat,  double? speed)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _AudioSpeechRequest() when $default != null:
return $default(_that.model,_that.input,_that.voice,_that.responseFormat,_that.speed);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String model,  String input,  String voice, @JsonKey(name: 'response_format')  String? responseFormat,  double? speed)  $default,) {final _that = this;
switch (_that) {
case _AudioSpeechRequest():
return $default(_that.model,_that.input,_that.voice,_that.responseFormat,_that.speed);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String model,  String input,  String voice, @JsonKey(name: 'response_format')  String? responseFormat,  double? speed)?  $default,) {final _that = this;
switch (_that) {
case _AudioSpeechRequest() when $default != null:
return $default(_that.model,_that.input,_that.voice,_that.responseFormat,_that.speed);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _AudioSpeechRequest implements AudioSpeechRequest {
  const _AudioSpeechRequest({required this.model, required this.input, required this.voice, @JsonKey(name: 'response_format') this.responseFormat, this.speed});
  factory _AudioSpeechRequest.fromJson(Map<String, dynamic> json) => _$AudioSpeechRequestFromJson(json);

/// Model ID (e.g., 'tts-1', 'mlx-community/Kokoro-82M').
@override final  String model;
/// The text to synthesize into speech.
@override final  String input;
/// Voice to use (e.g. 'alloy', 'echo', 'fable', 'onyx', 'nova', 'shimmer').
@override final  String voice;
/// Audio format: "mp3" (default), "opus", "aac", "flac", "wav", or "pcm".
@override@JsonKey(name: 'response_format') final  String? responseFormat;
/// Speech speed between 0.25 and 4.0 (default 1.0).
@override final  double? speed;

/// Create a copy of AudioSpeechRequest
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AudioSpeechRequestCopyWith<_AudioSpeechRequest> get copyWith => __$AudioSpeechRequestCopyWithImpl<_AudioSpeechRequest>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$AudioSpeechRequestToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _AudioSpeechRequest&&(identical(other.model, model) || other.model == model)&&(identical(other.input, input) || other.input == input)&&(identical(other.voice, voice) || other.voice == voice)&&(identical(other.responseFormat, responseFormat) || other.responseFormat == responseFormat)&&(identical(other.speed, speed) || other.speed == speed));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,model,input,voice,responseFormat,speed);
}

@override
String toString() {
    return 'AudioSpeechRequest(model: $model, input: $input, voice: $voice, responseFormat: $responseFormat, speed: $speed)';
}


}

/// @nodoc
abstract mixin class _$AudioSpeechRequestCopyWith<$Res> implements $AudioSpeechRequestCopyWith<$Res> {
  factory _$AudioSpeechRequestCopyWith(_AudioSpeechRequest value, $Res Function(_AudioSpeechRequest) _then) = __$AudioSpeechRequestCopyWithImpl;
@override @useResult
$Res call({
 String model, String input, String voice,@JsonKey(name: 'response_format') String? responseFormat, double? speed
});




}
/// @nodoc
class __$AudioSpeechRequestCopyWithImpl<$Res>
    implements _$AudioSpeechRequestCopyWith<$Res> {
  __$AudioSpeechRequestCopyWithImpl(this._self, this._then);

  final _AudioSpeechRequest _self;
  final $Res Function(_AudioSpeechRequest) _then;

/// Create a copy of AudioSpeechRequest
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? model = null,Object? input = null,Object? voice = null,Object? responseFormat = freezed,Object? speed = freezed,}) {
  return _then(_AudioSpeechRequest(
model: null == model ? _self.model : model // ignore: cast_nullable_to_non_nullable
as String,input: null == input ? _self.input : input // ignore: cast_nullable_to_non_nullable
as String,voice: null == voice ? _self.voice : voice // ignore: cast_nullable_to_non_nullable
as String,responseFormat: freezed == responseFormat ? _self.responseFormat : responseFormat // ignore: cast_nullable_to_non_nullable
as String?,speed: freezed == speed ? _self.speed : speed // ignore: cast_nullable_to_non_nullable
as double?,
  ));
}


}

// dart format on
