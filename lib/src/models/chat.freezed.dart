// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'chat.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$TextContentPart {

 String get text; String get type;
/// Create a copy of TextContentPart
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$TextContentPartCopyWith<TextContentPart> get copyWith => _$TextContentPartCopyWithImpl<TextContentPart>(this as TextContentPart, _$identity);

  /// Serializes this TextContentPart to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as TextContentPart;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TextContentPart&&(identical(other.text, _this.text) || other.text == _this.text)&&(identical(other.type, _this.type) || other.type == _this.type));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as TextContentPart;
  return Object.hash(runtimeType,_this.text,_this.type);
}

@override
String toString() {
  final _this = this as TextContentPart;
  return 'TextContentPart(text: ${_this.text}, type: ${_this.type})';
}


}

/// @nodoc
abstract mixin class $TextContentPartCopyWith<$Res>  {
  factory $TextContentPartCopyWith(TextContentPart value, $Res Function(TextContentPart) _then) = _$TextContentPartCopyWithImpl;
@useResult
$Res call({
 String text, String type
});




}
/// @nodoc
class _$TextContentPartCopyWithImpl<$Res>
    implements $TextContentPartCopyWith<$Res> {
  _$TextContentPartCopyWithImpl(this._self, this._then);

  final TextContentPart _self;
  final $Res Function(TextContentPart) _then;

/// Create a copy of TextContentPart
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? text = null,Object? type = null,}) {
  return _then(TextContentPart(
text: null == text ? _self.text : text // ignore: cast_nullable_to_non_nullable
as String,type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [TextContentPart].
extension TextContentPartPatterns on TextContentPart {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _TextContentPart value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _TextContentPart() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _TextContentPart value)  $default,){
final _that = this;
switch (_that) {
case _TextContentPart():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _TextContentPart value)?  $default,){
final _that = this;
switch (_that) {
case _TextContentPart() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String text,  String type)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _TextContentPart() when $default != null:
return $default(_that.text,_that.type);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String text,  String type)  $default,) {final _that = this;
switch (_that) {
case _TextContentPart():
return $default(_that.text,_that.type);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String text,  String type)?  $default,) {final _that = this;
switch (_that) {
case _TextContentPart() when $default != null:
return $default(_that.text,_that.type);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _TextContentPart extends TextContentPart {
  const _TextContentPart({required this.text, this.type = 'text'}): super._();
  factory _TextContentPart.fromJson(Map<String, dynamic> json) => _$TextContentPartFromJson(json);

@override final  String text;
@override@JsonKey() final  String type;

/// Create a copy of TextContentPart
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$TextContentPartCopyWith<_TextContentPart> get copyWith => __$TextContentPartCopyWithImpl<_TextContentPart>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$TextContentPartToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _TextContentPart&&(identical(other.text, text) || other.text == text)&&(identical(other.type, type) || other.type == type));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,text,type);
}

@override
String toString() {
    return 'TextContentPart(text: $text, type: $type)';
}


}

/// @nodoc
abstract mixin class _$TextContentPartCopyWith<$Res> implements $TextContentPartCopyWith<$Res> {
  factory _$TextContentPartCopyWith(_TextContentPart value, $Res Function(_TextContentPart) _then) = __$TextContentPartCopyWithImpl;
@override @useResult
$Res call({
 String text, String type
});




}
/// @nodoc
class __$TextContentPartCopyWithImpl<$Res>
    implements _$TextContentPartCopyWith<$Res> {
  __$TextContentPartCopyWithImpl(this._self, this._then);

  final _TextContentPart _self;
  final $Res Function(_TextContentPart) _then;

/// Create a copy of TextContentPart
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? text = null,Object? type = null,}) {
  return _then(_TextContentPart(
text: null == text ? _self.text : text // ignore: cast_nullable_to_non_nullable
as String,type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc
mixin _$ImageContentPart {

 String get url; String? get detail; String get type;
/// Create a copy of ImageContentPart
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ImageContentPartCopyWith<ImageContentPart> get copyWith => _$ImageContentPartCopyWithImpl<ImageContentPart>(this as ImageContentPart, _$identity);



@override
bool operator ==(Object other) {
  final _this = this as ImageContentPart;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ImageContentPart&&(identical(other.url, _this.url) || other.url == _this.url)&&(identical(other.detail, _this.detail) || other.detail == _this.detail)&&(identical(other.type, _this.type) || other.type == _this.type));
}


@override
int get hashCode {
  final _this = this as ImageContentPart;
  return Object.hash(runtimeType,_this.url,_this.detail,_this.type);
}

@override
String toString() {
  final _this = this as ImageContentPart;
  return 'ImageContentPart(url: ${_this.url}, detail: ${_this.detail}, type: ${_this.type})';
}


}

/// @nodoc
abstract mixin class $ImageContentPartCopyWith<$Res>  {
  factory $ImageContentPartCopyWith(ImageContentPart value, $Res Function(ImageContentPart) _then) = _$ImageContentPartCopyWithImpl;
@useResult
$Res call({
 String url, String? detail, String type
});




}
/// @nodoc
class _$ImageContentPartCopyWithImpl<$Res>
    implements $ImageContentPartCopyWith<$Res> {
  _$ImageContentPartCopyWithImpl(this._self, this._then);

  final ImageContentPart _self;
  final $Res Function(ImageContentPart) _then;

/// Create a copy of ImageContentPart
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? url = null,Object? detail = freezed,Object? type = null,}) {
  return _then(ImageContentPart(
url: null == url ? _self.url : url // ignore: cast_nullable_to_non_nullable
as String,detail: freezed == detail ? _self.detail : detail // ignore: cast_nullable_to_non_nullable
as String?,type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [ImageContentPart].
extension ImageContentPartPatterns on ImageContentPart {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ImageContentPart value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ImageContentPart() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ImageContentPart value)  $default,){
final _that = this;
switch (_that) {
case _ImageContentPart():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ImageContentPart value)?  $default,){
final _that = this;
switch (_that) {
case _ImageContentPart() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String url,  String? detail,  String type)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ImageContentPart() when $default != null:
return $default(_that.url,_that.detail,_that.type);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String url,  String? detail,  String type)  $default,) {final _that = this;
switch (_that) {
case _ImageContentPart():
return $default(_that.url,_that.detail,_that.type);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String url,  String? detail,  String type)?  $default,) {final _that = this;
switch (_that) {
case _ImageContentPart() when $default != null:
return $default(_that.url,_that.detail,_that.type);case _:
  return null;

}
}

}

/// @nodoc


class _ImageContentPart extends ImageContentPart {
  const _ImageContentPart({required this.url, this.detail, this.type = 'image_url'}): super._();
  

@override final  String url;
@override final  String? detail;
@override@JsonKey() final  String type;

/// Create a copy of ImageContentPart
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ImageContentPartCopyWith<_ImageContentPart> get copyWith => __$ImageContentPartCopyWithImpl<_ImageContentPart>(this, _$identity);



@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _ImageContentPart&&(identical(other.url, url) || other.url == url)&&(identical(other.detail, detail) || other.detail == detail)&&(identical(other.type, type) || other.type == type));
}


@override
int get hashCode {
    return Object.hash(runtimeType,url,detail,type);
}

@override
String toString() {
    return 'ImageContentPart(url: $url, detail: $detail, type: $type)';
}


}

/// @nodoc
abstract mixin class _$ImageContentPartCopyWith<$Res> implements $ImageContentPartCopyWith<$Res> {
  factory _$ImageContentPartCopyWith(_ImageContentPart value, $Res Function(_ImageContentPart) _then) = __$ImageContentPartCopyWithImpl;
@override @useResult
$Res call({
 String url, String? detail, String type
});




}
/// @nodoc
class __$ImageContentPartCopyWithImpl<$Res>
    implements _$ImageContentPartCopyWith<$Res> {
  __$ImageContentPartCopyWithImpl(this._self, this._then);

  final _ImageContentPart _self;
  final $Res Function(_ImageContentPart) _then;

/// Create a copy of ImageContentPart
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? url = null,Object? detail = freezed,Object? type = null,}) {
  return _then(_ImageContentPart(
url: null == url ? _self.url : url // ignore: cast_nullable_to_non_nullable
as String,detail: freezed == detail ? _self.detail : detail // ignore: cast_nullable_to_non_nullable
as String?,type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}


/// @nodoc
mixin _$FunctionDefinition {

 String get name; String? get description; Map<String, dynamic>? get parameters;
/// Create a copy of FunctionDefinition
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$FunctionDefinitionCopyWith<FunctionDefinition> get copyWith => _$FunctionDefinitionCopyWithImpl<FunctionDefinition>(this as FunctionDefinition, _$identity);

  /// Serializes this FunctionDefinition to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as FunctionDefinition;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is FunctionDefinition&&(identical(other.name, _this.name) || other.name == _this.name)&&(identical(other.description, _this.description) || other.description == _this.description)&&const DeepCollectionEquality().equals(other.parameters, _this.parameters));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as FunctionDefinition;
  return Object.hash(runtimeType,_this.name,_this.description,const DeepCollectionEquality().hash(_this.parameters));
}

@override
String toString() {
  final _this = this as FunctionDefinition;
  return 'FunctionDefinition(name: ${_this.name}, description: ${_this.description}, parameters: ${_this.parameters})';
}


}

/// @nodoc
abstract mixin class $FunctionDefinitionCopyWith<$Res>  {
  factory $FunctionDefinitionCopyWith(FunctionDefinition value, $Res Function(FunctionDefinition) _then) = _$FunctionDefinitionCopyWithImpl;
@useResult
$Res call({
 String name, String? description, Map<String, dynamic>? parameters
});




}
/// @nodoc
class _$FunctionDefinitionCopyWithImpl<$Res>
    implements $FunctionDefinitionCopyWith<$Res> {
  _$FunctionDefinitionCopyWithImpl(this._self, this._then);

  final FunctionDefinition _self;
  final $Res Function(FunctionDefinition) _then;

/// Create a copy of FunctionDefinition
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? name = null,Object? description = freezed,Object? parameters = freezed,}) {
  return _then(FunctionDefinition(
name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,parameters: freezed == parameters ? _self.parameters : parameters // ignore: cast_nullable_to_non_nullable
as Map<String, dynamic>?,
  ));
}

}


/// Adds pattern-matching-related methods to [FunctionDefinition].
extension FunctionDefinitionPatterns on FunctionDefinition {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _FunctionDefinition value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _FunctionDefinition() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _FunctionDefinition value)  $default,){
final _that = this;
switch (_that) {
case _FunctionDefinition():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _FunctionDefinition value)?  $default,){
final _that = this;
switch (_that) {
case _FunctionDefinition() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String name,  String? description,  Map<String, dynamic>? parameters)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _FunctionDefinition() when $default != null:
return $default(_that.name,_that.description,_that.parameters);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String name,  String? description,  Map<String, dynamic>? parameters)  $default,) {final _that = this;
switch (_that) {
case _FunctionDefinition():
return $default(_that.name,_that.description,_that.parameters);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String name,  String? description,  Map<String, dynamic>? parameters)?  $default,) {final _that = this;
switch (_that) {
case _FunctionDefinition() when $default != null:
return $default(_that.name,_that.description,_that.parameters);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _FunctionDefinition implements FunctionDefinition {
  const _FunctionDefinition({required this.name, this.description,  Map<String, dynamic>? parameters}): _parameters = parameters;
  factory _FunctionDefinition.fromJson(Map<String, dynamic> json) => _$FunctionDefinitionFromJson(json);

@override final  String name;
@override final  String? description;
 final  Map<String, dynamic>? _parameters;
@override Map<String, dynamic>? get parameters {
  final value = _parameters;
  if (value == null) return null;
  if (_parameters is EqualUnmodifiableMapView) return _parameters;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableMapView(value);
}


/// Create a copy of FunctionDefinition
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$FunctionDefinitionCopyWith<_FunctionDefinition> get copyWith => __$FunctionDefinitionCopyWithImpl<_FunctionDefinition>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$FunctionDefinitionToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _FunctionDefinition&&(identical(other.name, name) || other.name == name)&&(identical(other.description, description) || other.description == description)&&const DeepCollectionEquality().equals(other.parameters, _parameters));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,name,description,const DeepCollectionEquality().hash(_parameters));
}

