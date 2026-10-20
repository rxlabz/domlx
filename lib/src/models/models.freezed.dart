// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'models.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ModelInfo {

 String get id; String get object; int? get created;@JsonKey(name: 'owned_by') String? get ownedBy;@JsonKey(readValue: _readRaw) Map<String, dynamic> get raw;
/// Create a copy of ModelInfo
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ModelInfoCopyWith<ModelInfo> get copyWith => _$ModelInfoCopyWithImpl<ModelInfo>(this as ModelInfo, _$identity);

  /// Serializes this ModelInfo to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as ModelInfo;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ModelInfo&&(identical(other.id, _this.id) || other.id == _this.id)&&(identical(other.object, _this.object) || other.object == _this.object)&&(identical(other.created, _this.created) || other.created == _this.created)&&(identical(other.ownedBy, _this.ownedBy) || other.ownedBy == _this.ownedBy)&&const DeepCollectionEquality().equals(other.raw, _this.raw));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as ModelInfo;
  return Object.hash(runtimeType,_this.id,_this.object,_this.created,_this.ownedBy,const DeepCollectionEquality().hash(_this.raw));
}

@override
String toString() {
  final _this = this as ModelInfo;
  return 'ModelInfo(id: ${_this.id}, object: ${_this.object}, created: ${_this.created}, ownedBy: ${_this.ownedBy}, raw: ${_this.raw})';
}


}

/// @nodoc
abstract mixin class $ModelInfoCopyWith<$Res>  {
  factory $ModelInfoCopyWith(ModelInfo value, $Res Function(ModelInfo) _then) = _$ModelInfoCopyWithImpl;
@useResult
$Res call({
 String id, String object, int? created,@JsonKey(name: 'owned_by') String? ownedBy,@JsonKey(readValue: _readRaw) Map<String, dynamic> raw
});




}
/// @nodoc
class _$ModelInfoCopyWithImpl<$Res>
    implements $ModelInfoCopyWith<$Res> {
  _$ModelInfoCopyWithImpl(this._self, this._then);

  final ModelInfo _self;
  final $Res Function(ModelInfo) _then;

/// Create a copy of ModelInfo
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? object = null,Object? created = freezed,Object? ownedBy = freezed,Object? raw = null,}) {
  return _then(ModelInfo(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,object: null == object ? _self.object : object // ignore: cast_nullable_to_non_nullable
as String,created: freezed == created ? _self.created : created // ignore: cast_nullable_to_non_nullable
as int?,ownedBy: freezed == ownedBy ? _self.ownedBy : ownedBy // ignore: cast_nullable_to_non_nullable
as String?,raw: null == raw ? _self.raw : raw // ignore: cast_nullable_to_non_nullable
as Map<String, dynamic>,
  ));
}

}


/// Adds pattern-matching-related methods to [ModelInfo].
extension ModelInfoPatterns on ModelInfo {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ModelInfo value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ModelInfo() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ModelInfo value)  $default,){
final _that = this;
switch (_that) {
case _ModelInfo():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ModelInfo value)?  $default,){
final _that = this;
switch (_that) {
case _ModelInfo() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String object,  int? created, @JsonKey(name: 'owned_by')  String? ownedBy, @JsonKey(readValue: _readRaw)  Map<String, dynamic> raw)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ModelInfo() when $default != null:
return $default(_that.id,_that.object,_that.created,_that.ownedBy,_that.raw);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String object,  int? created, @JsonKey(name: 'owned_by')  String? ownedBy, @JsonKey(readValue: _readRaw)  Map<String, dynamic> raw)  $default,) {final _that = this;
switch (_that) {
case _ModelInfo():
return $default(_that.id,_that.object,_that.created,_that.ownedBy,_that.raw);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String object,  int? created, @JsonKey(name: 'owned_by')  String? ownedBy, @JsonKey(readValue: _readRaw)  Map<String, dynamic> raw)?  $default,) {final _that = this;
switch (_that) {
case _ModelInfo() when $default != null:
return $default(_that.id,_that.object,_that.created,_that.ownedBy,_that.raw);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ModelInfo implements ModelInfo {
  const _ModelInfo({required this.id, this.object = 'model', this.created, @JsonKey(name: 'owned_by') this.ownedBy, @JsonKey(readValue: _readRaw)  Map<String, dynamic> raw = const {}}): _raw = raw;
  factory _ModelInfo.fromJson(Map<String, dynamic> json) => _$ModelInfoFromJson(json);

@override final  String id;
@override@JsonKey() final  String object;
@override final  int? created;
@override@JsonKey(name: 'owned_by') final  String? ownedBy;
 final  Map<String, dynamic> _raw;
@override@JsonKey(readValue: _readRaw) Map<String, dynamic> get raw {
  if (_raw is EqualUnmodifiableMapView) return _raw;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableMapView(_raw);
}


/// Create a copy of ModelInfo
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ModelInfoCopyWith<_ModelInfo> get copyWith => __$ModelInfoCopyWithImpl<_ModelInfo>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ModelInfoToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _ModelInfo&&(identical(other.id, id) || other.id == id)&&(identical(other.object, object) || other.object == object)&&(identical(other.created, created) || other.created == created)&&(identical(other.ownedBy, ownedBy) || other.ownedBy == ownedBy)&&const DeepCollectionEquality().equals(other.raw, _raw));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,id,object,created,ownedBy,const DeepCollectionEquality().hash(_raw));
}

