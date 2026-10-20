// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'responses_api.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$InputItem {

 String get role; dynamic get content; String? get type; Map<String, dynamic> get extra;
/// Create a copy of InputItem
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$InputItemCopyWith<InputItem> get copyWith => _$InputItemCopyWithImpl<InputItem>(this as InputItem, _$identity);



@override
bool operator ==(Object other) {
  final _this = this as InputItem;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is InputItem&&(identical(other.role, _this.role) || other.role == _this.role)&&const DeepCollectionEquality().equals(other.content, _this.content)&&(identical(other.type, _this.type) || other.type == _this.type)&&const DeepCollectionEquality().equals(other.extra, _this.extra));
}


@override
int get hashCode {
  final _this = this as InputItem;
  return Object.hash(runtimeType,_this.role,const DeepCollectionEquality().hash(_this.content),_this.type,const DeepCollectionEquality().hash(_this.extra));
}

@override
String toString() {
  final _this = this as InputItem;
  return 'InputItem(role: ${_this.role}, content: ${_this.content}, type: ${_this.type}, extra: ${_this.extra})';
}


}

/// @nodoc
abstract mixin class $InputItemCopyWith<$Res>  {
  factory $InputItemCopyWith(InputItem value, $Res Function(InputItem) _then) = _$InputItemCopyWithImpl;
@useResult
$Res call({
 String role, dynamic content, String? type, Map<String, dynamic> extra
});




}
/// @nodoc
class _$InputItemCopyWithImpl<$Res>
    implements $InputItemCopyWith<$Res> {
  _$InputItemCopyWithImpl(this._self, this._then);

  final InputItem _self;
  final $Res Function(InputItem) _then;

/// Create a copy of InputItem
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? role = null,Object? content = freezed,Object? type = freezed,Object? extra = null,}) {
  return _then(InputItem(
role: null == role ? _self.role : role // ignore: cast_nullable_to_non_nullable
as String,content: freezed == content ? _self.content : content // ignore: cast_nullable_to_non_nullable
as dynamic,type: freezed == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as String?,extra: null == extra ? _self.extra : extra // ignore: cast_nullable_to_non_nullable
as Map<String, dynamic>,
  ));
}

}


/// Adds pattern-matching-related methods to [InputItem].
extension InputItemPatterns on InputItem {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _InputItem value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _InputItem() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _InputItem value)  $default,){
final _that = this;
switch (_that) {
case _InputItem():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _InputItem value)?  $default,){
final _that = this;
switch (_that) {
case _InputItem() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String role,  dynamic content,  String? type,  Map<String, dynamic> extra)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _InputItem() when $default != null:
return $default(_that.role,_that.content,_that.type,_that.extra);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String role,  dynamic content,  String? type,  Map<String, dynamic> extra)  $default,) {final _that = this;
switch (_that) {
case _InputItem():
return $default(_that.role,_that.content,_that.type,_that.extra);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String role,  dynamic content,  String? type,  Map<String, dynamic> extra)?  $default,) {final _that = this;
switch (_that) {
case _InputItem() when $default != null:
return $default(_that.role,_that.content,_that.type,_that.extra);case _:
  return null;

}
}

}

/// @nodoc


class _InputItem extends InputItem {
  const _InputItem({required this.role, required this.content, this.type,  Map<String, dynamic> extra = const {}}): _extra = extra,super._();
  

@override final  String role;
@override final  dynamic content;
@override final  String? type;
 final  Map<String, dynamic> _extra;
@override@JsonKey() Map<String, dynamic> get extra {
  if (_extra is EqualUnmodifiableMapView) return _extra;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableMapView(_extra);
}


/// Create a copy of InputItem
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$InputItemCopyWith<_InputItem> get copyWith => __$InputItemCopyWithImpl<_InputItem>(this, _$identity);



@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _InputItem&&(identical(other.role, role) || other.role == role)&&const DeepCollectionEquality().equals(other.content, content)&&(identical(other.type, type) || other.type == type)&&const DeepCollectionEquality().equals(other.extra, _extra));
}