@override
String toString() {
    return 'FunctionDefinition(name: $name, description: $description, parameters: $parameters)';
}


}

/// @nodoc
abstract mixin class _$FunctionDefinitionCopyWith<$Res> implements $FunctionDefinitionCopyWith<$Res> {
  factory _$FunctionDefinitionCopyWith(_FunctionDefinition value, $Res Function(_FunctionDefinition) _then) = __$FunctionDefinitionCopyWithImpl;
@override @useResult
$Res call({
 String name, String? description, Map<String, dynamic>? parameters
});




}
/// @nodoc
class __$FunctionDefinitionCopyWithImpl<$Res>
    implements _$FunctionDefinitionCopyWith<$Res> {
  __$FunctionDefinitionCopyWithImpl(this._self, this._then);

  final _FunctionDefinition _self;
  final $Res Function(_FunctionDefinition) _then;

/// Create a copy of FunctionDefinition
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? name = null,Object? description = freezed,Object? parameters = freezed,}) {
  return _then(_FunctionDefinition(
name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,parameters: freezed == parameters ? _self._parameters : parameters // ignore: cast_nullable_to_non_nullable
as Map<String, dynamic>?,
  ));
}


}


/// @nodoc
mixin _$Tool {

 String get type; FunctionDefinition get function;
/// Create a copy of Tool
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ToolCopyWith<Tool> get copyWith => _$ToolCopyWithImpl<Tool>(this as Tool, _$identity);

  /// Serializes this Tool to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as Tool;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Tool&&(identical(other.type, _this.type) || other.type == _this.type)&&(identical(other.function, _this.function) || other.function == _this.function));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as Tool;
  return Object.hash(runtimeType,_this.type,_this.function);
}

@override
String toString() {
  final _this = this as Tool;
  return 'Tool(type: ${_this.type}, function: ${_this.function})';
}


}

/// @nodoc
abstract mixin class $ToolCopyWith<$Res>  {
  factory $ToolCopyWith(Tool value, $Res Function(Tool) _then) = _$ToolCopyWithImpl;
@useResult
$Res call({
 String type, FunctionDefinition function
});


$FunctionDefinitionCopyWith<$Res> get function;

}
/// @nodoc
class _$ToolCopyWithImpl<$Res>
    implements $ToolCopyWith<$Res> {
  _$ToolCopyWithImpl(this._self, this._then);

  final Tool _self;
  final $Res Function(Tool) _then;

/// Create a copy of Tool
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? type = null,Object? function = null,}) {
  return _then(Tool(
type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as String,function: null == function ? _self.function : function // ignore: cast_nullable_to_non_nullable
as FunctionDefinition,
  ));
}
/// Create a copy of Tool
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$FunctionDefinitionCopyWith<$Res> get function {
  
  return $FunctionDefinitionCopyWith<$Res>(_self.function, (value) {
    return _then(_self.copyWith(function: value));
  });
}
}


/// Adds pattern-matching-related methods to [Tool].
extension ToolPatterns on Tool {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Tool value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Tool() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Tool value)  $default,){
final _that = this;
switch (_that) {
case _Tool():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Tool value)?  $default,){
final _that = this;
switch (_that) {
case _Tool() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String type,  FunctionDefinition function)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Tool() when $default != null:
return $default(_that.type,_that.function);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String type,  FunctionDefinition function)  $default,) {final _that = this;
switch (_that) {
case _Tool():
return $default(_that.type,_that.function);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String type,  FunctionDefinition function)?  $default,) {final _that = this;
switch (_that) {
case _Tool() when $default != null:
return $default(_that.type,_that.function);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _Tool implements Tool {
  const _Tool({this.type = 'function', required this.function});
  factory _Tool.fromJson(Map<String, dynamic> json) => _$ToolFromJson(json);

@override@JsonKey() final  String type;
@override final  FunctionDefinition function;

/// Create a copy of Tool
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ToolCopyWith<_Tool> get copyWith => __$ToolCopyWithImpl<_Tool>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ToolToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _Tool&&(identical(other.type, type) || other.type == type)&&(identical(other.function, function) || other.function == function));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,type,function);
}

@override
String toString() {
    return 'Tool(type: $type, function: $function)';
}


}

/// @nodoc
abstract mixin class _$ToolCopyWith<$Res> implements $ToolCopyWith<$Res> {
  factory _$ToolCopyWith(_Tool value, $Res Function(_Tool) _then) = __$ToolCopyWithImpl;
@override @useResult
$Res call({
 String type, FunctionDefinition function
});


@override $FunctionDefinitionCopyWith<$Res> get function;

}
/// @nodoc
class __$ToolCopyWithImpl<$Res>
    implements _$ToolCopyWith<$Res> {
  __$ToolCopyWithImpl(this._self, this._then);

  final _Tool _self;
  final $Res Function(_Tool) _then;

/// Create a copy of Tool
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? type = null,Object? function = null,}) {
  return _then(_Tool(
type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as String,function: null == function ? _self.function : function // ignore: cast_nullable_to_non_nullable
as FunctionDefinition,
  ));
}

/// Create a copy of Tool
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$FunctionDefinitionCopyWith<$Res> get function {
  
  return $FunctionDefinitionCopyWith<$Res>(_self.function, (value) {
    return _then(_self.copyWith(function: value));
  });
}
}


/// @nodoc
mixin _$FunctionCall {

 String get name; String get arguments;
/// Create a copy of FunctionCall
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$FunctionCallCopyWith<FunctionCall> get copyWith => _$FunctionCallCopyWithImpl<FunctionCall>(this as FunctionCall, _$identity);

  /// Serializes this FunctionCall to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as FunctionCall;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is FunctionCall&&(identical(other.name, _this.name) || other.name == _this.name)&&(identical(other.arguments, _this.arguments) || other.arguments == _this.arguments));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as FunctionCall;
  return Object.hash(runtimeType,_this.name,_this.arguments);
}

@override
String toString() {
  final _this = this as FunctionCall;
  return 'FunctionCall(name: ${_this.name}, arguments: ${_this.arguments})';
}


}

/// @nodoc
abstract mixin class $FunctionCallCopyWith<$Res>  {
  factory $FunctionCallCopyWith(FunctionCall value, $Res Function(FunctionCall) _then) = _$FunctionCallCopyWithImpl;
@useResult
$Res call({
 String name, String arguments
});




}
/// @nodoc
class _$FunctionCallCopyWithImpl<$Res>
    implements $FunctionCallCopyWith<$Res> {
  _$FunctionCallCopyWithImpl(this._self, this._then);

  final FunctionCall _self;
  final $Res Function(FunctionCall) _then;

/// Create a copy of FunctionCall
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? name = null,Object? arguments = null,}) {
  return _then(FunctionCall(
name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,arguments: null == arguments ? _self.arguments : arguments // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [FunctionCall].
extension FunctionCallPatterns on FunctionCall {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _FunctionCall value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _FunctionCall() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _FunctionCall value)  $default,){
final _that = this;
switch (_that) {
case _FunctionCall():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _FunctionCall value)?  $default,){
final _that = this;
switch (_that) {
case _FunctionCall() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String name,  String arguments)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _FunctionCall() when $default != null:
return $default(_that.name,_that.arguments);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String name,  String arguments)  $default,) {final _that = this;
switch (_that) {
case _FunctionCall():
return $default(_that.name,_that.arguments);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String name,  String arguments)?  $default,) {final _that = this;
switch (_that) {
case _FunctionCall() when $default != null:
return $default(_that.name,_that.arguments);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _FunctionCall implements FunctionCall {
  const _FunctionCall({this.name = '', this.arguments = ''});
  factory _FunctionCall.fromJson(Map<String, dynamic> json) => _$FunctionCallFromJson(json);

@override@JsonKey() final  String name;
@override@JsonKey() final  String arguments;

/// Create a copy of FunctionCall
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$FunctionCallCopyWith<_FunctionCall> get copyWith => __$FunctionCallCopyWithImpl<_FunctionCall>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$FunctionCallToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _FunctionCall&&(identical(other.name, name) || other.name == name)&&(identical(other.arguments, arguments) || other.arguments == arguments));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,name,arguments);
}

@override
String toString() {
    return 'FunctionCall(name: $name, arguments: $arguments)';
}


}

/// @nodoc
abstract mixin class _$FunctionCallCopyWith<$Res> implements $FunctionCallCopyWith<$Res> {
  factory _$FunctionCallCopyWith(_FunctionCall value, $Res Function(_FunctionCall) _then) = __$FunctionCallCopyWithImpl;
@override @useResult
$Res call({
 String name, String arguments
});




}
/// @nodoc
class __$FunctionCallCopyWithImpl<$Res>
    implements _$FunctionCallCopyWith<$Res> {
  __$FunctionCallCopyWithImpl(this._self, this._then);

  final _FunctionCall _self;
  final $Res Function(_FunctionCall) _then;

/// Create a copy of FunctionCall
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? name = null,Object? arguments = null,}) {
  return _then(_FunctionCall(
name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,arguments: null == arguments ? _self.arguments : arguments // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}


/// @nodoc
mixin _$ToolCall {

 String? get id; int? get index; String get type; FunctionCall get function;
/// Create a copy of ToolCall
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ToolCallCopyWith<ToolCall> get copyWith => _$ToolCallCopyWithImpl<ToolCall>(this as ToolCall, _$identity);

  /// Serializes this ToolCall to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as ToolCall;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ToolCall&&(identical(other.id, _this.id) || other.id == _this.id)&&(identical(other.index, _this.index) || other.index == _this.index)&&(identical(other.type, _this.type) || other.type == _this.type)&&(identical(other.function, _this.function) || other.function == _this.function));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as ToolCall;
  return Object.hash(runtimeType,_this.id,_this.index,_this.type,_this.function);
}

@override
String toString() {
  final _this = this as ToolCall;
  return 'ToolCall(id: ${_this.id}, index: ${_this.index}, type: ${_this.type}, function: ${_this.function})';
}


}

/// @nodoc
abstract mixin class $ToolCallCopyWith<$Res>  {
  factory $ToolCallCopyWith(ToolCall value, $Res Function(ToolCall) _then) = _$ToolCallCopyWithImpl;
@useResult
$Res call({
 String? id, int? index, String type, FunctionCall function
});


$FunctionCallCopyWith<$Res> get function;

}
/// @nodoc
class _$ToolCallCopyWithImpl<$Res>
    implements $ToolCallCopyWith<$Res> {
  _$ToolCallCopyWithImpl(this._self, this._then);

  final ToolCall _self;
  final $Res Function(ToolCall) _then;

/// Create a copy of ToolCall
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = freezed,Object? index = freezed,Object? type = null,Object? function = null,}) {
  return _then(ToolCall(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String?,index: freezed == index ? _self.index : index // ignore: cast_nullable_to_non_nullable
as int?,type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as String,function: null == function ? _self.function : function // ignore: cast_nullable_to_non_nullable
as FunctionCall,
  ));
}
/// Create a copy of ToolCall
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$FunctionCallCopyWith<$Res> get function {
  
  return $FunctionCallCopyWith<$Res>(_self.function, (value) {
    return _then(_self.copyWith(function: value));
  });
}
}