@override
String toString() {
    return 'ModelInfo(id: $id, object: $object, created: $created, ownedBy: $ownedBy, raw: $raw)';
}


}

/// @nodoc
abstract mixin class _$ModelInfoCopyWith<$Res> implements $ModelInfoCopyWith<$Res> {
  factory _$ModelInfoCopyWith(_ModelInfo value, $Res Function(_ModelInfo) _then) = __$ModelInfoCopyWithImpl;
@override @useResult
$Res call({
 String id, String object, int? created,@JsonKey(name: 'owned_by') String? ownedBy,@JsonKey(readValue: _readRaw) Map<String, dynamic> raw
});




}
/// @nodoc
class __$ModelInfoCopyWithImpl<$Res>
    implements _$ModelInfoCopyWith<$Res> {
  __$ModelInfoCopyWithImpl(this._self, this._then);

  final _ModelInfo _self;
  final $Res Function(_ModelInfo) _then;

/// Create a copy of ModelInfo
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? object = null,Object? created = freezed,Object? ownedBy = freezed,Object? raw = null,}) {
  return _then(_ModelInfo(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,object: null == object ? _self.object : object // ignore: cast_nullable_to_non_nullable
as String,created: freezed == created ? _self.created : created // ignore: cast_nullable_to_non_nullable
as int?,ownedBy: freezed == ownedBy ? _self.ownedBy : ownedBy // ignore: cast_nullable_to_non_nullable
as String?,raw: null == raw ? _self._raw : raw // ignore: cast_nullable_to_non_nullable
as Map<String, dynamic>,
  ));
}


}


/// @nodoc
mixin _$ModelsResponse {

 String get object; List<ModelInfo> get data;
/// Create a copy of ModelsResponse
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ModelsResponseCopyWith<ModelsResponse> get copyWith => _$ModelsResponseCopyWithImpl<ModelsResponse>(this as ModelsResponse, _$identity);

  /// Serializes this ModelsResponse to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as ModelsResponse;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ModelsResponse&&(identical(other.object, _this.object) || other.object == _this.object)&&const DeepCollectionEquality().equals(other.data, _this.data));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as ModelsResponse;
  return Object.hash(runtimeType,_this.object,const DeepCollectionEquality().hash(_this.data));
}

@override
String toString() {
  final _this = this as ModelsResponse;
  return 'ModelsResponse(object: ${_this.object}, data: ${_this.data})';
}


}

/// @nodoc
abstract mixin class $ModelsResponseCopyWith<$Res>  {
  factory $ModelsResponseCopyWith(ModelsResponse value, $Res Function(ModelsResponse) _then) = _$ModelsResponseCopyWithImpl;
@useResult
$Res call({
 String object, List<ModelInfo> data
});




}
/// @nodoc
class _$ModelsResponseCopyWithImpl<$Res>
    implements $ModelsResponseCopyWith<$Res> {
  _$ModelsResponseCopyWithImpl(this._self, this._then);

  final ModelsResponse _self;
  final $Res Function(ModelsResponse) _then;

/// Create a copy of ModelsResponse
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? object = null,Object? data = null,}) {
  return _then(ModelsResponse(
object: null == object ? _self.object : object // ignore: cast_nullable_to_non_nullable
as String,data: null == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as List<ModelInfo>,
  ));
}

}


