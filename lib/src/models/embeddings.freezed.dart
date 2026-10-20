// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'embeddings.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$EmbeddingRequest {

 String get model;/// Input text string or list of text strings.
 dynamic get input;/// Optional encoding format: "float" (default) or "base64".
@JsonKey(name: 'encoding_format') String? get encodingFormat;/// Optional dimension cutoff if supported by model.
 int? get dimensions;/// User identifier.
 String? get user;
/// Create a copy of EmbeddingRequest
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$EmbeddingRequestCopyWith<EmbeddingRequest> get copyWith => _$EmbeddingRequestCopyWithImpl<EmbeddingRequest>(this as EmbeddingRequest, _$identity);

  /// Serializes this EmbeddingRequest to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as EmbeddingRequest;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is EmbeddingRequest&&(identical(other.model, _this.model) || other.model == _this.model)&&const DeepCollectionEquality().equals(other.input, _this.input)&&(identical(other.encodingFormat, _this.encodingFormat) || other.encodingFormat == _this.encodingFormat)&&(identical(other.dimensions, _this.dimensions) || other.dimensions == _this.dimensions)&&(identical(other.user, _this.user) || other.user == _this.user));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as EmbeddingRequest;
  return Object.hash(runtimeType,_this.model,const DeepCollectionEquality().hash(_this.input),_this.encodingFormat,_this.dimensions,_this.user);
}

@override
String toString() {
  final _this = this as EmbeddingRequest;
  return 'EmbeddingRequest(model: ${_this.model}, input: ${_this.input}, encodingFormat: ${_this.encodingFormat}, dimensions: ${_this.dimensions}, user: ${_this.user})';
}


}

/// @nodoc
abstract mixin class $EmbeddingRequestCopyWith<$Res>  {
  factory $EmbeddingRequestCopyWith(EmbeddingRequest value, $Res Function(EmbeddingRequest) _then) = _$EmbeddingRequestCopyWithImpl;
@useResult
$Res call({
 String model, dynamic input,@JsonKey(name: 'encoding_format') String? encodingFormat, int? dimensions, String? user
});




}
/// @nodoc
class _$EmbeddingRequestCopyWithImpl<$Res>
    implements $EmbeddingRequestCopyWith<$Res> {
  _$EmbeddingRequestCopyWithImpl(this._self, this._then);

  final EmbeddingRequest _self;
  final $Res Function(EmbeddingRequest) _then;

/// Create a copy of EmbeddingRequest
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? model = null,Object? input = freezed,Object? encodingFormat = freezed,Object? dimensions = freezed,Object? user = freezed,}) {
  return _then(EmbeddingRequest(
model: null == model ? _self.model : model // ignore: cast_nullable_to_non_nullable
as String,input: freezed == input ? _self.input : input // ignore: cast_nullable_to_non_nullable
as dynamic,encodingFormat: freezed == encodingFormat ? _self.encodingFormat : encodingFormat // ignore: cast_nullable_to_non_nullable
as String?,dimensions: freezed == dimensions ? _self.dimensions : dimensions // ignore: cast_nullable_to_non_nullable
as int?,user: freezed == user ? _self.user : user // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [EmbeddingRequest].
extension EmbeddingRequestPatterns on EmbeddingRequest {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _EmbeddingRequest value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _EmbeddingRequest() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _EmbeddingRequest value)  $default,){
final _that = this;
switch (_that) {
case _EmbeddingRequest():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _EmbeddingRequest value)?  $default,){
final _that = this;
switch (_that) {
case _EmbeddingRequest() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String model,  dynamic input, @JsonKey(name: 'encoding_format')  String? encodingFormat,  int? dimensions,  String? user)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _EmbeddingRequest() when $default != null:
return $default(_that.model,_that.input,_that.encodingFormat,_that.dimensions,_that.user);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String model,  dynamic input, @JsonKey(name: 'encoding_format')  String? encodingFormat,  int? dimensions,  String? user)  $default,) {final _that = this;
switch (_that) {
case _EmbeddingRequest():
return $default(_that.model,_that.input,_that.encodingFormat,_that.dimensions,_that.user);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String model,  dynamic input, @JsonKey(name: 'encoding_format')  String? encodingFormat,  int? dimensions,  String? user)?  $default,) {final _that = this;
switch (_that) {
case _EmbeddingRequest() when $default != null:
return $default(_that.model,_that.input,_that.encodingFormat,_that.dimensions,_that.user);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _EmbeddingRequest implements EmbeddingRequest {
  const _EmbeddingRequest({required this.model, required this.input, @JsonKey(name: 'encoding_format') this.encodingFormat, this.dimensions, this.user});
  factory _EmbeddingRequest.fromJson(Map<String, dynamic> json) => _$EmbeddingRequestFromJson(json);

@override final  String model;
/// Input text string or list of text strings.
@override final  dynamic input;
/// Optional encoding format: "float" (default) or "base64".
@override@JsonKey(name: 'encoding_format') final  String? encodingFormat;
/// Optional dimension cutoff if supported by model.
@override final  int? dimensions;
/// User identifier.
@override final  String? user;

/// Create a copy of EmbeddingRequest
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$EmbeddingRequestCopyWith<_EmbeddingRequest> get copyWith => __$EmbeddingRequestCopyWithImpl<_EmbeddingRequest>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$EmbeddingRequestToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _EmbeddingRequest&&(identical(other.model, model) || other.model == model)&&const DeepCollectionEquality().equals(other.input, input)&&(identical(other.encodingFormat, encodingFormat) || other.encodingFormat == encodingFormat)&&(identical(other.dimensions, dimensions) || other.dimensions == dimensions)&&(identical(other.user, user) || other.user == user));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,model,const DeepCollectionEquality().hash(input),encodingFormat,dimensions,user);
}

@override
String toString() {
    return 'EmbeddingRequest(model: $model, input: $input, encodingFormat: $encodingFormat, dimensions: $dimensions, user: $user)';
}


}