/// Adds pattern-matching-related methods to [ToolCall].
extension ToolCallPatterns on ToolCall {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ToolCall value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ToolCall() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ToolCall value)  $default,){
final _that = this;
switch (_that) {
case _ToolCall():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ToolCall value)?  $default,){
final _that = this;
switch (_that) {
case _ToolCall() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String? id,  int? index,  String type,  FunctionCall function)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ToolCall() when $default != null:
return $default(_that.id,_that.index,_that.type,_that.function);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String? id,  int? index,  String type,  FunctionCall function)  $default,) {final _that = this;
switch (_that) {
case _ToolCall():
return $default(_that.id,_that.index,_that.type,_that.function);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String? id,  int? index,  String type,  FunctionCall function)?  $default,) {final _that = this;
switch (_that) {
case _ToolCall() when $default != null:
return $default(_that.id,_that.index,_that.type,_that.function);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ToolCall implements ToolCall {
  const _ToolCall({this.id, this.index, this.type = 'function', required this.function});
  factory _ToolCall.fromJson(Map<String, dynamic> json) => _$ToolCallFromJson(json);

@override final  String? id;
@override final  int? index;
@override@JsonKey() final  String type;
@override final  FunctionCall function;

/// Create a copy of ToolCall
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ToolCallCopyWith<_ToolCall> get copyWith => __$ToolCallCopyWithImpl<_ToolCall>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ToolCallToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _ToolCall&&(identical(other.id, id) || other.id == id)&&(identical(other.index, index) || other.index == index)&&(identical(other.type, type) || other.type == type)&&(identical(other.function, function) || other.function == function));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,id,index,type,function);
}

@override
String toString() {
    return 'ToolCall(id: $id, index: $index, type: $type, function: $function)';
}


}

/// @nodoc
abstract mixin class _$ToolCallCopyWith<$Res> implements $ToolCallCopyWith<$Res> {
  factory _$ToolCallCopyWith(_ToolCall value, $Res Function(_ToolCall) _then) = __$ToolCallCopyWithImpl;
@override @useResult
$Res call({
 String? id, int? index, String type, FunctionCall function
});


@override $FunctionCallCopyWith<$Res> get function;

}
/// @nodoc
class __$ToolCallCopyWithImpl<$Res>
    implements _$ToolCallCopyWith<$Res> {
  __$ToolCallCopyWithImpl(this._self, this._then);

  final _ToolCall _self;
  final $Res Function(_ToolCall) _then;

/// Create a copy of ToolCall
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = freezed,Object? index = freezed,Object? type = null,Object? function = null,}) {
  return _then(_ToolCall(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String?,index: freezed == index ? _self.index : index // ignore: cast_nullable_to_non_nullable
as int?,type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as String,function: null == function ? _self.function : function // ignore: cast_nullable_to_non_nullable
as FunctionCall,
  ));
}

/// Create a copy of ToolCall
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$FunctionCallCopyWith<$Res> get function {
  
  return $FunctionCallCopyWith<$Res>(_self.function, (value) {
    return _then(_self.copyWith(function: value));
  });
}
}

/// @nodoc
mixin _$ChatMessage {

/// Message role: "system", "user", "assistant", "tool", or "developer".
 String get role;/// String content or multi-modal list of content parts.
 dynamic get content;/// Reasoning / thinking content extracted from `<think>` blocks (oMLX reasoning models).
@JsonKey(name: 'reasoning_content') String? get reasoningContent;/// Tool calls generated by the model (assistant role).
@JsonKey(name: 'tool_calls') List<ToolCall>? get toolCalls;/// Tool call ID matching the corresponding tool call (tool role).
@JsonKey(name: 'tool_call_id') String? get toolCallId;/// Whether to continue from this message instead of starting a new turn.
 bool? get partial;
/// Create a copy of ChatMessage
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ChatMessageCopyWith<ChatMessage> get copyWith => _$ChatMessageCopyWithImpl<ChatMessage>(this as ChatMessage, _$identity);



@override
bool operator ==(Object other) {
  final _this = this as ChatMessage;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ChatMessage&&(identical(other.role, _this.role) || other.role == _this.role)&&const DeepCollectionEquality().equals(other.content, _this.content)&&(identical(other.reasoningContent, _this.reasoningContent) || other.reasoningContent == _this.reasoningContent)&&const DeepCollectionEquality().equals(other.toolCalls, _this.toolCalls)&&(identical(other.toolCallId, _this.toolCallId) || other.toolCallId == _this.toolCallId)&&(identical(other.partial, _this.partial) || other.partial == _this.partial));
}


@override
int get hashCode {
  final _this = this as ChatMessage;
  return Object.hash(runtimeType,_this.role,const DeepCollectionEquality().hash(_this.content),_this.reasoningContent,const DeepCollectionEquality().hash(_this.toolCalls),_this.toolCallId,_this.partial);
}

@override
String toString() {
  final _this = this as ChatMessage;
  return 'ChatMessage(role: ${_this.role}, content: ${_this.content}, reasoningContent: ${_this.reasoningContent}, toolCalls: ${_this.toolCalls}, toolCallId: ${_this.toolCallId}, partial: ${_this.partial})';
}


}

/// @nodoc
abstract mixin class $ChatMessageCopyWith<$Res>  {
  factory $ChatMessageCopyWith(ChatMessage value, $Res Function(ChatMessage) _then) = _$ChatMessageCopyWithImpl;
@useResult
$Res call({
 String role, dynamic content,@JsonKey(name: 'reasoning_content') String? reasoningContent,@JsonKey(name: 'tool_calls') List<ToolCall>? toolCalls,@JsonKey(name: 'tool_call_id') String? toolCallId, bool? partial
});




}
/// @nodoc
class _$ChatMessageCopyWithImpl<$Res>
    implements $ChatMessageCopyWith<$Res> {
  _$ChatMessageCopyWithImpl(this._self, this._then);

  final ChatMessage _self;
  final $Res Function(ChatMessage) _then;

/// Create a copy of ChatMessage
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? role = null,Object? content = freezed,Object? reasoningContent = freezed,Object? toolCalls = freezed,Object? toolCallId = freezed,Object? partial = freezed,}) {
  return _then(ChatMessage(
role: null == role ? _self.role : role // ignore: cast_nullable_to_non_nullable
as String,content: freezed == content ? _self.content : content // ignore: cast_nullable_to_non_nullable
as dynamic,reasoningContent: freezed == reasoningContent ? _self.reasoningContent : reasoningContent // ignore: cast_nullable_to_non_nullable
as String?,toolCalls: freezed == toolCalls ? _self.toolCalls : toolCalls // ignore: cast_nullable_to_non_nullable
as List<ToolCall>?,toolCallId: freezed == toolCallId ? _self.toolCallId : toolCallId // ignore: cast_nullable_to_non_nullable
as String?,partial: freezed == partial ? _self.partial : partial // ignore: cast_nullable_to_non_nullable
as bool?,
  ));
}

}


/// Adds pattern-matching-related methods to [ChatMessage].
extension ChatMessagePatterns on ChatMessage {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ChatMessage value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ChatMessage() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ChatMessage value)  $default,){
final _that = this;
switch (_that) {
case _ChatMessage():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ChatMessage value)?  $default,){
final _that = this;
switch (_that) {
case _ChatMessage() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String role,  dynamic content, @JsonKey(name: 'reasoning_content')  String? reasoningContent, @JsonKey(name: 'tool_calls')  List<ToolCall>? toolCalls, @JsonKey(name: 'tool_call_id')  String? toolCallId,  bool? partial)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ChatMessage() when $default != null:
return $default(_that.role,_that.content,_that.reasoningContent,_that.toolCalls,_that.toolCallId,_that.partial);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String role,  dynamic content, @JsonKey(name: 'reasoning_content')  String? reasoningContent, @JsonKey(name: 'tool_calls')  List<ToolCall>? toolCalls, @JsonKey(name: 'tool_call_id')  String? toolCallId,  bool? partial)  $default,) {final _that = this;
switch (_that) {
case _ChatMessage():
return $default(_that.role,_that.content,_that.reasoningContent,_that.toolCalls,_that.toolCallId,_that.partial);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String role,  dynamic content, @JsonKey(name: 'reasoning_content')  String? reasoningContent, @JsonKey(name: 'tool_calls')  List<ToolCall>? toolCalls, @JsonKey(name: 'tool_call_id')  String? toolCallId,  bool? partial)?  $default,) {final _that = this;
switch (_that) {
case _ChatMessage() when $default != null:
return $default(_that.role,_that.content,_that.reasoningContent,_that.toolCalls,_that.toolCallId,_that.partial);case _:
  return null;

}
}

}

/// @nodoc


class _ChatMessage extends ChatMessage {
  const _ChatMessage({required this.role, this.content, @JsonKey(name: 'reasoning_content') this.reasoningContent, @JsonKey(name: 'tool_calls')  List<ToolCall>? toolCalls, @JsonKey(name: 'tool_call_id') this.toolCallId, this.partial}): _toolCalls = toolCalls,super._();
  

/// Message role: "system", "user", "assistant", "tool", or "developer".
@override final  String role;
/// String content or multi-modal list of content parts.
@override final  dynamic content;
/// Reasoning / thinking content extracted from `<think>` blocks (oMLX reasoning models).
@override@JsonKey(name: 'reasoning_content') final  String? reasoningContent;
/// Tool calls generated by the model (assistant role).
 final  List<ToolCall>? _toolCalls;
/// Tool calls generated by the model (assistant role).
@override@JsonKey(name: 'tool_calls') List<ToolCall>? get toolCalls {
  final value = _toolCalls;
  if (value == null) return null;
  if (_toolCalls is EqualUnmodifiableListView) return _toolCalls;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

/// Tool call ID matching the corresponding tool call (tool role).
@override@JsonKey(name: 'tool_call_id') final  String? toolCallId;
/// Whether to continue from this message instead of starting a new turn.
@override final  bool? partial;

/// Create a copy of ChatMessage
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ChatMessageCopyWith<_ChatMessage> get copyWith => __$ChatMessageCopyWithImpl<_ChatMessage>(this, _$identity);



@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _ChatMessage&&(identical(other.role, role) || other.role == role)&&const DeepCollectionEquality().equals(other.content, content)&&(identical(other.reasoningContent, reasoningContent) || other.reasoningContent == reasoningContent)&&const DeepCollectionEquality().equals(other.toolCalls, _toolCalls)&&(identical(other.toolCallId, toolCallId) || other.toolCallId == toolCallId)&&(identical(other.partial, partial) || other.partial == partial));
}


@override
int get hashCode {
    return Object.hash(runtimeType,role,const DeepCollectionEquality().hash(content),reasoningContent,const DeepCollectionEquality().hash(_toolCalls),toolCallId,partial);
}

@override
String toString() {
    return 'ChatMessage(role: $role, content: $content, reasoningContent: $reasoningContent, toolCalls: $toolCalls, toolCallId: $toolCallId, partial: $partial)';
}


}

