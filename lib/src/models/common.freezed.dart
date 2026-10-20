// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'common.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$PromptTokensDetails {

@JsonKey(name: 'cached_tokens') int get cachedTokens;
/// Create a copy of PromptTokensDetails
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PromptTokensDetailsCopyWith<PromptTokensDetails> get copyWith => _$PromptTokensDetailsCopyWithImpl<PromptTokensDetails>(this as PromptTokensDetails, _$identity);

  /// Serializes this PromptTokensDetails to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as PromptTokensDetails;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PromptTokensDetails&&(identical(other.cachedTokens, _this.cachedTokens) || other.cachedTokens == _this.cachedTokens));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as PromptTokensDetails;
  return Object.hash(runtimeType,_this.cachedTokens);
}

@override
String toString() {
  final _this = this as PromptTokensDetails;
  return 'PromptTokensDetails(cachedTokens: ${_this.cachedTokens})';
}


}

/// @nodoc
abstract mixin class $PromptTokensDetailsCopyWith<$Res>  {
  factory $PromptTokensDetailsCopyWith(PromptTokensDetails value, $Res Function(PromptTokensDetails) _then) = _$PromptTokensDetailsCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'cached_tokens') int cachedTokens
});




}
/// @nodoc
class _$PromptTokensDetailsCopyWithImpl<$Res>
    implements $PromptTokensDetailsCopyWith<$Res> {
  _$PromptTokensDetailsCopyWithImpl(this._self, this._then);

  final PromptTokensDetails _self;
  final $Res Function(PromptTokensDetails) _then;

/// Create a copy of PromptTokensDetails
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? cachedTokens = null,}) {
  return _then(PromptTokensDetails(
cachedTokens: null == cachedTokens ? _self.cachedTokens : cachedTokens // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// Adds pattern-matching-related methods to [PromptTokensDetails].
extension PromptTokensDetailsPatterns on PromptTokensDetails {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _PromptTokensDetails value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _PromptTokensDetails() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _PromptTokensDetails value)  $default,){
final _that = this;
switch (_that) {
case _PromptTokensDetails():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _PromptTokensDetails value)?  $default,){
final _that = this;
switch (_that) {
case _PromptTokensDetails() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'cached_tokens')  int cachedTokens)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _PromptTokensDetails() when $default != null:
return $default(_that.cachedTokens);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'cached_tokens')  int cachedTokens)  $default,) {final _that = this;
switch (_that) {
case _PromptTokensDetails():
return $default(_that.cachedTokens);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'cached_tokens')  int cachedTokens)?  $default,) {final _that = this;
switch (_that) {
case _PromptTokensDetails() when $default != null:
return $default(_that.cachedTokens);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _PromptTokensDetails implements PromptTokensDetails {
  const _PromptTokensDetails({@JsonKey(name: 'cached_tokens') this.cachedTokens = 0});
  factory _PromptTokensDetails.fromJson(Map<String, dynamic> json) => _$PromptTokensDetailsFromJson(json);

@override@JsonKey(name: 'cached_tokens') final  int cachedTokens;

/// Create a copy of PromptTokensDetails
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PromptTokensDetailsCopyWith<_PromptTokensDetails> get copyWith => __$PromptTokensDetailsCopyWithImpl<_PromptTokensDetails>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$PromptTokensDetailsToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _PromptTokensDetails&&(identical(other.cachedTokens, cachedTokens) || other.cachedTokens == cachedTokens));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,cachedTokens);
}

@override
String toString() {
    return 'PromptTokensDetails(cachedTokens: $cachedTokens)';
}


}