/// Adds pattern-matching-related methods to [ModelsResponse].
extension ModelsResponsePatterns on ModelsResponse {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ModelsResponse value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ModelsResponse() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ModelsResponse value)  $default,){
final _that = this;
switch (_that) {
case _ModelsResponse():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ModelsResponse value)?  $default,){
final _that = this;
switch (_that) {
case _ModelsResponse() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String object,  List<ModelInfo> data)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ModelsResponse() when $default != null:
return $default(_that.object,_that.data);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String object,  List<ModelInfo> data)  $default,) {final _that = this;
switch (_that) {
case _ModelsResponse():
return $default(_that.object,_that.data);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String object,  List<ModelInfo> data)?  $default,) {final _that = this;
switch (_that) {
case _ModelsResponse() when $default != null:
return $default(_that.object,_that.data);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ModelsResponse implements ModelsResponse {
  const _ModelsResponse({this.object = 'list', required  List<ModelInfo> data}): _data = data;
  factory _ModelsResponse.fromJson(Map<String, dynamic> json) => _$ModelsResponseFromJson(json);

@override@JsonKey() final  String object;
 final  List<ModelInfo> _data;
@override List<ModelInfo> get data {
  if (_data is EqualUnmodifiableListView) return _data;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_data);
}


/// Create a copy of ModelsResponse
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ModelsResponseCopyWith<_ModelsResponse> get copyWith => __$ModelsResponseCopyWithImpl<_ModelsResponse>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ModelsResponseToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _ModelsResponse&&(identical(other.object, object) || other.object == object)&&const DeepCollectionEquality().equals(other.data, _data));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,object,const DeepCollectionEquality().hash(_data));
}

@override
String toString() {
    return 'ModelsResponse(object: $object, data: $data)';
}


}

/// @nodoc
abstract mixin class _$ModelsResponseCopyWith<$Res> implements $ModelsResponseCopyWith<$Res> {
  factory _$ModelsResponseCopyWith(_ModelsResponse value, $Res Function(_ModelsResponse) _then) = __$ModelsResponseCopyWithImpl;
@override @useResult
$Res call({
 String object, List<ModelInfo> data
});




}
/// @nodoc
class __$ModelsResponseCopyWithImpl<$Res>
    implements _$ModelsResponseCopyWith<$Res> {
  __$ModelsResponseCopyWithImpl(this._self, this._then);

  final _ModelsResponse _self;
  final $Res Function(_ModelsResponse) _then;

/// Create a copy of ModelsResponse
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? object = null,Object? data = null,}) {
  return _then(_ModelsResponse(
object: null == object ? _self.object : object // ignore: cast_nullable_to_non_nullable
as String,data: null == data ? _self._data : data // ignore: cast_nullable_to_non_nullable
as List<ModelInfo>,
  ));
}


}


/// @nodoc
mixin _$ModelStatus {

@JsonKey(name: 'model_id') String get modelId;@JsonKey(name: 'loaded') bool get isLoaded;@JsonKey(name: 'engine_type') String? get engineType; Map<String, dynamic> get details;
/// Create a copy of ModelStatus
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ModelStatusCopyWith<ModelStatus> get copyWith => _$ModelStatusCopyWithImpl<ModelStatus>(this as ModelStatus, _$identity);

  /// Serializes this ModelStatus to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as ModelStatus;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ModelStatus&&(identical(other.modelId, _this.modelId) || other.modelId == _this.modelId)&&(identical(other.isLoaded, _this.isLoaded) || other.isLoaded == _this.isLoaded)&&(identical(other.engineType, _this.engineType) || other.engineType == _this.engineType)&&const DeepCollectionEquality().equals(other.details, _this.details));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as ModelStatus;
  return Object.hash(runtimeType,_this.modelId,_this.isLoaded,_this.engineType,const DeepCollectionEquality().hash(_this.details));
}