/// @nodoc
abstract mixin class _$ChatMessageCopyWith<$Res> implements $ChatMessageCopyWith<$Res> {
  factory _$ChatMessageCopyWith(_ChatMessage value, $Res Function(_ChatMessage) _then) = __$ChatMessageCopyWithImpl;
@override @useResult
$Res call({
 String role, dynamic content,@JsonKey(name: 'reasoning_content') String? reasoningContent,@JsonKey(name: 'tool_calls') List<ToolCall>? toolCalls,@JsonKey(name: 'tool_call_id') String? toolCallId, bool? partial
});




}
/// @nodoc
class __$ChatMessageCopyWithImpl<$Res>
    implements _$ChatMessageCopyWith<$Res> {
  __$ChatMessageCopyWithImpl(this._self, this._then);

  final _ChatMessage _self;
  final $Res Function(_ChatMessage) _then;

/// Create a copy of ChatMessage
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? role = null,Object? content = freezed,Object? reasoningContent = freezed,Object? toolCalls = freezed,Object? toolCallId = freezed,Object? partial = freezed,}) {
  return _then(_ChatMessage(
role: null == role ? _self.role : role // ignore: cast_nullable_to_non_nullable
as String,content: freezed == content ? _self.content : content // ignore: cast_nullable_to_non_nullable
as dynamic,reasoningContent: freezed == reasoningContent ? _self.reasoningContent : reasoningContent // ignore: cast_nullable_to_non_nullable
as String?,toolCalls: freezed == toolCalls ? _self._toolCalls : toolCalls // ignore: cast_nullable_to_non_nullable
as List<ToolCall>?,toolCallId: freezed == toolCallId ? _self.toolCallId : toolCallId // ignore: cast_nullable_to_non_nullable
as String?,partial: freezed == partial ? _self.partial : partial // ignore: cast_nullable_to_non_nullable
as bool?,
  ));
}


}


/// @nodoc
mixin _$ResponseFormat {

/// Either "text", "json_object", or "json_schema".
 String get type;/// Optional JSON schema configuration when type is "json_schema".
@JsonKey(name: 'json_schema') Map<String, dynamic>? get jsonSchema;
/// Create a copy of ResponseFormat
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ResponseFormatCopyWith<ResponseFormat> get copyWith => _$ResponseFormatCopyWithImpl<ResponseFormat>(this as ResponseFormat, _$identity);

  /// Serializes this ResponseFormat to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as ResponseFormat;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ResponseFormat&&(identical(other.type, _this.type) || other.type == _this.type)&&const DeepCollectionEquality().equals(other.jsonSchema, _this.jsonSchema));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as ResponseFormat;
  return Object.hash(runtimeType,_this.type,const DeepCollectionEquality().hash(_this.jsonSchema));
}

@override
String toString() {
  final _this = this as ResponseFormat;
  return 'ResponseFormat(type: ${_this.type}, jsonSchema: ${_this.jsonSchema})';
}


}

/// @nodoc
abstract mixin class $ResponseFormatCopyWith<$Res>  {
  factory $ResponseFormatCopyWith(ResponseFormat value, $Res Function(ResponseFormat) _then) = _$ResponseFormatCopyWithImpl;
@useResult
$Res call({
 String type,@JsonKey(name: 'json_schema') Map<String, dynamic>? jsonSchema
});




}
/// @nodoc
class _$ResponseFormatCopyWithImpl<$Res>
    implements $ResponseFormatCopyWith<$Res> {
  _$ResponseFormatCopyWithImpl(this._self, this._then);

  final ResponseFormat _self;
  final $Res Function(ResponseFormat) _then;

/// Create a copy of ResponseFormat
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? type = null,Object? jsonSchema = freezed,}) {
  return _then(ResponseFormat(
type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as String,jsonSchema: freezed == jsonSchema ? _self.jsonSchema : jsonSchema // ignore: cast_nullable_to_non_nullable
as Map<String, dynamic>?,
  ));
}

}


/// Adds pattern-matching-related methods to [ResponseFormat].
extension ResponseFormatPatterns on ResponseFormat {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ResponseFormat value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ResponseFormat() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ResponseFormat value)  $default,){
final _that = this;
switch (_that) {
case _ResponseFormat():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ResponseFormat value)?  $default,){
final _that = this;
switch (_that) {
case _ResponseFormat() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String type, @JsonKey(name: 'json_schema')  Map<String, dynamic>? jsonSchema)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ResponseFormat() when $default != null:
return $default(_that.type,_that.jsonSchema);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String type, @JsonKey(name: 'json_schema')  Map<String, dynamic>? jsonSchema)  $default,) {final _that = this;
switch (_that) {
case _ResponseFormat():
return $default(_that.type,_that.jsonSchema);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String type, @JsonKey(name: 'json_schema')  Map<String, dynamic>? jsonSchema)?  $default,) {final _that = this;
switch (_that) {
case _ResponseFormat() when $default != null:
return $default(_that.type,_that.jsonSchema);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ResponseFormat implements ResponseFormat {
  const _ResponseFormat({required this.type, @JsonKey(name: 'json_schema')  Map<String, dynamic>? jsonSchema}): _jsonSchema = jsonSchema;
  factory _ResponseFormat.fromJson(Map<String, dynamic> json) => _$ResponseFormatFromJson(json);

/// Either "text", "json_object", or "json_schema".
@override final  String type;
/// Optional JSON schema configuration when type is "json_schema".
 final  Map<String, dynamic>? _jsonSchema;
/// Optional JSON schema configuration when type is "json_schema".
@override@JsonKey(name: 'json_schema') Map<String, dynamic>? get jsonSchema {
  final value = _jsonSchema;
  if (value == null) return null;
  if (_jsonSchema is EqualUnmodifiableMapView) return _jsonSchema;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableMapView(value);
}


/// Create a copy of ResponseFormat
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ResponseFormatCopyWith<_ResponseFormat> get copyWith => __$ResponseFormatCopyWithImpl<_ResponseFormat>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ResponseFormatToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _ResponseFormat&&(identical(other.type, type) || other.type == type)&&const DeepCollectionEquality().equals(other.jsonSchema, _jsonSchema));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,type,const DeepCollectionEquality().hash(_jsonSchema));
}

@override
String toString() {
    return 'ResponseFormat(type: $type, jsonSchema: $jsonSchema)';
}


}

/// @nodoc
abstract mixin class _$ResponseFormatCopyWith<$Res> implements $ResponseFormatCopyWith<$Res> {
  factory _$ResponseFormatCopyWith(_ResponseFormat value, $Res Function(_ResponseFormat) _then) = __$ResponseFormatCopyWithImpl;
@override @useResult
$Res call({
 String type,@JsonKey(name: 'json_schema') Map<String, dynamic>? jsonSchema
});




}
/// @nodoc
class __$ResponseFormatCopyWithImpl<$Res>
    implements _$ResponseFormatCopyWith<$Res> {
  __$ResponseFormatCopyWithImpl(this._self, this._then);

  final _ResponseFormat _self;
  final $Res Function(_ResponseFormat) _then;

/// Create a copy of ResponseFormat
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? type = null,Object? jsonSchema = freezed,}) {
  return _then(_ResponseFormat(
type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as String,jsonSchema: freezed == jsonSchema ? _self._jsonSchema : jsonSchema // ignore: cast_nullable_to_non_nullable
as Map<String, dynamic>?,
  ));
}


}


/// @nodoc
mixin _$ChatCompletionRequest {

/// Model ID (e.g., 'mlx-community/Qwen2.5-7B-Instruct-4bit').
 String get model;/// List of messages comprising the conversation.
 List<ChatMessage> get messages;/// Sampling temperature (default 1.0).
 double? get temperature;/// Nucleus sampling probability threshold.
@JsonKey(name: 'top_p') double? get topP;/// Top-K sampling cutoff.
@JsonKey(name: 'top_k') int? get topK;/// Repetition penalty factor.
@JsonKey(name: 'repetition_penalty') double? get repetitionPenalty;/// Maximum tokens to generate.
@JsonKey(name: 'max_tokens') int? get maxTokens;/// Whether to stream partial message deltas via SSE.
 bool? get stream;/// List of tools available to the model.
 List<Tool>? get tools;/// Control which tool is called ("auto", "none", "required", or specific function).
@JsonKey(name: 'tool_choice') dynamic get toolChoice;/// Structured output configuration.
@JsonKey(name: 'response_format') ResponseFormat? get responseFormat;/// Stop sequences.
 dynamic get stop;/// User identifier for tracking.
 String? get user;/// Additional oMLX or custom vendor parameters.
 Map<String, dynamic> get extra;
/// Create a copy of ChatCompletionRequest
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ChatCompletionRequestCopyWith<ChatCompletionRequest> get copyWith => _$ChatCompletionRequestCopyWithImpl<ChatCompletionRequest>(this as ChatCompletionRequest, _$identity);

  /// Serializes this ChatCompletionRequest to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as ChatCompletionRequest;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ChatCompletionRequest&&(identical(other.model, _this.model) || other.model == _this.model)&&const DeepCollectionEquality().equals(other.messages, _this.messages)&&(identical(other.temperature, _this.temperature) || other.temperature == _this.temperature)&&(identical(other.topP, _this.topP) || other.topP == _this.topP)&&(identical(other.topK, _this.topK) || other.topK == _this.topK)&&(identical(other.repetitionPenalty, _this.repetitionPenalty) || other.repetitionPenalty == _this.repetitionPenalty)&&(identical(other.maxTokens, _this.maxTokens) || other.maxTokens == _this.maxTokens)&&(identical(other.stream, _this.stream) || other.stream == _this.stream)&&const DeepCollectionEquality().equals(other.tools, _this.tools)&&const DeepCollectionEquality().equals(other.toolChoice, _this.toolChoice)&&(identical(other.responseFormat, _this.responseFormat) || other.responseFormat == _this.responseFormat)&&const DeepCollectionEquality().equals(other.stop, _this.stop)&&(identical(other.user, _this.user) || other.user == _this.user)&&const DeepCollectionEquality().equals(other.extra, _this.extra));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as ChatCompletionRequest;
  return Object.hash(runtimeType,_this.model,const DeepCollectionEquality().hash(_this.messages),_this.temperature,_this.topP,_this.topK,_this.repetitionPenalty,_this.maxTokens,_this.stream,const DeepCollectionEquality().hash(_this.tools),const DeepCollectionEquality().hash(_this.toolChoice),_this.responseFormat,const DeepCollectionEquality().hash(_this.stop),_this.user,const DeepCollectionEquality().hash(_this.extra));
}

@override
String toString() {
  final _this = this as ChatCompletionRequest;
  return 'ChatCompletionRequest(model: ${_this.model}, messages: ${_this.messages}, temperature: ${_this.temperature}, topP: ${_this.topP}, topK: ${_this.topK}, repetitionPenalty: ${_this.repetitionPenalty}, maxTokens: ${_this.maxTokens}, stream: ${_this.stream}, tools: ${_this.tools}, toolChoice: ${_this.toolChoice}, responseFormat: ${_this.responseFormat}, stop: ${_this.stop}, user: ${_this.user}, extra: ${_this.extra})';
}


}