/// @nodoc
abstract mixin class _$PromptTokensDetailsCopyWith<$Res> implements $PromptTokensDetailsCopyWith<$Res> {
  factory _$PromptTokensDetailsCopyWith(_PromptTokensDetails value, $Res Function(_PromptTokensDetails) _then) = __$PromptTokensDetailsCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'cached_tokens') int cachedTokens
});




}
/// @nodoc
class __$PromptTokensDetailsCopyWithImpl<$Res>
    implements _$PromptTokensDetailsCopyWith<$Res> {
  __$PromptTokensDetailsCopyWithImpl(this._self, this._then);

  final _PromptTokensDetails _self;
  final $Res Function(_PromptTokensDetails) _then;

/// Create a copy of PromptTokensDetails
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? cachedTokens = null,}) {
  return _then(_PromptTokensDetails(
cachedTokens: null == cachedTokens ? _self.cachedTokens : cachedTokens // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}


/// @nodoc
mixin _$Usage {

@JsonKey(name: 'prompt_tokens') int get promptTokens;@JsonKey(name: 'completion_tokens') int get completionTokens;@JsonKey(name: 'total_tokens') int get totalTokens;@JsonKey(name: 'cached_tokens', readValue: _readCachedTokens) int? get cachedTokens;@JsonKey(name: 'prompt_tokens_details') PromptTokensDetails? get promptTokensDetails;@JsonKey(name: 'prefill_duration') double? get prefillDuration;@JsonKey(name: 'generation_duration') double? get generationDuration;
/// Create a copy of Usage
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$UsageCopyWith<Usage> get copyWith => _$UsageCopyWithImpl<Usage>(this as Usage, _$identity);

  /// Serializes this Usage to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as Usage;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Usage&&(identical(other.promptTokens, _this.promptTokens) || other.promptTokens == _this.promptTokens)&&(identical(other.completionTokens, _this.completionTokens) || other.completionTokens == _this.completionTokens)&&(identical(other.totalTokens, _this.totalTokens) || other.totalTokens == _this.totalTokens)&&(identical(other.cachedTokens, _this.cachedTokens) || other.cachedTokens == _this.cachedTokens)&&(identical(other.promptTokensDetails, _this.promptTokensDetails) || other.promptTokensDetails == _this.promptTokensDetails)&&(identical(other.prefillDuration, _this.prefillDuration) || other.prefillDuration == _this.prefillDuration)&&(identical(other.generationDuration, _this.generationDuration) || other.generationDuration == _this.generationDuration));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as Usage;
  return Object.hash(runtimeType,_this.promptTokens,_this.completionTokens,_this.totalTokens,_this.cachedTokens,_this.promptTokensDetails,_this.prefillDuration,_this.generationDuration);
}

@override
String toString() {
  final _this = this as Usage;
  return 'Usage(promptTokens: ${_this.promptTokens}, completionTokens: ${_this.completionTokens}, totalTokens: ${_this.totalTokens}, cachedTokens: ${_this.cachedTokens}, promptTokensDetails: ${_this.promptTokensDetails}, prefillDuration: ${_this.prefillDuration}, generationDuration: ${_this.generationDuration})';
}


}

/// @nodoc
abstract mixin class $UsageCopyWith<$Res>  {
  factory $UsageCopyWith(Usage value, $Res Function(Usage) _then) = _$UsageCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'prompt_tokens') int promptTokens,@JsonKey(name: 'completion_tokens') int completionTokens,@JsonKey(name: 'total_tokens') int totalTokens,@JsonKey(name: 'cached_tokens', readValue: _readCachedTokens) int? cachedTokens,@JsonKey(name: 'prompt_tokens_details') PromptTokensDetails? promptTokensDetails,@JsonKey(name: 'prefill_duration') double? prefillDuration,@JsonKey(name: 'generation_duration') double? generationDuration
});


$PromptTokensDetailsCopyWith<$Res>? get promptTokensDetails;

}
/// @nodoc
class _$UsageCopyWithImpl<$Res>
    implements $UsageCopyWith<$Res> {
  _$UsageCopyWithImpl(this._self, this._then);

  final Usage _self;
  final $Res Function(Usage) _then;

/// Create a copy of Usage
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? promptTokens = null,Object? completionTokens = null,Object? totalTokens = null,Object? cachedTokens = freezed,Object? promptTokensDetails = freezed,Object? prefillDuration = freezed,Object? generationDuration = freezed,}) {
  return _then(Usage(
promptTokens: null == promptTokens ? _self.promptTokens : promptTokens // ignore: cast_nullable_to_non_nullable
as int,completionTokens: null == completionTokens ? _self.completionTokens : completionTokens // ignore: cast_nullable_to_non_nullable
as int,totalTokens: null == totalTokens ? _self.totalTokens : totalTokens // ignore: cast_nullable_to_non_nullable
as int,cachedTokens: freezed == cachedTokens ? _self.cachedTokens : cachedTokens // ignore: cast_nullable_to_non_nullable
as int?,promptTokensDetails: freezed == promptTokensDetails ? _self.promptTokensDetails : promptTokensDetails // ignore: cast_nullable_to_non_nullable
as PromptTokensDetails?,prefillDuration: freezed == prefillDuration ? _self.prefillDuration : prefillDuration // ignore: cast_nullable_to_non_nullable
as double?,generationDuration: freezed == generationDuration ? _self.generationDuration : generationDuration // ignore: cast_nullable_to_non_nullable
as double?,
  ));
}
/// Create a copy of Usage
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PromptTokensDetailsCopyWith<$Res>? get promptTokensDetails {
    if (_self.promptTokensDetails == null) {
    return null;
  }

  return $PromptTokensDetailsCopyWith<$Res>(_self.promptTokensDetails!, (value) {
    return _then(_self.copyWith(promptTokensDetails: value));
  });
}
}