/// @nodoc
abstract mixin class _$EmbeddingRequestCopyWith<$Res> implements $EmbeddingRequestCopyWith<$Res> {
  factory _$EmbeddingRequestCopyWith(_EmbeddingRequest value, $Res Function(_EmbeddingRequest) _then) = __$EmbeddingRequestCopyWithImpl;
@override @useResult
$Res call({
 String model, dynamic input,@JsonKey(name: 'encoding_format') String? encodingFormat, int? dimensions, String? user
});




}
/// @nodoc
class __$EmbeddingRequestCopyWithImpl<$Res>
    implements _$EmbeddingRequestCopyWith<$Res> {
  __$EmbeddingRequestCopyWithImpl(this._self, this._then);

  final _EmbeddingRequest _self;
  final $Res Function(_EmbeddingRequest) _then;

/// Create a copy of EmbeddingRequest
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? model = null,Object? input = freezed,Object? encodingFormat = freezed,Object? dimensions = freezed,Object? user = freezed,}) {
  return _then(_EmbeddingRequest(
model: null == model ? _self.model : model // ignore: cast_nullable_to_non_nullable
as String,input: freezed == input ? _self.input : input // ignore: cast_nullable_to_non_nullable
as dynamic,encodingFormat: freezed == encodingFormat ? _self.encodingFormat : encodingFormat // ignore: cast_nullable_to_non_nullable
as String?,dimensions: freezed == dimensions ? _self.dimensions : dimensions // ignore: cast_nullable_to_non_nullable
as int?,user: freezed == user ? _self.user : user // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}


/// @nodoc
mixin _$EmbeddingItem {

 int get index; String get object;/// The embedding vector when encoding is float.
@JsonKey(readValue: _readEmbedding) List<double>? get embedding;/// The base64-encoded vector string when encoding is base64.
@JsonKey(name: 'base64_embedding', readValue: _readBase64) String? get base64Embedding;
/// Create a copy of EmbeddingItem
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$EmbeddingItemCopyWith<EmbeddingItem> get copyWith => _$EmbeddingItemCopyWithImpl<EmbeddingItem>(this as EmbeddingItem, _$identity);

  /// Serializes this EmbeddingItem to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as EmbeddingItem;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is EmbeddingItem&&(identical(other.index, _this.index) || other.index == _this.index)&&(identical(other.object, _this.object) || other.object == _this.object)&&const DeepCollectionEquality().equals(other.embedding, _this.embedding)&&(identical(other.base64Embedding, _this.base64Embedding) || other.base64Embedding == _this.base64Embedding));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as EmbeddingItem;
  return Object.hash(runtimeType,_this.index,_this.object,const DeepCollectionEquality().hash(_this.embedding),_this.base64Embedding);
}

@override
String toString() {
  final _this = this as EmbeddingItem;
  return 'EmbeddingItem(index: ${_this.index}, object: ${_this.object}, embedding: ${_this.embedding}, base64Embedding: ${_this.base64Embedding})';
}


}

/// @nodoc
abstract mixin class $EmbeddingItemCopyWith<$Res>  {
  factory $EmbeddingItemCopyWith(EmbeddingItem value, $Res Function(EmbeddingItem) _then) = _$EmbeddingItemCopyWithImpl;
@useResult
$Res call({
 int index, String object,@JsonKey(readValue: _readEmbedding) List<double>? embedding,@JsonKey(name: 'base64_embedding', readValue: _readBase64) String? base64Embedding
});




}
/// @nodoc
class _$EmbeddingItemCopyWithImpl<$Res>
    implements $EmbeddingItemCopyWith<$Res> {
  _$EmbeddingItemCopyWithImpl(this._self, this._then);

  final EmbeddingItem _self;
  final $Res Function(EmbeddingItem) _then;

/// Create a copy of EmbeddingItem
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? index = null,Object? object = null,Object? embedding = freezed,Object? base64Embedding = freezed,}) {
  return _then(EmbeddingItem(
index: null == index ? _self.index : index // ignore: cast_nullable_to_non_nullable
as int,object: null == object ? _self.object : object // ignore: cast_nullable_to_non_nullable
as String,embedding: freezed == embedding ? _self.embedding : embedding // ignore: cast_nullable_to_non_nullable
as List<double>?,base64Embedding: freezed == base64Embedding ? _self.base64Embedding : base64Embedding // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [EmbeddingItem].
extension EmbeddingItemPatterns on EmbeddingItem {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _EmbeddingItem value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _EmbeddingItem() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _EmbeddingItem value)  $default,){
final _that = this;
switch (_that) {
case _EmbeddingItem():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _EmbeddingItem value)?  $default,){
final _that = this;
switch (_that) {
case _EmbeddingItem() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int index,  String object, @JsonKey(readValue: _readEmbedding)  List<double>? embedding, @JsonKey(name: 'base64_embedding', readValue: _readBase64)  String? base64Embedding)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _EmbeddingItem() when $default != null:
return $default(_that.index,_that.object,_that.embedding,_that.base64Embedding);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int index,  String object, @JsonKey(readValue: _readEmbedding)  List<double>? embedding, @JsonKey(name: 'base64_embedding', readValue: _readBase64)  String? base64Embedding)  $default,) {final _that = this;
switch (_that) {
case _EmbeddingItem():
return $default(_that.index,_that.object,_that.embedding,_that.base64Embedding);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int index,  String object, @JsonKey(readValue: _readEmbedding)  List<double>? embedding, @JsonKey(name: 'base64_embedding', readValue: _readBase64)  String? base64Embedding)?  $default,) {final _that = this;
switch (_that) {
case _EmbeddingItem() when $default != null:
return $default(_that.index,_that.object,_that.embedding,_that.base64Embedding);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _EmbeddingItem implements EmbeddingItem {
  const _EmbeddingItem({this.index = 0, this.object = 'embedding', @JsonKey(readValue: _readEmbedding)  List<double>? embedding, @JsonKey(name: 'base64_embedding', readValue: _readBase64) this.base64Embedding}): _embedding = embedding;
  factory _EmbeddingItem.fromJson(Map<String, dynamic> json) => _$EmbeddingItemFromJson(json);

@override@JsonKey() final  int index;
@override@JsonKey() final  String object;
/// The embedding vector when encoding is float.
 final  List<double>? _embedding;
/// The embedding vector when encoding is float.
@override@JsonKey(readValue: _readEmbedding) List<double>? get embedding {
  final value = _embedding;
  if (value == null) return null;
  if (_embedding is EqualUnmodifiableListView) return _embedding;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

/// The base64-encoded vector string when encoding is base64.
@override@JsonKey(name: 'base64_embedding', readValue: _readBase64) final  String? base64Embedding;

/// Create a copy of EmbeddingItem
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$EmbeddingItemCopyWith<_EmbeddingItem> get copyWith => __$EmbeddingItemCopyWithImpl<_EmbeddingItem>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$EmbeddingItemToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _EmbeddingItem&&(identical(other.index, index) || other.index == index)&&(identical(other.object, object) || other.object == object)&&const DeepCollectionEquality().equals(other.embedding, _embedding)&&(identical(other.base64Embedding, base64Embedding) || other.base64Embedding == base64Embedding));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,index,object,const DeepCollectionEquality().hash(_embedding),base64Embedding);
}

@override
String toString() {
    return 'EmbeddingItem(index: $index, object: $object, embedding: $embedding, base64Embedding: $base64Embedding)';
}


}

/// @nodoc
abstract mixin class _$EmbeddingItemCopyWith<$Res> implements $EmbeddingItemCopyWith<$Res> {
  factory _$EmbeddingItemCopyWith(_EmbeddingItem value, $Res Function(_EmbeddingItem) _then) = __$EmbeddingItemCopyWithImpl;
@override @useResult
$Res call({
 int index, String object,@JsonKey(readValue: _readEmbedding) List<double>? embedding,@JsonKey(name: 'base64_embedding', readValue: _readBase64) String? base64Embedding
});




}
/// @nodoc
class __$EmbeddingItemCopyWithImpl<$Res>
    implements _$EmbeddingItemCopyWith<$Res> {
  __$EmbeddingItemCopyWithImpl(this._self, this._then);

  final _EmbeddingItem _self;
  final $Res Function(_EmbeddingItem) _then;

/// Create a copy of EmbeddingItem
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? index = null,Object? object = null,Object? embedding = freezed,Object? base64Embedding = freezed,}) {
  return _then(_EmbeddingItem(
index: null == index ? _self.index : index // ignore: cast_nullable_to_non_nullable
as int,object: null == object ? _self.object : object // ignore: cast_nullable_to_non_nullable
as String,embedding: freezed == embedding ? _self._embedding : embedding // ignore: cast_nullable_to_non_nullable
as List<double>?,base64Embedding: freezed == base64Embedding ? _self.base64Embedding : base64Embedding // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}


/// @nodoc
mixin _$EmbeddingResponse {

 String get object; String get model; List<EmbeddingItem> get data; Usage? get usage;
/// Create a copy of EmbeddingResponse
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$EmbeddingResponseCopyWith<EmbeddingResponse> get copyWith => _$EmbeddingResponseCopyWithImpl<EmbeddingResponse>(this as EmbeddingResponse, _$identity);

  /// Serializes this EmbeddingResponse to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as EmbeddingResponse;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is EmbeddingResponse&&(identical(other.object, _this.object) || other.object == _this.object)&&(identical(other.model, _this.model) || other.model == _this.model)&&const DeepCollectionEquality().equals(other.data, _this.data)&&(identical(other.usage, _this.usage) || other.usage == _this.usage));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as EmbeddingResponse;
  return Object.hash(runtimeType,_this.object,_this.model,const DeepCollectionEquality().hash(_this.data),_this.usage);
}

@override
String toString() {
  final _this = this as EmbeddingResponse;
  return 'EmbeddingResponse(object: ${_this.object}, model: ${_this.model}, data: ${_this.data}, usage: ${_this.usage})';
}


}

/// @nodoc
abstract mixin class $EmbeddingResponseCopyWith<$Res>  {
  factory $EmbeddingResponseCopyWith(EmbeddingResponse value, $Res Function(EmbeddingResponse) _then) = _$EmbeddingResponseCopyWithImpl;
@useResult
$Res call({
 String object, String model, List<EmbeddingItem> data, Usage? usage
});


$UsageCopyWith<$Res>? get usage;

}
/// @nodoc
class _$EmbeddingResponseCopyWithImpl<$Res>
    implements $EmbeddingResponseCopyWith<$Res> {
  _$EmbeddingResponseCopyWithImpl(this._self, this._then);

  final EmbeddingResponse _self;
  final $Res Function(EmbeddingResponse) _then;

/// Create a copy of EmbeddingResponse
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? object = null,Object? model = null,Object? data = null,Object? usage = freezed,}) {
  return _then(EmbeddingResponse(
object: null == object ? _self.object : object // ignore: cast_nullable_to_non_nullable
as String,model: null == model ? _self.model : model // ignore: cast_nullable_to_non_nullable
as String,data: null == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as List<EmbeddingItem>,usage: freezed == usage ? _self.usage : usage // ignore: cast_nullable_to_non_nullable
as Usage?,
  ));
}
/// Create a copy of EmbeddingResponse
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


/// Adds pattern-matching-related methods to [EmbeddingResponse].
extension EmbeddingResponsePatterns on EmbeddingResponse {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _EmbeddingResponse value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _EmbeddingResponse() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _EmbeddingResponse value)  $default,){
final _that = this;
switch (_that) {
case _EmbeddingResponse():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _EmbeddingResponse value)?  $default,){
final _that = this;
switch (_that) {
case _EmbeddingResponse() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String object,  String model,  List<EmbeddingItem> data,  Usage? usage)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _EmbeddingResponse() when $default != null:
return $default(_that.object,_that.model,_that.data,_that.usage);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String object,  String model,  List<EmbeddingItem> data,  Usage? usage)  $default,) {final _that = this;
switch (_that) {
case _EmbeddingResponse():
return $default(_that.object,_that.model,_that.data,_that.usage);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String object,  String model,  List<EmbeddingItem> data,  Usage? usage)?  $default,) {final _that = this;
switch (_that) {
case _EmbeddingResponse() when $default != null:
return $default(_that.object,_that.model,_that.data,_that.usage);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _EmbeddingResponse implements EmbeddingResponse {
  const _EmbeddingResponse({this.object = 'list', required this.model, required  List<EmbeddingItem> data, this.usage}): _data = data;
  factory _EmbeddingResponse.fromJson(Map<String, dynamic> json) => _$EmbeddingResponseFromJson(json);

@override@JsonKey() final  String object;
@override final  String model;
 final  List<EmbeddingItem> _data;
@override List<EmbeddingItem> get data {
  if (_data is EqualUnmodifiableListView) return _data;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_data);
}

@override final  Usage? usage;

/// Create a copy of EmbeddingResponse
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$EmbeddingResponseCopyWith<_EmbeddingResponse> get copyWith => __$EmbeddingResponseCopyWithImpl<_EmbeddingResponse>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$EmbeddingResponseToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _EmbeddingResponse&&(identical(other.object, object) || other.object == object)&&(identical(other.model, model) || other.model == model)&&const DeepCollectionEquality().equals(other.data, _data)&&(identical(other.usage, usage) || other.usage == usage));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,object,model,const DeepCollectionEquality().hash(_data),usage);
}