@override
int get hashCode {
    return Object.hash(runtimeType,role,const DeepCollectionEquality().hash(content),type,const DeepCollectionEquality().hash(_extra));
}

@override
String toString() {
    return 'InputItem(role: $role, content: $content, type: $type, extra: $extra)';
}


}

/// @nodoc
abstract mixin class _$InputItemCopyWith<$Res> implements $InputItemCopyWith<$Res> {
  factory _$InputItemCopyWith(_InputItem value, $Res Function(_InputItem) _then) = __$InputItemCopyWithImpl;
@override @useResult
$Res call({
 String role, dynamic content, String? type, Map<String, dynamic> extra
});




}
/// @nodoc
class __$InputItemCopyWithImpl<$Res>
    implements _$InputItemCopyWith<$Res> {
  __$InputItemCopyWithImpl(this._self, this._then);

  final _InputItem _self;
  final $Res Function(_InputItem) _then;

/// Create a copy of InputItem
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? role = null,Object? content = freezed,Object? type = freezed,Object? extra = null,}) {
  return _then(_InputItem(
role: null == role ? _self.role : role // ignore: cast_nullable_to_non_nullable
as String,content: freezed == content ? _self.content : content // ignore: cast_nullable_to_non_nullable
as dynamic,type: freezed == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as String?,extra: null == extra ? _self._extra : extra // ignore: cast_nullable_to_non_nullable
as Map<String, dynamic>,
  ));
}


}

/// @nodoc
mixin _$ResponsesRequest {

 String get model;/// String prompt or list of input items.
 dynamic get input;/// System instructions prepended to the prompt.
 String? get instructions;/// ID of a previous response to continue context from `ResponseStore`.
@JsonKey(name: 'previous_response_id') String? get previousResponseId;/// Whether to persist this response in the `ResponseStore`.
 bool? get store;/// Available tools for function calling.
 List<Tool>? get tools;/// Additional parameters.
 Map<String, dynamic> get extra;
/// Create a copy of ResponsesRequest
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ResponsesRequestCopyWith<ResponsesRequest> get copyWith => _$ResponsesRequestCopyWithImpl<ResponsesRequest>(this as ResponsesRequest, _$identity);



@override
bool operator ==(Object other) {
  final _this = this as ResponsesRequest;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ResponsesRequest&&(identical(other.model, _this.model) || other.model == _this.model)&&const DeepCollectionEquality().equals(other.input, _this.input)&&(identical(other.instructions, _this.instructions) || other.instructions == _this.instructions)&&(identical(other.previousResponseId, _this.previousResponseId) || other.previousResponseId == _this.previousResponseId)&&(identical(other.store, _this.store) || other.store == _this.store)&&const DeepCollectionEquality().equals(other.tools, _this.tools)&&const DeepCollectionEquality().equals(other.extra, _this.extra));
}


@override
int get hashCode {
  final _this = this as ResponsesRequest;
  return Object.hash(runtimeType,_this.model,const DeepCollectionEquality().hash(_this.input),_this.instructions,_this.previousResponseId,_this.store,const DeepCollectionEquality().hash(_this.tools),const DeepCollectionEquality().hash(_this.extra));
}

@override
String toString() {
  final _this = this as ResponsesRequest;
  return 'ResponsesRequest(model: ${_this.model}, input: ${_this.input}, instructions: ${_this.instructions}, previousResponseId: ${_this.previousResponseId}, store: ${_this.store}, tools: ${_this.tools}, extra: ${_this.extra})';
}


}