@override
String toString() {
  final _this = this as ModelStatus;
  return 'ModelStatus(modelId: ${_this.modelId}, isLoaded: ${_this.isLoaded}, engineType: ${_this.engineType}, details: ${_this.details})';
}


}

/// @nodoc
abstract mixin class $ModelStatusCopyWith<$Res>  {
  factory $ModelStatusCopyWith(ModelStatus value, $Res Function(ModelStatus) _then) = _$ModelStatusCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'model_id') String modelId,@JsonKey(name: 'loaded') bool isLoaded,@JsonKey(name: 'engine_type') String? engineType, Map<String, dynamic> details
});




}
/// @nodoc
class _$ModelStatusCopyWithImpl<$Res>
    implements $ModelStatusCopyWith<$Res> {
  _$ModelStatusCopyWithImpl(this._self, this._then);

  final ModelStatus _self;
  final $Res Function(ModelStatus) _then;

/// Create a copy of ModelStatus
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? modelId = null,Object? isLoaded = null,Object? engineType = freezed,Object? details = null,}) {
  return _then(ModelStatus(
modelId: null == modelId ? _self.modelId : modelId // ignore: cast_nullable_to_non_nullable
as String,isLoaded: null == isLoaded ? _self.isLoaded : isLoaded // ignore: cast_nullable_to_non_nullable
as bool,engineType: freezed == engineType ? _self.engineType : engineType // ignore: cast_nullable_to_non_nullable
as String?,details: null == details ? _self.details : details // ignore: cast_nullable_to_non_nullable
as Map<String, dynamic>,
  ));
}

}


/// Adds pattern-matching-related methods to [ModelStatus].
extension ModelStatusPatterns on ModelStatus {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ModelStatus value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ModelStatus() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ModelStatus value)  $default,){
final _that = this;
switch (_that) {
case _ModelStatus():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ModelStatus value)?  $default,){
final _that = this;
switch (_that) {
case _ModelStatus() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'model_id')  String modelId, @JsonKey(name: 'loaded')  bool isLoaded, @JsonKey(name: 'engine_type')  String? engineType,  Map<String, dynamic> details)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ModelStatus() when $default != null:
return $default(_that.modelId,_that.isLoaded,_that.engineType,_that.details);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'model_id')  String modelId, @JsonKey(name: 'loaded')  bool isLoaded, @JsonKey(name: 'engine_type')  String? engineType,  Map<String, dynamic> details)  $default,) {final _that = this;
switch (_that) {
case _ModelStatus():
return $default(_that.modelId,_that.isLoaded,_that.engineType,_that.details);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'model_id')  String modelId, @JsonKey(name: 'loaded')  bool isLoaded, @JsonKey(name: 'engine_type')  String? engineType,  Map<String, dynamic> details)?  $default,) {final _that = this;
switch (_that) {
case _ModelStatus() when $default != null:
return $default(_that.modelId,_that.isLoaded,_that.engineType,_that.details);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ModelStatus implements ModelStatus {
  const _ModelStatus({@JsonKey(name: 'model_id') required this.modelId, @JsonKey(name: 'loaded') this.isLoaded = false, @JsonKey(name: 'engine_type') this.engineType,  Map<String, dynamic> details = const {}}): _details = details;
  factory _ModelStatus.fromJson(Map<String, dynamic> json) => _$ModelStatusFromJson(json);

@override@JsonKey(name: 'model_id') final  String modelId;
@override@JsonKey(name: 'loaded') final  bool isLoaded;
@override@JsonKey(name: 'engine_type') final  String? engineType;
 final  Map<String, dynamic> _details;
@override@JsonKey() Map<String, dynamic> get details {
  if (_details is EqualUnmodifiableMapView) return _details;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableMapView(_details);
}


/// Create a copy of ModelStatus
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ModelStatusCopyWith<_ModelStatus> get copyWith => __$ModelStatusCopyWithImpl<_ModelStatus>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ModelStatusToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _ModelStatus&&(identical(other.modelId, modelId) || other.modelId == modelId)&&(identical(other.isLoaded, isLoaded) || other.isLoaded == isLoaded)&&(identical(other.engineType, engineType) || other.engineType == engineType)&&const DeepCollectionEquality().equals(other.details, _details));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,modelId,isLoaded,engineType,const DeepCollectionEquality().hash(_details));
}