/// @nodoc
abstract mixin class $ChatCompletionRequestCopyWith<$Res>  {
  factory $ChatCompletionRequestCopyWith(ChatCompletionRequest value, $Res Function(ChatCompletionRequest) _then) = _$ChatCompletionRequestCopyWithImpl;
@useResult
$Res call({
 String model, List<ChatMessage> messages, double? temperature,@JsonKey(name: 'top_p') double? topP,@JsonKey(name: 'top_k') int? topK,@JsonKey(name: 'repetition_penalty') double? repetitionPenalty,@JsonKey(name: 'max_tokens') int? maxTokens, bool? stream, List<Tool>? tools,@JsonKey(name: 'tool_choice') dynamic toolChoice,@JsonKey(name: 'response_format') ResponseFormat? responseFormat, dynamic stop, String? user, Map<String, dynamic> extra
});


$ResponseFormatCopyWith<$Res>? get responseFormat;

}
/// @nodoc
class _$ChatCompletionRequestCopyWithImpl<$Res>
    implements $ChatCompletionRequestCopyWith<$Res> {
  _$ChatCompletionRequestCopyWithImpl(this._self, this._then);

  final ChatCompletionRequest _self;
  final $Res Function(ChatCompletionRequest) _then;

/// Create a copy of ChatCompletionRequest
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? model = null,Object? messages = null,Object? temperature = freezed,Object? topP = freezed,Object? topK = freezed,Object? repetitionPenalty = freezed,Object? maxTokens = freezed,Object? stream = freezed,Object? tools = freezed,Object? toolChoice = freezed,Object? responseFormat = freezed,Object? stop = freezed,Object? user = freezed,Object? extra = null,}) {
  return _then(ChatCompletionRequest(
model: null == model ? _self.model : model // ignore: cast_nullable_to_non_nullable
as String,messages: null == messages ? _self.messages : messages // ignore: cast_nullable_to_non_nullable
as List<ChatMessage>,temperature: freezed == temperature ? _self.temperature : temperature // ignore: cast_nullable_to_non_nullable
as double?,topP: freezed == topP ? _self.topP : topP // ignore: cast_nullable_to_non_nullable
as double?,topK: freezed == topK ? _self.topK : topK // ignore: cast_nullable_to_non_nullable
as int?,repetitionPenalty: freezed == repetitionPenalty ? _self.repetitionPenalty : repetitionPenalty // ignore: cast_nullable_to_non_nullable
as double?,maxTokens: freezed == maxTokens ? _self.maxTokens : maxTokens // ignore: cast_nullable_to_non_nullable
as int?,stream: freezed == stream ? _self.stream : stream // ignore: cast_nullable_to_non_nullable
as bool?,tools: freezed == tools ? _self.tools : tools // ignore: cast_nullable_to_non_nullable
as List<Tool>?,toolChoice: freezed == toolChoice ? _self.toolChoice : toolChoice // ignore: cast_nullable_to_non_nullable
as dynamic,responseFormat: freezed == responseFormat ? _self.responseFormat : responseFormat // ignore: cast_nullable_to_non_nullable
as ResponseFormat?,stop: freezed == stop ? _self.stop : stop // ignore: cast_nullable_to_non_nullable
as dynamic,user: freezed == user ? _self.user : user // ignore: cast_nullable_to_non_nullable
as String?,extra: null == extra ? _self.extra : extra // ignore: cast_nullable_to_non_nullable
as Map<String, dynamic>,
  ));
}
/// Create a copy of ChatCompletionRequest
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ResponseFormatCopyWith<$Res>? get responseFormat {
    if (_self.responseFormat == null) {
    return null;
  }

  return $ResponseFormatCopyWith<$Res>(_self.responseFormat!, (value) {
    return _then(_self.copyWith(responseFormat: value));
  });
}
}


/// Adds pattern-matching-related methods to [ChatCompletionRequest].
extension ChatCompletionRequestPatterns on ChatCompletionRequest {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ChatCompletionRequest value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ChatCompletionRequest() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ChatCompletionRequest value)  $default,){
final _that = this;
switch (_that) {
case _ChatCompletionRequest():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ChatCompletionRequest value)?  $default,){
final _that = this;
switch (_that) {
case _ChatCompletionRequest() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String model,  List<ChatMessage> messages,  double? temperature, @JsonKey(name: 'top_p')  double? topP, @JsonKey(name: 'top_k')  int? topK, @JsonKey(name: 'repetition_penalty')  double? repetitionPenalty, @JsonKey(name: 'max_tokens')  int? maxTokens,  bool? stream,  List<Tool>? tools, @JsonKey(name: 'tool_choice')  dynamic toolChoice, @JsonKey(name: 'response_format')  ResponseFormat? responseFormat,  dynamic stop,  String? user,  Map<String, dynamic> extra)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ChatCompletionRequest() when $default != null:
return $default(_that.model,_that.messages,_that.temperature,_that.topP,_that.topK,_that.repetitionPenalty,_that.maxTokens,_that.stream,_that.tools,_that.toolChoice,_that.responseFormat,_that.stop,_that.user,_that.extra);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String model,  List<ChatMessage> messages,  double? temperature, @JsonKey(name: 'top_p')  double? topP, @JsonKey(name: 'top_k')  int? topK, @JsonKey(name: 'repetition_penalty')  double? repetitionPenalty, @JsonKey(name: 'max_tokens')  int? maxTokens,  bool? stream,  List<Tool>? tools, @JsonKey(name: 'tool_choice')  dynamic toolChoice, @JsonKey(name: 'response_format')  ResponseFormat? responseFormat,  dynamic stop,  String? user,  Map<String, dynamic> extra)  $default,) {final _that = this;
switch (_that) {
case _ChatCompletionRequest():
return $default(_that.model,_that.messages,_that.temperature,_that.topP,_that.topK,_that.repetitionPenalty,_that.maxTokens,_that.stream,_that.tools,_that.toolChoice,_that.responseFormat,_that.stop,_that.user,_that.extra);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String model,  List<ChatMessage> messages,  double? temperature, @JsonKey(name: 'top_p')  double? topP, @JsonKey(name: 'top_k')  int? topK, @JsonKey(name: 'repetition_penalty')  double? repetitionPenalty, @JsonKey(name: 'max_tokens')  int? maxTokens,  bool? stream,  List<Tool>? tools, @JsonKey(name: 'tool_choice')  dynamic toolChoice, @JsonKey(name: 'response_format')  ResponseFormat? responseFormat,  dynamic stop,  String? user,  Map<String, dynamic> extra)?  $default,) {final _that = this;
switch (_that) {
case _ChatCompletionRequest() when $default != null:
return $default(_that.model,_that.messages,_that.temperature,_that.topP,_that.topK,_that.repetitionPenalty,_that.maxTokens,_that.stream,_that.tools,_that.toolChoice,_that.responseFormat,_that.stop,_that.user,_that.extra);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ChatCompletionRequest extends ChatCompletionRequest {
  const _ChatCompletionRequest({required this.model, required  List<ChatMessage> messages, this.temperature, @JsonKey(name: 'top_p') this.topP, @JsonKey(name: 'top_k') this.topK, @JsonKey(name: 'repetition_penalty') this.repetitionPenalty, @JsonKey(name: 'max_tokens') this.maxTokens, this.stream,  List<Tool>? tools, @JsonKey(name: 'tool_choice') this.toolChoice, @JsonKey(name: 'response_format') this.responseFormat, this.stop, this.user,  Map<String, dynamic> extra = const {}}): _messages = messages,_tools = tools,_extra = extra,super._();
  factory _ChatCompletionRequest.fromJson(Map<String, dynamic> json) => _$ChatCompletionRequestFromJson(json);

/// Model ID (e.g., 'mlx-community/Qwen2.5-7B-Instruct-4bit').
@override final  String model;
/// List of messages comprising the conversation.
 final  List<ChatMessage> _messages;
/// List of messages comprising the conversation.
@override List<ChatMessage> get messages {
  if (_messages is EqualUnmodifiableListView) return _messages;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_messages);
}

/// Sampling temperature (default 1.0).
@override final  double? temperature;
/// Nucleus sampling probability threshold.
@override@JsonKey(name: 'top_p') final  double? topP;
/// Top-K sampling cutoff.
@override@JsonKey(name: 'top_k') final  int? topK;
/// Repetition penalty factor.
@override@JsonKey(name: 'repetition_penalty') final  double? repetitionPenalty;
/// Maximum tokens to generate.
@override@JsonKey(name: 'max_tokens') final  int? maxTokens;
/// Whether to stream partial message deltas via SSE.
@override final  bool? stream;
/// List of tools available to the model.
 final  List<Tool>? _tools;
/// List of tools available to the model.
@override List<Tool>? get tools {
  final value = _tools;
  if (value == null) return null;
  if (_tools is EqualUnmodifiableListView) return _tools;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

/// Control which tool is called ("auto", "none", "required", or specific function).
@override@JsonKey(name: 'tool_choice') final  dynamic toolChoice;
/// Structured output configuration.
@override@JsonKey(name: 'response_format') final  ResponseFormat? responseFormat;
/// Stop sequences.
@override final  dynamic stop;
/// User identifier for tracking.
@override final  String? user;
/// Additional oMLX or custom vendor parameters.
 final  Map<String, dynamic> _extra;
/// Additional oMLX or custom vendor parameters.
@override@JsonKey() Map<String, dynamic> get extra {
  if (_extra is EqualUnmodifiableMapView) return _extra;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableMapView(_extra);
}


/// Create a copy of ChatCompletionRequest
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ChatCompletionRequestCopyWith<_ChatCompletionRequest> get copyWith => __$ChatCompletionRequestCopyWithImpl<_ChatCompletionRequest>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ChatCompletionRequestToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _ChatCompletionRequest&&(identical(other.model, model) || other.model == model)&&const DeepCollectionEquality().equals(other.messages, _messages)&&(identical(other.temperature, temperature) || other.temperature == temperature)&&(identical(other.topP, topP) || other.topP == topP)&&(identical(other.topK, topK) || other.topK == topK)&&(identical(other.repetitionPenalty, repetitionPenalty) || other.repetitionPenalty == repetitionPenalty)&&(identical(other.maxTokens, maxTokens) || other.maxTokens == maxTokens)&&(identical(other.stream, stream) || other.stream == stream)&&const DeepCollectionEquality().equals(other.tools, _tools)&&const DeepCollectionEquality().equals(other.toolChoice, toolChoice)&&(identical(other.responseFormat, responseFormat) || other.responseFormat == responseFormat)&&const DeepCollectionEquality().equals(other.stop, stop)&&(identical(other.user, user) || other.user == user)&&const DeepCollectionEquality().equals(other.extra, _extra));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,model,const DeepCollectionEquality().hash(_messages),temperature,topP,topK,repetitionPenalty,maxTokens,stream,const DeepCollectionEquality().hash(_tools),const DeepCollectionEquality().hash(toolChoice),responseFormat,const DeepCollectionEquality().hash(stop),user,const DeepCollectionEquality().hash(_extra));
}

@override
String toString() {
    return 'ChatCompletionRequest(model: $model, messages: $messages, temperature: $temperature, topP: $topP, topK: $topK, repetitionPenalty: $repetitionPenalty, maxTokens: $maxTokens, stream: $stream, tools: $tools, toolChoice: $toolChoice, responseFormat: $responseFormat, stop: $stop, user: $user, extra: $extra)';
}


}