/// @nodoc
abstract mixin class $ResponsesRequestCopyWith<$Res>  {
  factory $ResponsesRequestCopyWith(ResponsesRequest value, $Res Function(ResponsesRequest) _then) = _$ResponsesRequestCopyWithImpl;
@useResult
$Res call({
 String model, dynamic input, String? instructions,@JsonKey(name: 'previous_response_id') String? previousResponseId, bool? store, List<Tool>? tools, Map<String, dynamic> extra
});




}
/// @nodoc
class _$ResponsesRequestCopyWithImpl<$Res>
    implements $ResponsesRequestCopyWith<$Res> {
  _$ResponsesRequestCopyWithImpl(this._self, this._then);

  final ResponsesRequest _self;
  final $Res Function(ResponsesRequest) _then;

/// Create a copy of ResponsesRequest
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? model = null,Object? input = freezed,Object? instructions = freezed,Object? previousResponseId = freezed,Object? store = freezed,Object? tools = freezed,Object? extra = null,}) {
  return _then(ResponsesRequest(
model: null == model ? _self.model : model // ignore: cast_nullable_to_non_nullable
as String,input: freezed == input ? _self.input : input // ignore: cast_nullable_to_non_nullable
as dynamic,instructions: freezed == instructions ? _self.instructions : instructions // ignore: cast_nullable_to_non_nullable
as String?,previousResponseId: freezed == previousResponseId ? _self.previousResponseId : previousResponseId // ignore: cast_nullable_to_non_nullable
as String?,store: freezed == store ? _self.store : store // ignore: cast_nullable_to_non_nullable
as bool?,tools: freezed == tools ? _self.tools : tools // ignore: cast_nullable_to_non_nullable
as List<Tool>?,extra: null == extra ? _self.extra : extra // ignore: cast_nullable_to_non_nullable
as Map<String, dynamic>,
  ));
}

}


/// Adds pattern-matching-related methods to [ResponsesRequest].
extension ResponsesRequestPatterns on ResponsesRequest {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ResponsesRequest value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ResponsesRequest() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ResponsesRequest value)  $default,){
final _that = this;
switch (_that) {
case _ResponsesRequest():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ResponsesRequest value)?  $default,){
final _that = this;
switch (_that) {
case _ResponsesRequest() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String model,  dynamic input,  String? instructions, @JsonKey(name: 'previous_response_id')  String? previousResponseId,  bool? store,  List<Tool>? tools,  Map<String, dynamic> extra)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ResponsesRequest() when $default != null:
return $default(_that.model,_that.input,_that.instructions,_that.previousResponseId,_that.store,_that.tools,_that.extra);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String model,  dynamic input,  String? instructions, @JsonKey(name: 'previous_response_id')  String? previousResponseId,  bool? store,  List<Tool>? tools,  Map<String, dynamic> extra)  $default,) {final _that = this;
switch (_that) {
case _ResponsesRequest():
return $default(_that.model,_that.input,_that.instructions,_that.previousResponseId,_that.store,_that.tools,_that.extra);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String model,  dynamic input,  String? instructions, @JsonKey(name: 'previous_response_id')  String? previousResponseId,  bool? store,  List<Tool>? tools,  Map<String, dynamic> extra)?  $default,) {final _that = this;
switch (_that) {
case _ResponsesRequest() when $default != null:
return $default(_that.model,_that.input,_that.instructions,_that.previousResponseId,_that.store,_that.tools,_that.extra);case _:
  return null;

}
}

}

/// @nodoc