@override
String toString() {
    return 'ModelStatus(modelId: $modelId, isLoaded: $isLoaded, engineType: $engineType, details: $details)';
}


}

/// @nodoc
abstract mixin class _$ModelStatusCopyWith<$Res> implements $ModelStatusCopyWith<$Res> {
  factory _$ModelStatusCopyWith(_ModelStatus value, $Res Function(_ModelStatus) _then) = __$ModelStatusCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'model_id') String modelId,@JsonKey(name: 'loaded') bool isLoaded,@JsonKey(name: 'engine_type') String? engineType, Map<String, dynamic> details
});




}
/// @nodoc
class __$ModelStatusCopyWithImpl<$Res>
    implements _$ModelStatusCopyWith<$Res> {
  __$ModelStatusCopyWithImpl(this._self, this._then);

  final _ModelStatus _self;
  final $Res Function(_ModelStatus) _then;

/// Create a copy of ModelStatus
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? modelId = null,Object? isLoaded = null,Object? engineType = freezed,Object? details = null,}) {
  return _then(_ModelStatus(
modelId: null == modelId ? _self.modelId : modelId // ignore: cast_nullable_to_non_nullable
as String,isLoaded: null == isLoaded ? _self.isLoaded : isLoaded // ignore: cast_nullable_to_non_nullable
as bool,engineType: freezed == engineType ? _self.engineType : engineType // ignore: cast_nullable_to_non_nullable
as String?,details: null == details ? _self._details : details // ignore: cast_nullable_to_non_nullable
as Map<String, dynamic>,
  ));
}


}


/// @nodoc
mixin _$UnloadModelResponse {

 bool get success;@JsonKey(name: 'model_id') String get modelId; String? get message; Map<String, dynamic> get raw;
/// Create a copy of UnloadModelResponse
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$UnloadModelResponseCopyWith<UnloadModelResponse> get copyWith => _$UnloadModelResponseCopyWithImpl<UnloadModelResponse>(this as UnloadModelResponse, _$identity);

  /// Serializes this UnloadModelResponse to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as UnloadModelResponse;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UnloadModelResponse&&(identical(other.success, _this.success) || other.success == _this.success)&&(identical(other.modelId, _this.modelId) || other.modelId == _this.modelId)&&(identical(other.message, _this.message) || other.message == _this.message)&&const DeepCollectionEquality().equals(other.raw, _this.raw));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as UnloadModelResponse;
  return Object.hash(runtimeType,_this.success,_this.modelId,_this.message,const DeepCollectionEquality().hash(_this.raw));
}

@override
String toString() {
  final _this = this as UnloadModelResponse;
  return 'UnloadModelResponse(success: ${_this.success}, modelId: ${_this.modelId}, message: ${_this.message}, raw: ${_this.raw})';
}


}

/// @nodoc
abstract mixin class $UnloadModelResponseCopyWith<$Res>  {
  factory $UnloadModelResponseCopyWith(UnloadModelResponse value, $Res Function(UnloadModelResponse) _then) = _$UnloadModelResponseCopyWithImpl;
@useResult
$Res call({
 bool success,@JsonKey(name: 'model_id') String modelId, String? message, Map<String, dynamic> raw
});




}
/// @nodoc
class _$UnloadModelResponseCopyWithImpl<$Res>
    implements $UnloadModelResponseCopyWith<$Res> {
  _$UnloadModelResponseCopyWithImpl(this._self, this._then);

  final UnloadModelResponse _self;
  final $Res Function(UnloadModelResponse) _then;

/// Create a copy of UnloadModelResponse
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? success = null,Object? modelId = null,Object? message = freezed,Object? raw = null,}) {
  return _then(UnloadModelResponse(
success: null == success ? _self.success : success // ignore: cast_nullable_to_non_nullable
as bool,modelId: null == modelId ? _self.modelId : modelId // ignore: cast_nullable_to_non_nullable
as String,message: freezed == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String?,raw: null == raw ? _self.raw : raw // ignore: cast_nullable_to_non_nullable
as Map<String, dynamic>,
  ));
}

}