/// Adds pattern-matching-related methods to [Usage].
extension UsagePatterns on Usage {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Usage value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Usage() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Usage value)  $default,){
final _that = this;
switch (_that) {
case _Usage():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Usage value)?  $default,){
final _that = this;
switch (_that) {
case _Usage() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'prompt_tokens')  int promptTokens, @JsonKey(name: 'completion_tokens')  int completionTokens, @JsonKey(name: 'total_tokens')  int totalTokens, @JsonKey(name: 'cached_tokens', readValue: _readCachedTokens)  int? cachedTokens, @JsonKey(name: 'prompt_tokens_details')  PromptTokensDetails? promptTokensDetails, @JsonKey(name: 'prefill_duration')  double? prefillDuration, @JsonKey(name: 'generation_duration')  double? generationDuration)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Usage() when $default != null:
return $default(_that.promptTokens,_that.completionTokens,_that.totalTokens,_that.cachedTokens,_that.promptTokensDetails,_that.prefillDuration,_that.generationDuration);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'prompt_tokens')  int promptTokens, @JsonKey(name: 'completion_tokens')  int completionTokens, @JsonKey(name: 'total_tokens')  int totalTokens, @JsonKey(name: 'cached_tokens', readValue: _readCachedTokens)  int? cachedTokens, @JsonKey(name: 'prompt_tokens_details')  PromptTokensDetails? promptTokensDetails, @JsonKey(name: 'prefill_duration')  double? prefillDuration, @JsonKey(name: 'generation_duration')  double? generationDuration)  $default,) {final _that = this;
switch (_that) {
case _Usage():
return $default(_that.promptTokens,_that.completionTokens,_that.totalTokens,_that.cachedTokens,_that.promptTokensDetails,_that.prefillDuration,_that.generationDuration);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'prompt_tokens')  int promptTokens, @JsonKey(name: 'completion_tokens')  int completionTokens, @JsonKey(name: 'total_tokens')  int totalTokens, @JsonKey(name: 'cached_tokens', readValue: _readCachedTokens)  int? cachedTokens, @JsonKey(name: 'prompt_tokens_details')  PromptTokensDetails? promptTokensDetails, @JsonKey(name: 'prefill_duration')  double? prefillDuration, @JsonKey(name: 'generation_duration')  double? generationDuration)?  $default,) {final _that = this;
switch (_that) {
case _Usage() when $default != null:
return $default(_that.promptTokens,_that.completionTokens,_that.totalTokens,_that.cachedTokens,_that.promptTokensDetails,_that.prefillDuration,_that.generationDuration);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _Usage extends Usage {
  const _Usage({@JsonKey(name: 'prompt_tokens') this.promptTokens = 0, @JsonKey(name: 'completion_tokens') this.completionTokens = 0, @JsonKey(name: 'total_tokens') this.totalTokens = 0, @JsonKey(name: 'cached_tokens', readValue: _readCachedTokens) this.cachedTokens, @JsonKey(name: 'prompt_tokens_details') this.promptTokensDetails, @JsonKey(name: 'prefill_duration') this.prefillDuration, @JsonKey(name: 'generation_duration') this.generationDuration}): super._();
  factory _Usage.fromJson(Map<String, dynamic> json) => _$UsageFromJson(json);

@override@JsonKey(name: 'prompt_tokens') final  int promptTokens;
@override@JsonKey(name: 'completion_tokens') final  int completionTokens;
@override@JsonKey(name: 'total_tokens') final  int totalTokens;
@override@JsonKey(name: 'cached_tokens', readValue: _readCachedTokens) final  int? cachedTokens;
@override@JsonKey(name: 'prompt_tokens_details') final  PromptTokensDetails? promptTokensDetails;
@override@JsonKey(name: 'prefill_duration') final  double? prefillDuration;
@override@JsonKey(name: 'generation_duration') final  double? generationDuration;

/// Create a copy of Usage
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$UsageCopyWith<_Usage> get copyWith => __$UsageCopyWithImpl<_Usage>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$UsageToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _Usage&&(identical(other.promptTokens, promptTokens) || other.promptTokens == promptTokens)&&(identical(other.completionTokens, completionTokens) || other.completionTokens == completionTokens)&&(identical(other.totalTokens, totalTokens) || other.totalTokens == totalTokens)&&(identical(other.cachedTokens, cachedTokens) || other.cachedTokens == cachedTokens)&&(identical(other.promptTokensDetails, promptTokensDetails) || other.promptTokensDetails == promptTokensDetails)&&(identical(other.prefillDuration, prefillDuration) || other.prefillDuration == prefillDuration)&&(identical(other.generationDuration, generationDuration) || other.generationDuration == generationDuration));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,promptTokens,completionTokens,totalTokens,cachedTokens,promptTokensDetails,prefillDuration,generationDuration);
}