class _ResponsesRequest extends ResponsesRequest {
  const _ResponsesRequest({required this.model, required this.input, this.instructions, @JsonKey(name: 'previous_response_id') this.previousResponseId, this.store,  List<Tool>? tools,  Map<String, dynamic> extra = const {}}): _tools = tools,_extra = extra,super._();
  

@override final  String model;
/// String prompt or list of input items.
@override final  dynamic input;
/// System instructions prepended to the prompt.
@override final  String? instructions;
/// ID of a previous response to continue context from `ResponseStore`.
@override@JsonKey(name: 'previous_response_id') final  String? previousResponseId;
/// Whether to persist this response in the `ResponseStore`.
@override final  bool? store;
/// Available tools for function calling.
 final  List<Tool>? _tools;
/// Available tools for function calling.
@override List<Tool>? get tools {
  final value = _tools;
  if (value == null) return null;
  if (_tools is EqualUnmodifiableListView) return _tools;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

/// Additional parameters.
 final  Map<String, dynamic> _extra;
/// Additional parameters.
@override@JsonKey() Map<String, dynamic> get extra {
  if (_extra is EqualUnmodifiableMapView) return _extra;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableMapView(_extra);
}


/// Create a copy of ResponsesRequest
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ResponsesRequestCopyWith<_ResponsesRequest> get copyWith => __$ResponsesRequestCopyWithImpl<_ResponsesRequest>(this, _$identity);



@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _ResponsesRequest&&(identical(other.model, model) || other.model == model)&&const DeepCollectionEquality().equals(other.input, input)&&(identical(other.instructions, instructions) || other.instructions == instructions)&&(identical(other.previousResponseId, previousResponseId) || other.previousResponseId == previousResponseId)&&(identical(other.store, store) || other.store == store)&&const DeepCollectionEquality().equals(other.tools, _tools)&&const DeepCollectionEquality().equals(other.extra, _extra));
}


@override
int get hashCode {
    return Object.hash(runtimeType,model,const DeepCollectionEquality().hash(input),instructions,previousResponseId,store,const DeepCollectionEquality().hash(_tools),const DeepCollectionEquality().hash(_extra));
}

@override
String toString() {
    return 'ResponsesRequest(model: $model, input: $input, instructions: $instructions, previousResponseId: $previousResponseId, store: $store, tools: $tools, extra: $extra)';
}


}

/// @nodoc
abstract mixin class _$ResponsesRequestCopyWith<$Res> implements $ResponsesRequestCopyWith<$Res> {
  factory _$ResponsesRequestCopyWith(_ResponsesRequest value, $Res Function(_ResponsesRequest) _then) = __$ResponsesRequestCopyWithImpl;
@override @useResult
$Res call({
 String model, dynamic input, String? instructions,@JsonKey(name: 'previous_response_id') String? previousResponseId, bool? store, List<Tool>? tools, Map<String, dynamic> extra
});




}
/// @nodoc
class __$ResponsesRequestCopyWithImpl<$Res>
    implements _$ResponsesRequestCopyWith<$Res> {
  __$ResponsesRequestCopyWithImpl(this._self, this._then);

  final _ResponsesRequest _self;
  final $Res Function(_ResponsesRequest) _then;

/// Create a copy of ResponsesRequest
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? model = null,Object? input = freezed,Object? instructions = freezed,Object? previousResponseId = freezed,Object? store = freezed,Object? tools = freezed,Object? extra = null,}) {
  return _then(_ResponsesRequest(
model: null == model ? _self.model : model // ignore: cast_nullable_to_non_nullable
as String,input: freezed == input ? _self.input : input // ignore: cast_nullable_to_non_nullable
as dynamic,instructions: freezed == instructions ? _self.instructions : instructions // ignore: cast_nullable_to_non_nullable
as String?,previousResponseId: freezed == previousResponseId ? _self.previousResponseId : previousResponseId // ignore: cast_nullable_to_non_nullable
as String?,store: freezed == store ? _self.store : store // ignore: cast_nullable_to_non_nullable
as bool?,tools: freezed == tools ? _self._tools : tools // ignore: cast_nullable_to_non_nullable
as List<Tool>?,extra: null == extra ? _self._extra : extra // ignore: cast_nullable_to_non_nullable
as Map<String, dynamic>,
  ));
}


}