/// @nodoc
abstract mixin class _$ChatCompletionRequestCopyWith<$Res> implements $ChatCompletionRequestCopyWith<$Res> {
  factory _$ChatCompletionRequestCopyWith(_ChatCompletionRequest value, $Res Function(_ChatCompletionRequest) _then) = __$ChatCompletionRequestCopyWithImpl;
@override @useResult
$Res call({
 String model, List<ChatMessage> messages, double? temperature,@JsonKey(name: 'top_p') double? topP,@JsonKey(name: 'top_k') int? topK,@JsonKey(name: 'repetition_penalty') double? repetitionPenalty,@JsonKey(name: 'max_tokens') int? maxTokens, bool? stream, List<Tool>? tools,@JsonKey(name: 'tool_choice') dynamic toolChoice,@JsonKey(name: 'response_format') ResponseFormat? responseFormat, dynamic stop, String? user, Map<String, dynamic> extra
});


@override $ResponseFormatCopyWith<$Res>? get responseFormat;

}
/// @nodoc
class __$ChatCompletionRequestCopyWithImpl<$Res>
    implements _$ChatCompletionRequestCopyWith<$Res> {
  __$ChatCompletionRequestCopyWithImpl(this._self, this._then);

  final _ChatCompletionRequest _self;
  final $Res Function(_ChatCompletionRequest) _then;

/// Create a copy of ChatCompletionRequest
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? model = null,Object? messages = null,Object? temperature = freezed,Object? topP = freezed,Object? topK = freezed,Object? repetitionPenalty = freezed,Object? maxTokens = freezed,Object? stream = freezed,Object? tools = freezed,Object? toolChoice = freezed,Object? responseFormat = freezed,Object? stop = freezed,Object? user = freezed,Object? extra = null,}) {
  return _then(_ChatCompletionRequest(
model: null == model ? _self.model : model // ignore: cast_nullable_to_non_nullable
as String,messages: null == messages ? _self._messages : messages // ignore: cast_nullable_to_non_nullable
as List<ChatMessage>,temperature: freezed == temperature ? _self.temperature : temperature // ignore: cast_nullable_to_non_nullable
as double?,topP: freezed == topP ? _self.topP : topP // ignore: cast_nullable_to_non_nullable
as double?,topK: freezed == topK ? _self.topK : topK // ignore: cast_nullable_to_non_nullable
as int?,repetitionPenalty: freezed == repetitionPenalty ? _self.repetitionPenalty : repetitionPenalty // ignore: cast_nullable_to_non_nullable
as double?,maxTokens: freezed == maxTokens ? _self.maxTokens : maxTokens // ignore: cast_nullable_to_non_nullable
as int?,stream: freezed == stream ? _self.stream : stream // ignore: cast_nullable_to_non_nullable
as bool?,tools: freezed == tools ? _self._tools : tools // ignore: cast_nullable_to_non_nullable
as List<Tool>?,toolChoice: freezed == toolChoice ? _self.toolChoice : toolChoice // ignore: cast_nullable_to_non_nullable
as dynamic,responseFormat: freezed == responseFormat ? _self.responseFormat : responseFormat // ignore: cast_nullable_to_non_nullable
as ResponseFormat?,stop: freezed == stop ? _self.stop : stop // ignore: cast_nullable_to_non_nullable
as dynamic,user: freezed == user ? _self.user : user // ignore: cast_nullable_to_non_nullable
as String?,extra: null == extra ? _self._extra : extra // ignore: cast_nullable_to_non_nullable
as Map<String, dynamic>,
  ));
}

/// Create a copy of ChatCompletionRequest
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ResponseFormatCopyWith<$Res>? get responseFormat {
    if (_self.responseFormat == null) {
    return null;
  }

  return $ResponseFormatCopyWith<$Res>(_self.responseFormat!, (value) {
    return _then(_self.copyWith(responseFormat: value));
  });
}
}


/// @nodoc
mixin _$ChatChoice {

 int get index; ChatMessage get message;@JsonKey(name: 'finish_reason') String? get finishReason;
/// Create a copy of ChatChoice
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ChatChoiceCopyWith<ChatChoice> get copyWith => _$ChatChoiceCopyWithImpl<ChatChoice>(this as ChatChoice, _$identity);

  /// Serializes this ChatChoice to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as ChatChoice;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ChatChoice&&(identical(other.index, _this.index) || other.index == _this.index)&&(identical(other.message, _this.message) || other.message == _this.message)&&(identical(other.finishReason, _this.finishReason) || other.finishReason == _this.finishReason));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as ChatChoice;
  return Object.hash(runtimeType,_this.index,_this.message,_this.finishReason);
}

@override
String toString() {
  final _this = this as ChatChoice;
  return 'ChatChoice(index: ${_this.index}, message: ${_this.message}, finishReason: ${_this.finishReason})';
}


}

/// @nodoc
abstract mixin class $ChatChoiceCopyWith<$Res>  {
  factory $ChatChoiceCopyWith(ChatChoice value, $Res Function(ChatChoice) _then) = _$ChatChoiceCopyWithImpl;
@useResult
$Res call({
 int index, ChatMessage message,@JsonKey(name: 'finish_reason') String? finishReason
});


$ChatMessageCopyWith<$Res> get message;

}
/// @nodoc
class _$ChatChoiceCopyWithImpl<$Res>
    implements $ChatChoiceCopyWith<$Res> {
  _$ChatChoiceCopyWithImpl(this._self, this._then);

  final ChatChoice _self;
  final $Res Function(ChatChoice) _then;

/// Create a copy of ChatChoice
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? index = null,Object? message = null,Object? finishReason = freezed,}) {
  return _then(ChatChoice(
index: null == index ? _self.index : index // ignore: cast_nullable_to_non_nullable
as int,message: null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as ChatMessage,finishReason: freezed == finishReason ? _self.finishReason : finishReason // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}
/// Create a copy of ChatChoice
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ChatMessageCopyWith<$Res> get message {
  
  return $ChatMessageCopyWith<$Res>(_self.message, (value) {
    return _then(_self.copyWith(message: value));
  });
}
}


/// Adds pattern-matching-related methods to [ChatChoice].
extension ChatChoicePatterns on ChatChoice {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ChatChoice value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ChatChoice() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ChatChoice value)  $default,){
final _that = this;
switch (_that) {
case _ChatChoice():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ChatChoice value)?  $default,){
final _that = this;
switch (_that) {
case _ChatChoice() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int index,  ChatMessage message, @JsonKey(name: 'finish_reason')  String? finishReason)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ChatChoice() when $default != null:
return $default(_that.index,_that.message,_that.finishReason);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int index,  ChatMessage message, @JsonKey(name: 'finish_reason')  String? finishReason)  $default,) {final _that = this;
switch (_that) {
case _ChatChoice():
return $default(_that.index,_that.message,_that.finishReason);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int index,  ChatMessage message, @JsonKey(name: 'finish_reason')  String? finishReason)?  $default,) {final _that = this;
switch (_that) {
case _ChatChoice() when $default != null:
return $default(_that.index,_that.message,_that.finishReason);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ChatChoice implements ChatChoice {
  const _ChatChoice({this.index = 0, required this.message, @JsonKey(name: 'finish_reason') this.finishReason});
  factory _ChatChoice.fromJson(Map<String, dynamic> json) => _$ChatChoiceFromJson(json);

@override@JsonKey() final  int index;
@override final  ChatMessage message;
@override@JsonKey(name: 'finish_reason') final  String? finishReason;

/// Create a copy of ChatChoice
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ChatChoiceCopyWith<_ChatChoice> get copyWith => __$ChatChoiceCopyWithImpl<_ChatChoice>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ChatChoiceToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _ChatChoice&&(identical(other.index, index) || other.index == index)&&(identical(other.message, message) || other.message == message)&&(identical(other.finishReason, finishReason) || other.finishReason == finishReason));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,index,message,finishReason);
}

@override
String toString() {
    return 'ChatChoice(index: $index, message: $message, finishReason: $finishReason)';
}


}

/// @nodoc
abstract mixin class _$ChatChoiceCopyWith<$Res> implements $ChatChoiceCopyWith<$Res> {
  factory _$ChatChoiceCopyWith(_ChatChoice value, $Res Function(_ChatChoice) _then) = __$ChatChoiceCopyWithImpl;
@override @useResult
$Res call({
 int index, ChatMessage message,@JsonKey(name: 'finish_reason') String? finishReason
});


@override $ChatMessageCopyWith<$Res> get message;

}
/// @nodoc
class __$ChatChoiceCopyWithImpl<$Res>
    implements _$ChatChoiceCopyWith<$Res> {
  __$ChatChoiceCopyWithImpl(this._self, this._then);

  final _ChatChoice _self;
  final $Res Function(_ChatChoice) _then;

/// Create a copy of ChatChoice
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? index = null,Object? message = null,Object? finishReason = freezed,}) {
  return _then(_ChatChoice(
index: null == index ? _self.index : index // ignore: cast_nullable_to_non_nullable
as int,message: null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as ChatMessage,finishReason: freezed == finishReason ? _self.finishReason : finishReason // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

/// Create a copy of ChatChoice
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ChatMessageCopyWith<$Res> get message {
  
  return $ChatMessageCopyWith<$Res>(_self.message, (value) {
    return _then(_self.copyWith(message: value));
  });
}
}


/// @nodoc
mixin _$ChatCompletion {

 String get id; String get object; int get created; String get model; List<ChatChoice> get choices; Usage? get usage;
/// Create a copy of ChatCompletion
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ChatCompletionCopyWith<ChatCompletion> get copyWith => _$ChatCompletionCopyWithImpl<ChatCompletion>(this as ChatCompletion, _$identity);

  /// Serializes this ChatCompletion to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as ChatCompletion;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ChatCompletion&&(identical(other.id, _this.id) || other.id == _this.id)&&(identical(other.object, _this.object) || other.object == _this.object)&&(identical(other.created, _this.created) || other.created == _this.created)&&(identical(other.model, _this.model) || other.model == _this.model)&&const DeepCollectionEquality().equals(other.choices, _this.choices)&&(identical(other.usage, _this.usage) || other.usage == _this.usage));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as ChatCompletion;
  return Object.hash(runtimeType,_this.id,_this.object,_this.created,_this.model,const DeepCollectionEquality().hash(_this.choices),_this.usage);
}

@override
String toString() {
  final _this = this as ChatCompletion;
  return 'ChatCompletion(id: ${_this.id}, object: ${_this.object}, created: ${_this.created}, model: ${_this.model}, choices: ${_this.choices}, usage: ${_this.usage})';
}


}

/// @nodoc
abstract mixin class $ChatCompletionCopyWith<$Res>  {
  factory $ChatCompletionCopyWith(ChatCompletion value, $Res Function(ChatCompletion) _then) = _$ChatCompletionCopyWithImpl;
@useResult
$Res call({
 String id, String object, int created, String model, List<ChatChoice> choices, Usage? usage
});


$UsageCopyWith<$Res>? get usage;

}
/// @nodoc
class _$ChatCompletionCopyWithImpl<$Res>
    implements $ChatCompletionCopyWith<$Res> {
  _$ChatCompletionCopyWithImpl(this._self, this._then);

  final ChatCompletion _self;
  final $Res Function(ChatCompletion) _then;

/// Create a copy of ChatCompletion
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? object = null,Object? created = null,Object? model = null,Object? choices = null,Object? usage = freezed,}) {
  return _then(ChatCompletion(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,object: null == object ? _self.object : object // ignore: cast_nullable_to_non_nullable
as String,created: null == created ? _self.created : created // ignore: cast_nullable_to_non_nullable
as int,model: null == model ? _self.model : model // ignore: cast_nullable_to_non_nullable
as String,choices: null == choices ? _self.choices : choices // ignore: cast_nullable_to_non_nullable
as List<ChatChoice>,usage: freezed == usage ? _self.usage : usage // ignore: cast_nullable_to_non_nullable
as Usage?,
  ));
}
/// Create a copy of ChatCompletion
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