@override
String toString() {
    return 'EmbeddingResponse(object: $object, model: $model, data: $data, usage: $usage)';
}


}

/// @nodoc
abstract mixin class _$EmbeddingResponseCopyWith<$Res> implements $EmbeddingResponseCopyWith<$Res> {
  factory _$EmbeddingResponseCopyWith(_EmbeddingResponse value, $Res Function(_EmbeddingResponse) _then) = __$EmbeddingResponseCopyWithImpl;
@override @useResult
$Res call({
 String object, String model, List<EmbeddingItem> data, Usage? usage
});


@override $UsageCopyWith<$Res>? get usage;

}
/// @nodoc
class __$EmbeddingResponseCopyWithImpl<$Res>
    implements _$EmbeddingResponseCopyWith<$Res> {
  __$EmbeddingResponseCopyWithImpl(this._self, this._then);

  final _EmbeddingResponse _self;
  final $Res Function(_EmbeddingResponse) _then;

/// Create a copy of EmbeddingResponse
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? object = null,Object? model = null,Object? data = null,Object? usage = freezed,}) {
  return _then(_EmbeddingResponse(
object: null == object ? _self.object : object // ignore: cast_nullable_to_non_nullable
as String,model: null == model ? _self.model : model // ignore: cast_nullable_to_non_nullable
as String,data: null == data ? _self._data : data // ignore: cast_nullable_to_non_nullable
as List<EmbeddingItem>,usage: freezed == usage ? _self.usage : usage // ignore: cast_nullable_to_non_nullable
as Usage?,
  ));
}

/// Create a copy of EmbeddingResponse
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
