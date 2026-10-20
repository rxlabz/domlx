// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'health.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$HealthResponse {

 String get status; String? get version;@JsonKey(name: 'default_model') String? get defaultModel;@JsonKey(name: 'engine_pool') Map<String, dynamic>? get enginePool; Map<String, dynamic>? get mcp;@JsonKey(readValue: _readRaw, includeToJson: false) Map<String, dynamic> get raw;
/// Create a copy of HealthResponse
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$HealthResponseCopyWith<HealthResponse> get copyWith => _$HealthResponseCopyWithImpl<HealthResponse>(this as HealthResponse, _$identity);

  /// Serializes this HealthResponse to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as HealthResponse;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is HealthResponse&&(identical(other.status, _this.status) || other.status == _this.status)&&(identical(other.version, _this.version) || other.version == _this.version)&&(identical(other.defaultModel, _this.defaultModel) || other.defaultModel == _this.defaultModel)&&const DeepCollectionEquality().equals(other.enginePool, _this.enginePool)&&const DeepCollectionEquality().equals(other.mcp, _this.mcp)&&const DeepCollectionEquality().equals(other.raw, _this.raw));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as HealthResponse;
  return Object.hash(runtimeType,_this.status,_this.version,_this.defaultModel,const DeepCollectionEquality().hash(_this.enginePool),const DeepCollectionEquality().hash(_this.mcp),const DeepCollectionEquality().hash(_this.raw));
}

@override
String toString() {
  final _this = this as HealthResponse;
  return 'HealthResponse(status: ${_this.status}, version: ${_this.version}, defaultModel: ${_this.defaultModel}, enginePool: ${_this.enginePool}, mcp: ${_this.mcp}, raw: ${_this.raw})';
}


}

/// @nodoc
abstract mixin class $HealthResponseCopyWith<$Res>  {
  factory $HealthResponseCopyWith(HealthResponse value, $Res Function(HealthResponse) _then) = _$HealthResponseCopyWithImpl;
@useResult
$Res call({
 String status, String? version,@JsonKey(name: 'default_model') String? defaultModel,@JsonKey(name: 'engine_pool') Map<String, dynamic>? enginePool, Map<String, dynamic>? mcp,@JsonKey(readValue: _readRaw, includeToJson: false) Map<String, dynamic> raw
});




}
/// @nodoc
class _$HealthResponseCopyWithImpl<$Res>
    implements $HealthResponseCopyWith<$Res> {
  _$HealthResponseCopyWithImpl(this._self, this._then);

  final HealthResponse _self;
  final $Res Function(HealthResponse) _then;

/// Create a copy of HealthResponse
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? status = null,Object? version = freezed,Object? defaultModel = freezed,Object? enginePool = freezed,Object? mcp = freezed,Object? raw = null,}) {
  return _then(HealthResponse(
status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String,version: freezed == version ? _self.version : version // ignore: cast_nullable_to_non_nullable
as String?,defaultModel: freezed == defaultModel ? _self.defaultModel : defaultModel // ignore: cast_nullable_to_non_nullable
as String?,enginePool: freezed == enginePool ? _self.enginePool : enginePool // ignore: cast_nullable_to_non_nullable
as Map<String, dynamic>?,mcp: freezed == mcp ? _self.mcp : mcp // ignore: cast_nullable_to_non_nullable
as Map<String, dynamic>?,raw: null == raw ? _self.raw : raw // ignore: cast_nullable_to_non_nullable
as Map<String, dynamic>,
  ));
}

}