/// Adds pattern-matching-related methods to [ChatCompletion].
extension ChatCompletionPatterns on ChatCompletion {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ChatCompletion value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ChatCompletion() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ChatCompletion value)  $default,){
final _that = this;
switch (_that) {
case _ChatCompletion():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ChatCompletion value)?  $default,){
final _that = this;
switch (_that) {
case _ChatCompletion() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String object,  int created,  String model,  List<ChatChoice> choices,  Usage? usage)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ChatCompletion() when $default != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String object,  int created,  String model,  List<ChatChoice> choices,  Usage? usage)  $default,) {final _that = this;
switch (_that) {
case _ChatCompletion():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String object,  int created,  String model,  List<ChatChoice> choices,  Usage? usage)?  $default,) {final _that = this;
switch (_that) {
case _ChatCompletion() when $default != null:
return $default(_that.id,_that.object,_that.created,_that.model,_that.choices,_that.usage);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ChatCompletion extends ChatCompletion {
  const _ChatCompletion({required this.id, this.object = 'chat.completion', required this.created, required this.model, required  List<ChatChoice> choices, this.usage}): _choices = choices,super._();
  factory _ChatCompletion.fromJson(Map<String, dynamic> json) => _$ChatCompletionFromJson(json);

@override final  String id;
@override@JsonKey() final  String object;
@override final  int created;
@override final  String model;
 final  List<ChatChoice> _choices;
@override List<ChatChoice> get choices {
  if (_choices is EqualUnmodifiableListView) return _choices;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_choices);
}

@override final  Usage? usage;

/// Create a copy of ChatCompletion
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ChatCompletionCopyWith<_ChatCompletion> get copyWith => __$ChatCompletionCopyWithImpl<_ChatCompletion>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ChatCompletionToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _ChatCompletion&&(identical(other.id, id) || other.id == id)&&(identical(other.object, object) || other.object == object)&&(identical(other.created, created) || other.created == created)&&(identical(other.model, model) || other.model == model)&&const DeepCollectionEquality().equals(other.choices, _choices)&&(identical(other.usage, usage) || other.usage == usage));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,id,object,created,model,const DeepCollectionEquality().hash(_choices),usage);
}

@override
String toString() {
    return 'ChatCompletion(id: $id, object: $object, created: $created, model: $model, choices: $choices, usage: $usage)';
}


}

/// @nodoc
abstract mixin class _$ChatCompletionCopyWith<$Res> implements $ChatCompletionCopyWith<$Res> {
  factory _$ChatCompletionCopyWith(_ChatCompletion value, $Res Function(_ChatCompletion) _then) = __$ChatCompletionCopyWithImpl;
@override @useResult
$Res call({
 String id, String object, int created, String model, List<ChatChoice> choices, Usage? usage
});


@override $UsageCopyWith<$Res>? get usage;

}
/// @nodoc
class __$ChatCompletionCopyWithImpl<$Res>
    implements _$ChatCompletionCopyWith<$Res> {
  __$ChatCompletionCopyWithImpl(this._self, this._then);

  final _ChatCompletion _self;
  final $Res Function(_ChatCompletion) _then;

/// Create a copy of ChatCompletion
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? object = null,Object? created = null,Object? model = null,Object? choices = null,Object? usage = freezed,}) {
  return _then(_ChatCompletion(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,object: null == object ? _self.object : object // ignore: cast_nullable_to_non_nullable
as String,created: null == created ? _self.created : created // ignore: cast_nullable_to_non_nullable
as int,model: null == model ? _self.model : model // ignore: cast_nullable_to_non_nullable
as String,choices: null == choices ? _self._choices : choices // ignore: cast_nullable_to_non_nullable
as List<ChatChoice>,usage: freezed == usage ? _self.usage : usage // ignore: cast_nullable_to_non_nullable
as Usage?,
  ));
}

/// Create a copy of ChatCompletion
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


/// @nodoc
mixin _$ChatDelta {

 String? get role; String? get content;@JsonKey(name: 'reasoning_content') String? get reasoningContent;@JsonKey(name: 'tool_calls') List<ToolCall>? get toolCalls;
/// Create a copy of ChatDelta
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ChatDeltaCopyWith<ChatDelta> get copyWith => _$ChatDeltaCopyWithImpl<ChatDelta>(this as ChatDelta, _$identity);

  /// Serializes this ChatDelta to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as ChatDelta;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ChatDelta&&(identical(other.role, _this.role) || other.role == _this.role)&&(identical(other.content, _this.content) || other.content == _this.content)&&(identical(other.reasoningContent, _this.reasoningContent) || other.reasoningContent == _this.reasoningContent)&&const DeepCollectionEquality().equals(other.toolCalls, _this.toolCalls));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as ChatDelta;
  return Object.hash(runtimeType,_this.role,_this.content,_this.reasoningContent,const DeepCollectionEquality().hash(_this.toolCalls));
}

@override
String toString() {
  final _this = this as ChatDelta;
  return 'ChatDelta(role: ${_this.role}, content: ${_this.content}, reasoningContent: ${_this.reasoningContent}, toolCalls: ${_this.toolCalls})';
}


}

/// @nodoc
abstract mixin class $ChatDeltaCopyWith<$Res>  {
  factory $ChatDeltaCopyWith(ChatDelta value, $Res Function(ChatDelta) _then) = _$ChatDeltaCopyWithImpl;
@useResult
$Res call({
 String? role, String? content,@JsonKey(name: 'reasoning_content') String? reasoningContent,@JsonKey(name: 'tool_calls') List<ToolCall>? toolCalls
});




}
/// @nodoc
class _$ChatDeltaCopyWithImpl<$Res>
    implements $ChatDeltaCopyWith<$Res> {
  _$ChatDeltaCopyWithImpl(this._self, this._then);

  final ChatDelta _self;
  final $Res Function(ChatDelta) _then;

/// Create a copy of ChatDelta
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? role = freezed,Object? content = freezed,Object? reasoningContent = freezed,Object? toolCalls = freezed,}) {
  return _then(ChatDelta(
role: freezed == role ? _self.role : role // ignore: cast_nullable_to_non_nullable
as String?,content: freezed == content ? _self.content : content // ignore: cast_nullable_to_non_nullable
as String?,reasoningContent: freezed == reasoningContent ? _self.reasoningContent : reasoningContent // ignore: cast_nullable_to_non_nullable
as String?,toolCalls: freezed == toolCalls ? _self.toolCalls : toolCalls // ignore: cast_nullable_to_non_nullable
as List<ToolCall>?,
  ));
}

}


/// Adds pattern-matching-related methods to [ChatDelta].
extension ChatDeltaPatterns on ChatDelta {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ChatDelta value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ChatDelta() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ChatDelta value)  $default,){
final _that = this;
switch (_that) {
case _ChatDelta():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ChatDelta value)?  $default,){
final _that = this;
switch (_that) {
case _ChatDelta() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String? role,  String? content, @JsonKey(name: 'reasoning_content')  String? reasoningContent, @JsonKey(name: 'tool_calls')  List<ToolCall>? toolCalls)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ChatDelta() when $default != null:
return $default(_that.role,_that.content,_that.reasoningContent,_that.toolCalls);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String? role,  String? content, @JsonKey(name: 'reasoning_content')  String? reasoningContent, @JsonKey(name: 'tool_calls')  List<ToolCall>? toolCalls)  $default,) {final _that = this;
switch (_that) {
case _ChatDelta():
return $default(_that.role,_that.content,_that.reasoningContent,_that.toolCalls);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String? role,  String? content, @JsonKey(name: 'reasoning_content')  String? reasoningContent, @JsonKey(name: 'tool_calls')  List<ToolCall>? toolCalls)?  $default,) {final _that = this;
switch (_that) {
case _ChatDelta() when $default != null:
return $default(_that.role,_that.content,_that.reasoningContent,_that.toolCalls);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ChatDelta implements ChatDelta {
  const _ChatDelta({this.role, this.content, @JsonKey(name: 'reasoning_content') this.reasoningContent, @JsonKey(name: 'tool_calls')  List<ToolCall>? toolCalls}): _toolCalls = toolCalls;
  factory _ChatDelta.fromJson(Map<String, dynamic> json) => _$ChatDeltaFromJson(json);

@override final  String? role;
@override final  String? content;
@override@JsonKey(name: 'reasoning_content') final  String? reasoningContent;
 final  List<ToolCall>? _toolCalls;
@override@JsonKey(name: 'tool_calls') List<ToolCall>? get toolCalls {
  final value = _toolCalls;
  if (value == null) return null;
  if (_toolCalls is EqualUnmodifiableListView) return _toolCalls;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}


/// Create a copy of ChatDelta
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ChatDeltaCopyWith<_ChatDelta> get copyWith => __$ChatDeltaCopyWithImpl<_ChatDelta>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ChatDeltaToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _ChatDelta&&(identical(other.role, role) || other.role == role)&&(identical(other.content, content) || other.content == content)&&(identical(other.reasoningContent, reasoningContent) || other.reasoningContent == reasoningContent)&&const DeepCollectionEquality().equals(other.toolCalls, _toolCalls));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,role,content,reasoningContent,const DeepCollectionEquality().hash(_toolCalls));
}

@override
String toString() {
    return 'ChatDelta(role: $role, content: $content, reasoningContent: $reasoningContent, toolCalls: $toolCalls)';
}


}

/// @nodoc
abstract mixin class _$ChatDeltaCopyWith<$Res> implements $ChatDeltaCopyWith<$Res> {
  factory _$ChatDeltaCopyWith(_ChatDelta value, $Res Function(_ChatDelta) _then) = __$ChatDeltaCopyWithImpl;
@override @useResult
$Res call({
 String? role, String? content,@JsonKey(name: 'reasoning_content') String? reasoningContent,@JsonKey(name: 'tool_calls') List<ToolCall>? toolCalls
});




}
/// @nodoc
class __$ChatDeltaCopyWithImpl<$Res>
    implements _$ChatDeltaCopyWith<$Res> {
  __$ChatDeltaCopyWithImpl(this._self, this._then);

  final _ChatDelta _self;
  final $Res Function(_ChatDelta) _then;

/// Create a copy of ChatDelta
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? role = freezed,Object? content = freezed,Object? reasoningContent = freezed,Object? toolCalls = freezed,}) {
  return _then(_ChatDelta(
role: freezed == role ? _self.role : role // ignore: cast_nullable_to_non_nullable
as String?,content: freezed == content ? _self.content : content // ignore: cast_nullable_to_non_nullable
as String?,reasoningContent: freezed == reasoningContent ? _self.reasoningContent : reasoningContent // ignore: cast_nullable_to_non_nullable
as String?,toolCalls: freezed == toolCalls ? _self._toolCalls : toolCalls // ignore: cast_nullable_to_non_nullable
as List<ToolCall>?,
  ));
}


}


/// @nodoc
mixin _$ChatChunkChoice {

 int get index; ChatDelta get delta;@JsonKey(name: 'finish_reason') String? get finishReason;
/// Create a copy of ChatChunkChoice
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ChatChunkChoiceCopyWith<ChatChunkChoice> get copyWith => _$ChatChunkChoiceCopyWithImpl<ChatChunkChoice>(this as ChatChunkChoice, _$identity);

  /// Serializes this ChatChunkChoice to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as ChatChunkChoice;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ChatChunkChoice&&(identical(other.index, _this.index) || other.index == _this.index)&&(identical(other.delta, _this.delta) || other.delta == _this.delta)&&(identical(other.finishReason, _this.finishReason) || other.finishReason == _this.finishReason));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as ChatChunkChoice;
  return Object.hash(runtimeType,_this.index,_this.delta,_this.finishReason);
}

@override
String toString() {
  final _this = this as ChatChunkChoice;
  return 'ChatChunkChoice(index: ${_this.index}, delta: ${_this.delta}, finishReason: ${_this.finishReason})';
}


}