/// @nodoc
mixin _$ResponseOutputItem {

 String get id; String get type; String get role; dynamic get content; Map<String, dynamic> get extra;
/// Create a copy of ResponseOutputItem
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ResponseOutputItemCopyWith<ResponseOutputItem> get copyWith => _$ResponseOutputItemCopyWithImpl<ResponseOutputItem>(this as ResponseOutputItem, _$identity);



@override
bool operator ==(Object other) {
  final _this = this as ResponseOutputItem;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ResponseOutputItem&&(identical(other.id, _this.id) || other.id == _this.id)&&(identical(other.type, _this.type) || other.type == _this.type)&&(identical(other.role, _this.role) || other.role == _this.role)&&const DeepCollectionEquality().equals(other.content, _this.content)&&const DeepCollectionEquality().equals(other.extra, _this.extra));
}


@override
int get hashCode {
  final _this = this as ResponseOutputItem;
  return Object.hash(runtimeType,_this.id,_this.type,_this.role,const DeepCollectionEquality().hash(_this.content),const DeepCollectionEquality().hash(_this.extra));
}

@override
String toString() {
  final _this = this as ResponseOutputItem;
  return 'ResponseOutputItem(id: ${_this.id}, type: ${_this.type}, role: ${_this.role}, content: ${_this.content}, extra: ${_this.extra})';
}


}

/// @nodoc
abstract mixin class $ResponseOutputItemCopyWith<$Res>  {
  factory $ResponseOutputItemCopyWith(ResponseOutputItem value, $Res Function(ResponseOutputItem) _then) = _$ResponseOutputItemCopyWithImpl;
@useResult
$Res call({
 String id, String type, String role, dynamic content, Map<String, dynamic> extra
});




}
/// @nodoc
class _$ResponseOutputItemCopyWithImpl<$Res>
    implements $ResponseOutputItemCopyWith<$Res> {
  _$ResponseOutputItemCopyWithImpl(this._self, this._then);

  final ResponseOutputItem _self;
  final $Res Function(ResponseOutputItem) _then;

/// Create a copy of ResponseOutputItem
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? type = null,Object? role = null,Object? content = freezed,Object? extra = null,}) {
  return _then(ResponseOutputItem(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as String,role: null == role ? _self.role : role // ignore: cast_nullable_to_non_nullable
as String,content: freezed == content ? _self.content : content // ignore: cast_nullable_to_non_nullable
as dynamic,extra: null == extra ? _self.extra : extra // ignore: cast_nullable_to_non_nullable
as Map<String, dynamic>,
  ));
}

}


/// Adds pattern-matching-related methods to [ResponseOutputItem].
extension ResponseOutputItemPatterns on ResponseOutputItem {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ResponseOutputItem value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ResponseOutputItem() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ResponseOutputItem value)  $default,){
final _that = this;
switch (_that) {
case _ResponseOutputItem():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ResponseOutputItem value)?  $default,){
final _that = this;
switch (_that) {
case _ResponseOutputItem() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String type,  String role,  dynamic content,  Map<String, dynamic> extra)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ResponseOutputItem() when $default != null:
return $default(_that.id,_that.type,_that.role,_that.content,_that.extra);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String type,  String role,  dynamic content,  Map<String, dynamic> extra)  $default,) {final _that = this;
switch (_that) {
case _ResponseOutputItem():
return $default(_that.id,_that.type,_that.role,_that.content,_that.extra);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String type,  String role,  dynamic content,  Map<String, dynamic> extra)?  $default,) {final _that = this;
switch (_that) {
case _ResponseOutputItem() when $default != null:
return $default(_that.id,_that.type,_that.role,_that.content,_that.extra);case _:
  return null;

}
}

}

/// @nodoc