/// Adds pattern-matching-related methods to [HealthResponse].
extension HealthResponsePatterns on HealthResponse {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _HealthResponse value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _HealthResponse() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _HealthResponse value)  $default,){
final _that = this;
switch (_that) {
case _HealthResponse():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _HealthResponse value)?  $default,){
final _that = this;
switch (_that) {
case _HealthResponse() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String status,  String? version, @JsonKey(name: 'default_model')  String? defaultModel, @JsonKey(name: 'engine_pool')  Map<String, dynamic>? enginePool,  Map<String, dynamic>? mcp, @JsonKey(readValue: _readRaw, includeToJson: false)  Map<String, dynamic> raw)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _HealthResponse() when $default != null:
return $default(_that.status,_that.version,_that.defaultModel,_that.enginePool,_that.mcp,_that.raw);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String status,  String? version, @JsonKey(name: 'default_model')  String? defaultModel, @JsonKey(name: 'engine_pool')  Map<String, dynamic>? enginePool,  Map<String, dynamic>? mcp, @JsonKey(readValue: _readRaw, includeToJson: false)  Map<String, dynamic> raw)  $default,) {final _that = this;
switch (_that) {
case _HealthResponse():
return $default(_that.status,_that.version,_that.defaultModel,_that.enginePool,_that.mcp,_that.raw);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String status,  String? version, @JsonKey(name: 'default_model')  String? defaultModel, @JsonKey(name: 'engine_pool')  Map<String, dynamic>? enginePool,  Map<String, dynamic>? mcp, @JsonKey(readValue: _readRaw, includeToJson: false)  Map<String, dynamic> raw)?  $default,) {final _that = this;
switch (_that) {
case _HealthResponse() when $default != null:
return $default(_that.status,_that.version,_that.defaultModel,_that.enginePool,_that.mcp,_that.raw);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _HealthResponse extends HealthResponse {
  const _HealthResponse({required this.status, this.version, @JsonKey(name: 'default_model') this.defaultModel, @JsonKey(name: 'engine_pool')  Map<String, dynamic>? enginePool,  Map<String, dynamic>? mcp, @JsonKey(readValue: _readRaw, includeToJson: false)  Map<String, dynamic> raw = const {}}): _enginePool = enginePool,_mcp = mcp,_raw = raw,super._();
  factory _HealthResponse.fromJson(Map<String, dynamic> json) => _$HealthResponseFromJson(json);

@override final  String status;
@override final  String? version;
@override@JsonKey(name: 'default_model') final  String? defaultModel;
 final  Map<String, dynamic>? _enginePool;
@override@JsonKey(name: 'engine_pool') Map<String, dynamic>? get enginePool {
  final value = _enginePool;
  if (value == null) return null;
  if (_enginePool is EqualUnmodifiableMapView) return _enginePool;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableMapView(value);
}

 final  Map<String, dynamic>? _mcp;
@override Map<String, dynamic>? get mcp {
  final value = _mcp;
  if (value == null) return null;
  if (_mcp is EqualUnmodifiableMapView) return _mcp;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableMapView(value);
}

 final  Map<String, dynamic> _raw;
@override@JsonKey(readValue: _readRaw, includeToJson: false) Map<String, dynamic> get raw {
  if (_raw is EqualUnmodifiableMapView) return _raw;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableMapView(_raw);
}


/// Create a copy of HealthResponse
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$HealthResponseCopyWith<_HealthResponse> get copyWith => __$HealthResponseCopyWithImpl<_HealthResponse>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$HealthResponseToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _HealthResponse&&(identical(other.status, status) || other.status == status)&&(identical(other.version, version) || other.version == version)&&(identical(other.defaultModel, defaultModel) || other.defaultModel == defaultModel)&&const DeepCollectionEquality().equals(other.enginePool, _enginePool)&&const DeepCollectionEquality().equals(other.mcp, _mcp)&&const DeepCollectionEquality().equals(other.raw, _raw));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,status,version,defaultModel,const DeepCollectionEquality().hash(_enginePool),const DeepCollectionEquality().hash(_mcp),const DeepCollectionEquality().hash(_raw));
}

@override
String toString() {
    return 'HealthResponse(status: $status, version: $version, defaultModel: $defaultModel, enginePool: $enginePool, mcp: $mcp, raw: $raw)';
}


}

/// @nodoc
abstract mixin class _$HealthResponseCopyWith<$Res> implements $HealthResponseCopyWith<$Res> {
  factory _$HealthResponseCopyWith(_HealthResponse value, $Res Function(_HealthResponse) _then) = __$HealthResponseCopyWithImpl;
@override @useResult
$Res call({
 String status, String? version,@JsonKey(name: 'default_model') String? defaultModel,@JsonKey(name: 'engine_pool') Map<String, dynamic>? enginePool, Map<String, dynamic>? mcp,@JsonKey(readValue: _readRaw, includeToJson: false) Map<String, dynamic> raw
});




}
/// @nodoc
class __$HealthResponseCopyWithImpl<$Res>
    implements _$HealthResponseCopyWith<$Res> {
  __$HealthResponseCopyWithImpl(this._self, this._then);

  final _HealthResponse _self;
  final $Res Function(_HealthResponse) _then;

/// Create a copy of HealthResponse
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? status = null,Object? version = freezed,Object? defaultModel = freezed,Object? enginePool = freezed,Object? mcp = freezed,Object? raw = null,}) {
  return _then(_HealthResponse(
status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String,version: freezed == version ? _self.version : version // ignore: cast_nullable_to_non_nullable
as String?,defaultModel: freezed == defaultModel ? _self.defaultModel : defaultModel // ignore: cast_nullable_to_non_nullable
as String?,enginePool: freezed == enginePool ? _self._enginePool : enginePool // ignore: cast_nullable_to_non_nullable
as Map<String, dynamic>?,mcp: freezed == mcp ? _self._mcp : mcp // ignore: cast_nullable_to_non_nullable
as Map<String, dynamic>?,raw: null == raw ? _self._raw : raw // ignore: cast_nullable_to_non_nullable
as Map<String, dynamic>,
  ));
}


}

// dart format on