/// @nodoc
abstract mixin class $ChatChunkChoiceCopyWith<$Res>  {
  factory $ChatChunkChoiceCopyWith(ChatChunkChoice value, $Res Function(ChatChunkChoice) _then) = _$ChatChunkChoiceCopyWithImpl;
@useResult
$Res call({
 int index, ChatDelta delta,@JsonKey(name: 'finish_reason') String? finishReason
});


$ChatDeltaCopyWith<$Res> get delta;

}
/// @nodoc
class _$ChatChunkChoiceCopyWithImpl<$Res>
    implements $ChatChunkChoiceCopyWith<$Res> {
  _$ChatChunkChoiceCopyWithImpl(this._self, this._then);

  final ChatChunkChoice _self;
  final $Res Function(ChatChunkChoice) _then;

/// Create a copy of ChatChunkChoice
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? index = null,Object? delta = null,Object? finishReason = freezed,}) {
  return _then(ChatChunkChoice(
index: null == index ? _self.index : index // ignore: cast_nullable_to_non_nullable
as int,delta: null == delta ? _self.delta : delta // ignore: cast_nullable_to_non_nullable
as ChatDelta,finishReason: freezed == finishReason ? _self.finishReason : finishReason // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}
/// Create a copy of ChatChunkChoice
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ChatDeltaCopyWith<$Res> get delta {
  
  return $ChatDeltaCopyWith<$Res>(_self.delta, (value) {
    return _then(_self.copyWith(delta: value));
  });
}
}


/// Adds pattern-matching-related methods to [ChatChunkChoice].
extension ChatChunkChoicePatterns on ChatChunkChoice {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ChatChunkChoice value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ChatChunkChoice() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ChatChunkChoice value)  $default,){
final _that = this;
switch (_that) {
case _ChatChunkChoice():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ChatChunkChoice value)?  $default,){
final _that = this;
switch (_that) {
case _ChatChunkChoice() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int index,  ChatDelta delta, @JsonKey(name: 'finish_reason')  String? finishReason)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ChatChunkChoice() when $default != null:
return $default(_that.index,_that.delta,_that.finishReason);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int index,  ChatDelta delta, @JsonKey(name: 'finish_reason')  String? finishReason)  $default,) {final _that = this;
switch (_that) {
case _ChatChunkChoice():
return $default(_that.index,_that.delta,_that.finishReason);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int index,  ChatDelta delta, @JsonKey(name: 'finish_reason')  String? finishReason)?  $default,) {final _that = this;
switch (_that) {
case _ChatChunkChoice() when $default != null:
return $default(_that.index,_that.delta,_that.finishReason);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ChatChunkChoice implements ChatChunkChoice {
  const _ChatChunkChoice({this.index = 0, required this.delta, @JsonKey(name: 'finish_reason') this.finishReason});
  factory _ChatChunkChoice.fromJson(Map<String, dynamic> json) => _$ChatChunkChoiceFromJson(json);

@override@JsonKey() final  int index;
@override final  ChatDelta delta;
@override@JsonKey(name: 'finish_reason') final  String? finishReason;

/// Create a copy of ChatChunkChoice
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ChatChunkChoiceCopyWith<_ChatChunkChoice> get copyWith => __$ChatChunkChoiceCopyWithImpl<_ChatChunkChoice>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ChatChunkChoiceToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _ChatChunkChoice&&(identical(other.index, index) || other.index == index)&&(identical(other.delta, delta) || other.delta == delta)&&(identical(other.finishReason, finishReason) || other.finishReason == finishReason));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,index,delta,finishReason);
}

@override
String toString() {
    return 'ChatChunkChoice(index: $index, delta: $delta, finishReason: $finishReason)';
}


}

/// @nodoc
abstract mixin class _$ChatChunkChoiceCopyWith<$Res> implements $ChatChunkChoiceCopyWith<$Res> {
  factory _$ChatChunkChoiceCopyWith(_ChatChunkChoice value, $Res Function(_ChatChunkChoice) _then) = __$ChatChunkChoiceCopyWithImpl;
@override @useResult
$Res call({
 int index, ChatDelta delta,@JsonKey(name: 'finish_reason') String? finishReason
});


@override $ChatDeltaCopyWith<$Res> get delta;

}
/// @nodoc
class __$ChatChunkChoiceCopyWithImpl<$Res>
    implements _$ChatChunkChoiceCopyWith<$Res> {
  __$ChatChunkChoiceCopyWithImpl(this._self, this._then);

  final _ChatChunkChoice _self;
  final $Res Function(_ChatChunkChoice) _then;

/// Create a copy of ChatChunkChoice
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? index = null,Object? delta = null,Object? finishReason = freezed,}) {
  return _then(_ChatChunkChoice(
index: null == index ? _self.index : index // ignore: cast_nullable_to_non_nullable
as int,delta: null == delta ? _self.delta : delta // ignore: cast_nullable_to_non_nullable
as ChatDelta,finishReason: freezed == finishReason ? _self.finishReason : finishReason // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

/// Create a copy of ChatChunkChoice
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ChatDeltaCopyWith<$Res> get delta {
  
  return $ChatDeltaCopyWith<$Res>(_self.delta, (value) {
    return _then(_self.copyWith(delta: value));
  });
}
}


/// @nodoc
mixin _$ChatCompletionChunk {

 String get id; String get object; int get created; String get model; List<ChatChunkChoice> get choices; Usage? get usage;
/// Create a copy of ChatCompletionChunk
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ChatCompletionChunkCopyWith<ChatCompletionChunk> get copyWith => _$ChatCompletionChunkCopyWithImpl<ChatCompletionChunk>(this as ChatCompletionChunk, _$identity);

  /// Serializes this ChatCompletionChunk to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as ChatCompletionChunk;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ChatCompletionChunk&&(identical(other.id, _this.id) || other.id == _this.id)&&(identical(other.object, _this.object) || other.object == _this.object)&&(identical(other.created, _this.created) || other.created == _this.created)&&(identical(other.model, _this.model) || other.model == _this.model)&&const DeepCollectionEquality().equals(other.choices, _this.choices)&&(identical(other.usage, _this.usage) || other.usage == _this.usage));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as ChatCompletionChunk;
  return Object.hash(runtimeType,_this.id,_this.object,_this.created,_this.model,const DeepCollectionEquality().hash(_this.choices),_this.usage);
}

@override
String toString() {
  final _this = this as ChatCompletionChunk;
  return 'ChatCompletionChunk(id: ${_this.id}, object: ${_this.object}, created: ${_this.created}, model: ${_this.model}, choices: ${_this.choices}, usage: ${_this.usage})';
}


}

/// @nodoc
abstract mixin class $ChatCompletionChunkCopyWith<$Res>  {
  factory $ChatCompletionChunkCopyWith(ChatCompletionChunk value, $Res Function(ChatCompletionChunk) _then) = _$ChatCompletionChunkCopyWithImpl;
@useResult
$Res call({
 String id, String object, int created, String model, List<ChatChunkChoice> choices, Usage? usage
});


$UsageCopyWith<$Res>? get usage;

}
/// @nodoc
class _$ChatCompletionChunkCopyWithImpl<$Res>
    implements $ChatCompletionChunkCopyWith<$Res> {
  _$ChatCompletionChunkCopyWithImpl(this._self, this._then);

  final ChatCompletionChunk _self;
  final $Res Function(ChatCompletionChunk) _then;

/// Create a copy of ChatCompletionChunk
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? object = null,Object? created = null,Object? model = null,Object? choices = null,Object? usage = freezed,}) {
  return _then(ChatCompletionChunk(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,object: null == object ? _self.object : object // ignore: cast_nullable_to_non_nullable
as String,created: null == created ? _self.created : created // ignore: cast_nullable_to_non_nullable
as int,model: null == model ? _self.model : model // ignore: cast_nullable_to_non_nullable
as String,choices: null == choices ? _self.choices : choices // ignore: cast_nullable_to_non_nullable
as List<ChatChunkChoice>,usage: freezed == usage ? _self.usage : usage // ignore: cast_nullable_to_non_nullable
as Usage?,
  ));
}
/// Create a copy of ChatCompletionChunk
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


/// Adds pattern-matching-related methods to [ChatCompletionChunk].
extension ChatCompletionChunkPatterns on ChatCompletionChunk {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ChatCompletionChunk value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ChatCompletionChunk() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ChatCompletionChunk value)  $default,){
final _that = this;
switch (_that) {
case _ChatCompletionChunk():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ChatCompletionChunk value)?  $default,){
final _that = this;
switch (_that) {
case _ChatCompletionChunk() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String object,  int created,  String model,  List<ChatChunkChoice> choices,  Usage? usage)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ChatCompletionChunk() when $default != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String object,  int created,  String model,  List<ChatChunkChoice> choices,  Usage? usage)  $default,) {final _that = this;
switch (_that) {
case _ChatCompletionChunk():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String object,  int created,  String model,  List<ChatChunkChoice> choices,  Usage? usage)?  $default,) {final _that = this;
switch (_that) {
case _ChatCompletionChunk() when $default != null:
return $default(_that.id,_that.object,_that.created,_that.model,_that.choices,_that.usage);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ChatCompletionChunk extends ChatCompletionChunk {
  const _ChatCompletionChunk({required this.id, this.object = 'chat.completion.chunk', required this.created, required this.model, required  List<ChatChunkChoice> choices, this.usage}): _choices = choices,super._();
  factory _ChatCompletionChunk.fromJson(Map<String, dynamic> json) => _$ChatCompletionChunkFromJson(json);

@override final  String id;
@override@JsonKey() final  String object;
@override final  int created;
@override final  String model;
 final  List<ChatChunkChoice> _choices;
@override List<ChatChunkChoice> get choices {
  if (_choices is EqualUnmodifiableListView) return _choices;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_choices);
}

@override final  Usage? usage;

/// Create a copy of ChatCompletionChunk
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ChatCompletionChunkCopyWith<_ChatCompletionChunk> get copyWith => __$ChatCompletionChunkCopyWithImpl<_ChatCompletionChunk>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ChatCompletionChunkToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _ChatCompletionChunk&&(identical(other.id, id) || other.id == id)&&(identical(other.object, object) || other.object == object)&&(identical(other.created, created) || other.created == created)&&(identical(other.model, model) || other.model == model)&&const DeepCollectionEquality().equals(other.choices, _choices)&&(identical(other.usage, usage) || other.usage == usage));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,id,object,created,model,const DeepCollectionEquality().hash(_choices),usage);
}

@override
String toString() {
    return 'ChatCompletionChunk(id: $id, object: $object, created: $created, model: $model, choices: $choices, usage: $usage)';
}


}

/// @nodoc
abstract mixin class _$ChatCompletionChunkCopyWith<$Res> implements $ChatCompletionChunkCopyWith<$Res> {
  factory _$ChatCompletionChunkCopyWith(_ChatCompletionChunk value, $Res Function(_ChatCompletionChunk) _then) = __$ChatCompletionChunkCopyWithImpl;
@override @useResult
$Res call({
 String id, String object, int created, String model, List<ChatChunkChoice> choices, Usage? usage
});


@override $UsageCopyWith<$Res>? get usage;

}
/// @nodoc
class __$ChatCompletionChunkCopyWithImpl<$Res>
    implements _$ChatCompletionChunkCopyWith<$Res> {
  __$ChatCompletionChunkCopyWithImpl(this._self, this._then);

  final _ChatCompletionChunk _self;
  final $Res Function(_ChatCompletionChunk) _then;

/// Create a copy of ChatCompletionChunk
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? object = null,Object? created = null,Object? model = null,Object? choices = null,Object? usage = freezed,}) {
  return _then(_ChatCompletionChunk(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,object: null == object ? _self.object : object // ignore: cast_nullable_to_non_nullable
as String,created: null == created ? _self.created : created // ignore: cast_nullable_to_non_nullable
as int,model: null == model ? _self.model : model // ignore: cast_nullable_to_non_nullable
as String,choices: null == choices ? _self._choices : choices // ignore: cast_nullable_to_non_nullable
as List<ChatChunkChoice>,usage: freezed == usage ? _self.usage : usage // ignore: cast_nullable_to_non_nullable
as Usage?,
  ));
}

/// Create a copy of ChatCompletionChunk
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