class _ResponseOutputItem extends ResponseOutputItem {
  const _ResponseOutputItem({required this.id, this.type = 'message', this.role = 'assistant', this.content,  Map<String, dynamic> extra = const {}}): _extra = extra,super._();
  

@override final  String id;
@override@JsonKey() final  String type;
@override@JsonKey() final  String role;
@override final  dynamic content;
 final  Map<String, dynamic> _extra;
@override@JsonKey() Map<String, dynamic> get extra {
  if (_extra is EqualUnmodifiableMapView) return _extra;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableMapView(_extra);
}


/// Create a copy of ResponseOutputItem
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ResponseOutputItemCopyWith<_ResponseOutputItem> get copyWith => __$ResponseOutputItemCopyWithImpl<_ResponseOutputItem>(this, _$identity);



@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _ResponseOutputItem&&(identical(other.id, id) || other.id == id)&&(identical(other.type, type) || other.type == type)&&(identical(other.role, role) || other.role == role)&&const DeepCollectionEquality().equals(other.content, content)&&const DeepCollectionEquality().equals(other.extra, _extra));
}


@override
int get hashCode {
    return Object.hash(runtimeType,id,type,role,const DeepCollectionEquality().hash(content),const DeepCollectionEquality().hash(_extra));
}

@override
String toString() {
    return 'ResponseOutputItem(id: $id, type: $type, role: $role, content: $content, extra: $extra)';
}


}

/// @nodoc
abstract mixin class _$ResponseOutputItemCopyWith<$Res> implements $ResponseOutputItemCopyWith<$Res> {
  factory _$ResponseOutputItemCopyWith(_ResponseOutputItem value, $Res Function(_ResponseOutputItem) _then) = __$ResponseOutputItemCopyWithImpl;
@override @useResult
$Res call({
 String id, String type, String role, dynamic content, Map<String, dynamic> extra
});




}
/// @nodoc
class __$ResponseOutputItemCopyWithImpl<$Res>
    implements _$ResponseOutputItemCopyWith<$Res> {
  __$ResponseOutputItemCopyWithImpl(this._self, this._then);

  final _ResponseOutputItem _self;
  final $Res Function(_ResponseOutputItem) _then;

/// Create a copy of ResponseOutputItem
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? type = null,Object? role = null,Object? content = freezed,Object? extra = null,}) {
  return _then(_ResponseOutputItem(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as String,role: null == role ? _self.role : role // ignore: cast_nullable_to_non_nullable
as String,content: freezed == content ? _self.content : content // ignore: cast_nullable_to_non_nullable
as dynamic,extra: null == extra ? _self._extra : extra // ignore: cast_nullable_to_non_nullable
as Map<String, dynamic>,
  ));
}


}


/// @nodoc
mixin _$ResponsesResponse {

 String get id; String get object; int get created; String get model; String get status; List<ResponseOutputItem> get output;@JsonKey(name: 'output_text') String? get outputText; Usage? get usage; Map<String, dynamic> get raw;
/// Create a copy of ResponsesResponse
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ResponsesResponseCopyWith<ResponsesResponse> get copyWith => _$ResponsesResponseCopyWithImpl<ResponsesResponse>(this as ResponsesResponse, _$identity);

  /// Serializes this ResponsesResponse to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as ResponsesResponse;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ResponsesResponse&&(identical(other.id, _this.id) || other.id == _this.id)&&(identical(other.object, _this.object) || other.object == _this.object)&&(identical(other.created, _this.created) || other.created == _this.created)&&(identical(other.model, _this.model) || other.model == _this.model)&&(identical(other.status, _this.status) || other.status == _this.status)&&const DeepCollectionEquality().equals(other.output, _this.output)&&(identical(other.outputText, _this.outputText) || other.outputText == _this.outputText)&&(identical(other.usage, _this.usage) || other.usage == _this.usage)&&const DeepCollectionEquality().equals(other.raw, _this.raw));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as ResponsesResponse;
  return Object.hash(runtimeType,_this.id,_this.object,_this.created,_this.model,_this.status,const DeepCollectionEquality().hash(_this.output),_this.outputText,_this.usage,const DeepCollectionEquality().hash(_this.raw));
}

@override
String toString() {
  final _this = this as ResponsesResponse;
  return 'ResponsesResponse(id: ${_this.id}, object: ${_this.object}, created: ${_this.created}, model: ${_this.model}, status: ${_this.status}, output: ${_this.output}, outputText: ${_this.outputText}, usage: ${_this.usage}, raw: ${_this.raw})';
}


}