/// Adds pattern-matching-related methods to [UnloadModelResponse].
extension UnloadModelResponsePatterns on UnloadModelResponse {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _UnloadModelResponse value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _UnloadModelResponse() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _UnloadModelResponse value)  $default,){
final _that = this;
switch (_that) {
case _UnloadModelResponse():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _UnloadModelResponse value)?  $default,){
final _that = this;
switch (_that) {
case _UnloadModelResponse() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( bool success, @JsonKey(name: 'model_id')  String modelId,  String? message,  Map<String, dynamic> raw)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _UnloadModelResponse() when $default != null:
return $default(_that.success,_that.modelId,_that.message,_that.raw);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( bool success, @JsonKey(name: 'model_id')  String modelId,  String? message,  Map<String, dynamic> raw)  $default,) {final _that = this;
switch (_that) {
case _UnloadModelResponse():
return $default(_that.success,_that.modelId,_that.message,_that.raw);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( bool success, @JsonKey(name: 'model_id')  String modelId,  String? message,  Map<String, dynamic> raw)?  $default,) {final _that = this;
switch (_that) {
case _UnloadModelResponse() when $default != null:
return $default(_that.success,_that.modelId,_that.message,_that.raw);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _UnloadModelResponse implements UnloadModelResponse {
  const _UnloadModelResponse({this.success = true, @JsonKey(name: 'model_id') required this.modelId, this.message,  Map<String, dynamic> raw = const {}}): _raw = raw;
  factory _UnloadModelResponse.fromJson(Map<String, dynamic> json) => _$UnloadModelResponseFromJson(json);

@override@JsonKey() final  bool success;
@override@JsonKey(name: 'model_id') final  String modelId;
@override final  String? message;
 final  Map<String, dynamic> _raw;
@override@JsonKey() Map<String, dynamic> get raw {
  if (_raw is EqualUnmodifiableMapView) return _raw;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableMapView(_raw);
}


/// Create a copy of UnloadModelResponse
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$UnloadModelResponseCopyWith<_UnloadModelResponse> get copyWith => __$UnloadModelResponseCopyWithImpl<_UnloadModelResponse>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$UnloadModelResponseToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _UnloadModelResponse&&(identical(other.success, success) || other.success == success)&&(identical(other.modelId, modelId) || other.modelId == modelId)&&(identical(other.message, message) || other.message == message)&&const DeepCollectionEquality().equals(other.raw, _raw));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,success,modelId,message,const DeepCollectionEquality().hash(_raw));
}

@override
String toString() {
    return 'UnloadModelResponse(success: $success, modelId: $modelId, message: $message, raw: $raw)';
}


}

/// @nodoc
abstract mixin class _$UnloadModelResponseCopyWith<$Res> implements $UnloadModelResponseCopyWith<$Res> {
  factory _$UnloadModelResponseCopyWith(_UnloadModelResponse value, $Res Function(_UnloadModelResponse) _then) = __$UnloadModelResponseCopyWithImpl;
@override @useResult
$Res call({
 bool success,@JsonKey(name: 'model_id') String modelId, String? message, Map<String, dynamic> raw
});




}
/// @nodoc
class __$UnloadModelResponseCopyWithImpl<$Res>
    implements _$UnloadModelResponseCopyWith<$Res> {
  __$UnloadModelResponseCopyWithImpl(this._self, this._then);

  final _UnloadModelResponse _self;
  final $Res Function(_UnloadModelResponse) _then;

/// Create a copy of UnloadModelResponse
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? success = null,Object? modelId = null,Object? message = freezed,Object? raw = null,}) {
  return _then(_UnloadModelResponse(
success: null == success ? _self.success : success // ignore: cast_nullable_to_non_nullable
as bool,modelId: null == modelId ? _self.modelId : modelId // ignore: cast_nullable_to_non_nullable
as String,message: freezed == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String?,raw: null == raw ? _self._raw : raw // ignore: cast_nullable_to_non_nullable
as Map<String, dynamic>,
  ));
}


}

// dart format on