@override
String toString() {
    return 'Usage(promptTokens: $promptTokens, completionTokens: $completionTokens, totalTokens: $totalTokens, cachedTokens: $cachedTokens, promptTokensDetails: $promptTokensDetails, prefillDuration: $prefillDuration, generationDuration: $generationDuration)';
}


}

/// @nodoc
abstract mixin class _$UsageCopyWith<$Res> implements $UsageCopyWith<$Res> {
  factory _$UsageCopyWith(_Usage value, $Res Function(_Usage) _then) = __$UsageCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'prompt_tokens') int promptTokens,@JsonKey(name: 'completion_tokens') int completionTokens,@JsonKey(name: 'total_tokens') int totalTokens,@JsonKey(name: 'cached_tokens', readValue: _readCachedTokens) int? cachedTokens,@JsonKey(name: 'prompt_tokens_details') PromptTokensDetails? promptTokensDetails,@JsonKey(name: 'prefill_duration') double? prefillDuration,@JsonKey(name: 'generation_duration') double? generationDuration
});


@override $PromptTokensDetailsCopyWith<$Res>? get promptTokensDetails;

}
/// @nodoc
class __$UsageCopyWithImpl<$Res>
    implements _$UsageCopyWith<$Res> {
  __$UsageCopyWithImpl(this._self, this._then);

  final _Usage _self;
  final $Res Function(_Usage) _then;

/// Create a copy of Usage
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? promptTokens = null,Object? completionTokens = null,Object? totalTokens = null,Object? cachedTokens = freezed,Object? promptTokensDetails = freezed,Object? prefillDuration = freezed,Object? generationDuration = freezed,}) {
  return _then(_Usage(
promptTokens: null == promptTokens ? _self.promptTokens : promptTokens // ignore: cast_nullable_to_non_nullable
as int,completionTokens: null == completionTokens ? _self.completionTokens : completionTokens // ignore: cast_nullable_to_non_nullable
as int,totalTokens: null == totalTokens ? _self.totalTokens : totalTokens // ignore: cast_nullable_to_non_nullable
as int,cachedTokens: freezed == cachedTokens ? _self.cachedTokens : cachedTokens // ignore: cast_nullable_to_non_nullable
as int?,promptTokensDetails: freezed == promptTokensDetails ? _self.promptTokensDetails : promptTokensDetails // ignore: cast_nullable_to_non_nullable
as PromptTokensDetails?,prefillDuration: freezed == prefillDuration ? _self.prefillDuration : prefillDuration // ignore: cast_nullable_to_non_nullable
as double?,generationDuration: freezed == generationDuration ? _self.generationDuration : generationDuration // ignore: cast_nullable_to_non_nullable
as double?,
  ));
}

/// Create a copy of Usage
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PromptTokensDetailsCopyWith<$Res>? get promptTokensDetails {
    if (_self.promptTokensDetails == null) {
    return null;
  }

  return $PromptTokensDetailsCopyWith<$Res>(_self.promptTokensDetails!, (value) {
    return _then(_self.copyWith(promptTokensDetails: value));
  });
}
}

// dart format on