/// @nodoc
abstract mixin class $ResponsesResponseCopyWith<$Res>  {
  factory $ResponsesResponseCopyWith(ResponsesResponse value, $Res Function(ResponsesResponse) _then) = _$ResponsesResponseCopyWithImpl;
@useResult
$Res call({
 String id, String object, int created, String model, String status, List<ResponseOutputItem> output,@JsonKey(name: 'output_text') String? outputText, Usage? usage, Map<String, dynamic> raw
});


$UsageCopyWith<$Res>? get usage;

}
/// @nodoc
class _$ResponsesResponseCopyWithImpl<$Res>
    implements $ResponsesResponseCopyWith<$Res> {
  _$ResponsesResponseCopyWithImpl(this._self, this._then);

  final ResponsesResponse _self;
  final $Res Function(ResponsesResponse) _then;

/// Create a copy of ResponsesResponse
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? object = null,Object? created = null,Object? model = null,Object? status = null,Object? output = null,Object? outputText = freezed,Object? usage = freezed,Object? raw = null,}) {
  return _then(ResponsesResponse(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,object: null == object ? _self.object : object // ignore: cast_nullable_to_non_nullable
as String,created: null == created ? _self.created : created // ignore: cast_nullable_to_non_nullable
as int,model: null == model ? _self.model : model // ignore: cast_nullable_to_non_nullable
as String,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String,output: null == output ? _self.output : output // ignore: cast_nullable_to_non_nullable
as List<ResponseOutputItem>,outputText: freezed == outputText ? _self.outputText : outputText // ignore: cast_nullable_to_non_nullable
as String?,usage: freezed == usage ? _self.usage : usage // ignore: cast_nullable_to_non_nullable
as Usage?,raw: null == raw ? _self.raw : raw // ignore: cast_nullable_to_non_nullable
as Map<String, dynamic>,
  ));
}
/// Create a copy of ResponsesResponse
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


/// Adds pattern-matching-related methods to [ResponsesResponse].
extension ResponsesResponsePatterns on ResponsesResponse {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ResponsesResponse value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ResponsesResponse() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ResponsesResponse value)  $default,){
final _that = this;
switch (_that) {
case _ResponsesResponse():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ResponsesResponse value)?  $default,){
final _that = this;
switch (_that) {
case _ResponsesResponse() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String object,  int created,  String model,  String status,  List<ResponseOutputItem> output, @JsonKey(name: 'output_text')  String? outputText,  Usage? usage,  Map<String, dynamic> raw)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ResponsesResponse() when $default != null:
return $default(_that.id,_that.object,_that.created,_that.model,_that.status,_that.output,_that.outputText,_that.usage,_that.raw);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String object,  int created,  String model,  String status,  List<ResponseOutputItem> output, @JsonKey(name: 'output_text')  String? outputText,  Usage? usage,  Map<String, dynamic> raw)  $default,) {final _that = this;
switch (_that) {
case _ResponsesResponse():
return $default(_that.id,_that.object,_that.created,_that.model,_that.status,_that.output,_that.outputText,_that.usage,_that.raw);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String object,  int created,  String model,  String status,  List<ResponseOutputItem> output, @JsonKey(name: 'output_text')  String? outputText,  Usage? usage,  Map<String, dynamic> raw)?  $default,) {final _that = this;
switch (_that) {
case _ResponsesResponse() when $default != null:
return $default(_that.id,_that.object,_that.created,_that.model,_that.status,_that.output,_that.outputText,_that.usage,_that.raw);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ResponsesResponse implements ResponsesResponse {
  const _ResponsesResponse({required this.id, this.object = 'response', required this.created, required this.model, this.status = 'completed', required  List<ResponseOutputItem> output, @JsonKey(name: 'output_text') this.outputText, this.usage,  Map<String, dynamic> raw = const {}}): _output = output,_raw = raw;
  factory _ResponsesResponse.fromJson(Map<String, dynamic> json) => _$ResponsesResponseFromJson(json);

@override final  String id;
@override@JsonKey() final  String object;
@override final  int created;
@override final  String model;
@override@JsonKey() final  String status;
 final  List<ResponseOutputItem> _output;
@override List<ResponseOutputItem> get output {
  if (_output is EqualUnmodifiableListView) return _output;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_output);
}

@override@JsonKey(name: 'output_text') final  String? outputText;
@override final  Usage? usage;
 final  Map<String, dynamic> _raw;
@override@JsonKey() Map<String, dynamic> get raw {
  if (_raw is EqualUnmodifiableMapView) return _raw;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableMapView(_raw);
}


/// Create a copy of ResponsesResponse
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ResponsesResponseCopyWith<_ResponsesResponse> get copyWith => __$ResponsesResponseCopyWithImpl<_ResponsesResponse>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ResponsesResponseToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _ResponsesResponse&&(identical(other.id, id) || other.id == id)&&(identical(other.object, object) || other.object == object)&&(identical(other.created, created) || other.created == created)&&(identical(other.model, model) || other.model == model)&&(identical(other.status, status) || other.status == status)&&const DeepCollectionEquality().equals(other.output, _output)&&(identical(other.outputText, outputText) || other.outputText == outputText)&&(identical(other.usage, usage) || other.usage == usage)&&const DeepCollectionEquality().equals(other.raw, _raw));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,id,object,created,model,status,const DeepCollectionEquality().hash(_output),outputText,usage,const DeepCollectionEquality().hash(_raw));
}

@override
String toString() {
    return 'ResponsesResponse(id: $id, object: $object, created: $created, model: $model, status: $status, output: $output, outputText: $outputText, usage: $usage, raw: $raw)';
}


}

/// @nodoc
abstract mixin class _$ResponsesResponseCopyWith<$Res> implements $ResponsesResponseCopyWith<$Res> {
  factory _$ResponsesResponseCopyWith(_ResponsesResponse value, $Res Function(_ResponsesResponse) _then) = __$ResponsesResponseCopyWithImpl;
@override @useResult
$Res call({
 String id, String object, int created, String model, String status, List<ResponseOutputItem> output,@JsonKey(name: 'output_text') String? outputText, Usage? usage, Map<String, dynamic> raw
});


@override $UsageCopyWith<$Res>? get usage;

}
/// @nodoc
class __$ResponsesResponseCopyWithImpl<$Res>
    implements _$ResponsesResponseCopyWith<$Res> {
  __$ResponsesResponseCopyWithImpl(this._self, this._then);

  final _ResponsesResponse _self;
  final $Res Function(_ResponsesResponse) _then;

/// Create a copy of ResponsesResponse
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? object = null,Object? created = null,Object? model = null,Object? status = null,Object? output = null,Object? outputText = freezed,Object? usage = freezed,Object? raw = null,}) {
  return _then(_ResponsesResponse(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,object: null == object ? _self.object : object // ignore: cast_nullable_to_non_nullable
as String,created: null == created ? _self.created : created // ignore: cast_nullable_to_non_nullable
as int,model: null == model ? _self.model : model // ignore: cast_nullable_to_non_nullable
as String,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String,output: null == output ? _self._output : output // ignore: cast_nullable_to_non_nullable
as List<ResponseOutputItem>,outputText: freezed == outputText ? _self.outputText : outputText // ignore: cast_nullable_to_non_nullable
as String?,usage: freezed == usage ? _self.usage : usage // ignore: cast_nullable_to_non_nullable
as Usage?,raw: null == raw ? _self._raw : raw // ignore: cast_nullable_to_non_nullable
as Map<String, dynamic>,
  ));
}

/// Create a copy of ResponsesResponse
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
