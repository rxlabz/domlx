// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'rerank.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$RerankRequest {

 String get model; String get query; List<String> get documents;@JsonKey(name: 'top_n') int? get topN;@JsonKey(name: 'return_documents') bool? get returnDocuments;
/// Create a copy of RerankRequest
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$RerankRequestCopyWith<RerankRequest> get copyWith => _$RerankRequestCopyWithImpl<RerankRequest>(this as RerankRequest, _$identity);

  /// Serializes this RerankRequest to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as RerankRequest;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is RerankRequest&&(identical(other.model, _this.model) || other.model == _this.model)&&(identical(other.query, _this.query) || other.query == _this.query)&&const DeepCollectionEquality().equals(other.documents, _this.documents)&&(identical(other.topN, _this.topN) || other.topN == _this.topN)&&(identical(other.returnDocuments, _this.returnDocuments) || other.returnDocuments == _this.returnDocuments));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as RerankRequest;
  return Object.hash(runtimeType,_this.model,_this.query,const DeepCollectionEquality().hash(_this.documents),_this.topN,_this.returnDocuments);
}

@override
String toString() {
  final _this = this as RerankRequest;
  return 'RerankRequest(model: ${_this.model}, query: ${_this.query}, documents: ${_this.documents}, topN: ${_this.topN}, returnDocuments: ${_this.returnDocuments})';
}


}

/// @nodoc
abstract mixin class $RerankRequestCopyWith<$Res>  {
  factory $RerankRequestCopyWith(RerankRequest value, $Res Function(RerankRequest) _then) = _$RerankRequestCopyWithImpl;
@useResult
$Res call({
 String model, String query, List<String> documents,@JsonKey(name: 'top_n') int? topN,@JsonKey(name: 'return_documents') bool? returnDocuments
});




}
/// @nodoc
class _$RerankRequestCopyWithImpl<$Res>
    implements $RerankRequestCopyWith<$Res> {
  _$RerankRequestCopyWithImpl(this._self, this._then);

  final RerankRequest _self;
  final $Res Function(RerankRequest) _then;

/// Create a copy of RerankRequest
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? model = null,Object? query = null,Object? documents = null,Object? topN = freezed,Object? returnDocuments = freezed,}) {
  return _then(RerankRequest(
model: null == model ? _self.model : model // ignore: cast_nullable_to_non_nullable
as String,query: null == query ? _self.query : query // ignore: cast_nullable_to_non_nullable
as String,documents: null == documents ? _self.documents : documents // ignore: cast_nullable_to_non_nullable
as List<String>,topN: freezed == topN ? _self.topN : topN // ignore: cast_nullable_to_non_nullable
as int?,returnDocuments: freezed == returnDocuments ? _self.returnDocuments : returnDocuments // ignore: cast_nullable_to_non_nullable
as bool?,
  ));
}

}


/// Adds pattern-matching-related methods to [RerankRequest].
extension RerankRequestPatterns on RerankRequest {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _RerankRequest value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _RerankRequest() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _RerankRequest value)  $default,){
final _that = this;
switch (_that) {
case _RerankRequest():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _RerankRequest value)?  $default,){
final _that = this;
switch (_that) {
case _RerankRequest() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String model,  String query,  List<String> documents, @JsonKey(name: 'top_n')  int? topN, @JsonKey(name: 'return_documents')  bool? returnDocuments)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _RerankRequest() when $default != null:
return $default(_that.model,_that.query,_that.documents,_that.topN,_that.returnDocuments);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String model,  String query,  List<String> documents, @JsonKey(name: 'top_n')  int? topN, @JsonKey(name: 'return_documents')  bool? returnDocuments)  $default,) {final _that = this;
switch (_that) {
case _RerankRequest():
return $default(_that.model,_that.query,_that.documents,_that.topN,_that.returnDocuments);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String model,  String query,  List<String> documents, @JsonKey(name: 'top_n')  int? topN, @JsonKey(name: 'return_documents')  bool? returnDocuments)?  $default,) {final _that = this;
switch (_that) {
case _RerankRequest() when $default != null:
return $default(_that.model,_that.query,_that.documents,_that.topN,_that.returnDocuments);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _RerankRequest implements RerankRequest {
  const _RerankRequest({required this.model, required this.query, required  List<String> documents, @JsonKey(name: 'top_n') this.topN, @JsonKey(name: 'return_documents') this.returnDocuments}): _documents = documents;
  factory _RerankRequest.fromJson(Map<String, dynamic> json) => _$RerankRequestFromJson(json);

@override final  String model;
@override final  String query;
 final  List<String> _documents;
@override List<String> get documents {
  if (_documents is EqualUnmodifiableListView) return _documents;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_documents);
}

@override@JsonKey(name: 'top_n') final  int? topN;
@override@JsonKey(name: 'return_documents') final  bool? returnDocuments;

/// Create a copy of RerankRequest
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$RerankRequestCopyWith<_RerankRequest> get copyWith => __$RerankRequestCopyWithImpl<_RerankRequest>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$RerankRequestToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _RerankRequest&&(identical(other.model, model) || other.model == model)&&(identical(other.query, query) || other.query == query)&&const DeepCollectionEquality().equals(other.documents, _documents)&&(identical(other.topN, topN) || other.topN == topN)&&(identical(other.returnDocuments, returnDocuments) || other.returnDocuments == returnDocuments));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,model,query,const DeepCollectionEquality().hash(_documents),topN,returnDocuments);
}

@override
String toString() {
    return 'RerankRequest(model: $model, query: $query, documents: $documents, topN: $topN, returnDocuments: $returnDocuments)';
}


}

/// @nodoc
abstract mixin class _$RerankRequestCopyWith<$Res> implements $RerankRequestCopyWith<$Res> {
  factory _$RerankRequestCopyWith(_RerankRequest value, $Res Function(_RerankRequest) _then) = __$RerankRequestCopyWithImpl;
@override @useResult
$Res call({
 String model, String query, List<String> documents,@JsonKey(name: 'top_n') int? topN,@JsonKey(name: 'return_documents') bool? returnDocuments
});




}
/// @nodoc
class __$RerankRequestCopyWithImpl<$Res>
    implements _$RerankRequestCopyWith<$Res> {
  __$RerankRequestCopyWithImpl(this._self, this._then);

  final _RerankRequest _self;
  final $Res Function(_RerankRequest) _then;

/// Create a copy of RerankRequest
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? model = null,Object? query = null,Object? documents = null,Object? topN = freezed,Object? returnDocuments = freezed,}) {
  return _then(_RerankRequest(
model: null == model ? _self.model : model // ignore: cast_nullable_to_non_nullable
as String,query: null == query ? _self.query : query // ignore: cast_nullable_to_non_nullable
as String,documents: null == documents ? _self._documents : documents // ignore: cast_nullable_to_non_nullable
as List<String>,topN: freezed == topN ? _self.topN : topN // ignore: cast_nullable_to_non_nullable
as int?,returnDocuments: freezed == returnDocuments ? _self.returnDocuments : returnDocuments // ignore: cast_nullable_to_non_nullable
as bool?,
  ));
}


}


/// @nodoc
mixin _$RerankResult {

 int get index;@JsonKey(name: 'relevance_score') double get relevanceScore;@JsonKey(readValue: _readDocument) String? get document;
/// Create a copy of RerankResult
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$RerankResultCopyWith<RerankResult> get copyWith => _$RerankResultCopyWithImpl<RerankResult>(this as RerankResult, _$identity);

  /// Serializes this RerankResult to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as RerankResult;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is RerankResult&&(identical(other.index, _this.index) || other.index == _this.index)&&(identical(other.relevanceScore, _this.relevanceScore) || other.relevanceScore == _this.relevanceScore)&&(identical(other.document, _this.document) || other.document == _this.document));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as RerankResult;
  return Object.hash(runtimeType,_this.index,_this.relevanceScore,_this.document);
}

@override
String toString() {
  final _this = this as RerankResult;
  return 'RerankResult(index: ${_this.index}, relevanceScore: ${_this.relevanceScore}, document: ${_this.document})';
}


}

/// @nodoc
abstract mixin class $RerankResultCopyWith<$Res>  {
  factory $RerankResultCopyWith(RerankResult value, $Res Function(RerankResult) _then) = _$RerankResultCopyWithImpl;
@useResult
$Res call({
 int index,@JsonKey(name: 'relevance_score') double relevanceScore,@JsonKey(readValue: _readDocument) String? document
});




}
/// @nodoc
class _$RerankResultCopyWithImpl<$Res>
    implements $RerankResultCopyWith<$Res> {
  _$RerankResultCopyWithImpl(this._self, this._then);

  final RerankResult _self;
  final $Res Function(RerankResult) _then;

/// Create a copy of RerankResult
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? index = null,Object? relevanceScore = null,Object? document = freezed,}) {
  return _then(RerankResult(
index: null == index ? _self.index : index // ignore: cast_nullable_to_non_nullable
as int,relevanceScore: null == relevanceScore ? _self.relevanceScore : relevanceScore // ignore: cast_nullable_to_non_nullable
as double,document: freezed == document ? _self.document : document // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [RerankResult].
extension RerankResultPatterns on RerankResult {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _RerankResult value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _RerankResult() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _RerankResult value)  $default,){
final _that = this;
switch (_that) {
case _RerankResult():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _RerankResult value)?  $default,){
final _that = this;
switch (_that) {
case _RerankResult() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int index, @JsonKey(name: 'relevance_score')  double relevanceScore, @JsonKey(readValue: _readDocument)  String? document)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _RerankResult() when $default != null:
return $default(_that.index,_that.relevanceScore,_that.document);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int index, @JsonKey(name: 'relevance_score')  double relevanceScore, @JsonKey(readValue: _readDocument)  String? document)  $default,) {final _that = this;
switch (_that) {
case _RerankResult():
return $default(_that.index,_that.relevanceScore,_that.document);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int index, @JsonKey(name: 'relevance_score')  double relevanceScore, @JsonKey(readValue: _readDocument)  String? document)?  $default,) {final _that = this;
switch (_that) {
case _RerankResult() when $default != null:
return $default(_that.index,_that.relevanceScore,_that.document);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _RerankResult implements RerankResult {
  const _RerankResult({this.index = 0, @JsonKey(name: 'relevance_score') this.relevanceScore = 0.0, @JsonKey(readValue: _readDocument) this.document});
  factory _RerankResult.fromJson(Map<String, dynamic> json) => _$RerankResultFromJson(json);

@override@JsonKey() final  int index;
@override@JsonKey(name: 'relevance_score') final  double relevanceScore;
@override@JsonKey(readValue: _readDocument) final  String? document;

/// Create a copy of RerankResult
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$RerankResultCopyWith<_RerankResult> get copyWith => __$RerankResultCopyWithImpl<_RerankResult>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$RerankResultToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _RerankResult&&(identical(other.index, index) || other.index == index)&&(identical(other.relevanceScore, relevanceScore) || other.relevanceScore == relevanceScore)&&(identical(other.document, document) || other.document == document));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,index,relevanceScore,document);
}

@override
String toString() {
    return 'RerankResult(index: $index, relevanceScore: $relevanceScore, document: $document)';
}


}

/// @nodoc
abstract mixin class _$RerankResultCopyWith<$Res> implements $RerankResultCopyWith<$Res> {
  factory _$RerankResultCopyWith(_RerankResult value, $Res Function(_RerankResult) _then) = __$RerankResultCopyWithImpl;
@override @useResult
$Res call({
 int index,@JsonKey(name: 'relevance_score') double relevanceScore,@JsonKey(readValue: _readDocument) String? document
});




}
/// @nodoc
class __$RerankResultCopyWithImpl<$Res>
    implements _$RerankResultCopyWith<$Res> {
  __$RerankResultCopyWithImpl(this._self, this._then);

  final _RerankResult _self;
  final $Res Function(_RerankResult) _then;

/// Create a copy of RerankResult
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? index = null,Object? relevanceScore = null,Object? document = freezed,}) {
  return _then(_RerankResult(
index: null == index ? _self.index : index // ignore: cast_nullable_to_non_nullable
as int,relevanceScore: null == relevanceScore ? _self.relevanceScore : relevanceScore // ignore: cast_nullable_to_non_nullable
as double,document: freezed == document ? _self.document : document // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}


/// @nodoc
mixin _$RerankResponse {

 String get model; List<RerankResult> get results; Usage? get usage;
/// Create a copy of RerankResponse
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$RerankResponseCopyWith<RerankResponse> get copyWith => _$RerankResponseCopyWithImpl<RerankResponse>(this as RerankResponse, _$identity);

  /// Serializes this RerankResponse to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as RerankResponse;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is RerankResponse&&(identical(other.model, _this.model) || other.model == _this.model)&&const DeepCollectionEquality().equals(other.results, _this.results)&&(identical(other.usage, _this.usage) || other.usage == _this.usage));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as RerankResponse;
  return Object.hash(runtimeType,_this.model,const DeepCollectionEquality().hash(_this.results),_this.usage);
}

@override
String toString() {
  final _this = this as RerankResponse;
  return 'RerankResponse(model: ${_this.model}, results: ${_this.results}, usage: ${_this.usage})';
}


}

/// @nodoc
abstract mixin class $RerankResponseCopyWith<$Res>  {
  factory $RerankResponseCopyWith(RerankResponse value, $Res Function(RerankResponse) _then) = _$RerankResponseCopyWithImpl;
@useResult
$Res call({
 String model, List<RerankResult> results, Usage? usage
});


$UsageCopyWith<$Res>? get usage;

}
/// @nodoc
class _$RerankResponseCopyWithImpl<$Res>
    implements $RerankResponseCopyWith<$Res> {
  _$RerankResponseCopyWithImpl(this._self, this._then);

  final RerankResponse _self;
  final $Res Function(RerankResponse) _then;

/// Create a copy of RerankResponse
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? model = null,Object? results = null,Object? usage = freezed,}) {
  return _then(RerankResponse(
model: null == model ? _self.model : model // ignore: cast_nullable_to_non_nullable
as String,results: null == results ? _self.results : results // ignore: cast_nullable_to_non_nullable
as List<RerankResult>,usage: freezed == usage ? _self.usage : usage // ignore: cast_nullable_to_non_nullable
as Usage?,
  ));
}
/// Create a copy of RerankResponse
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


/// Adds pattern-matching-related methods to [RerankResponse].
extension RerankResponsePatterns on RerankResponse {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _RerankResponse value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _RerankResponse() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _RerankResponse value)  $default,){
final _that = this;
switch (_that) {
case _RerankResponse():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _RerankResponse value)?  $default,){
final _that = this;
switch (_that) {
case _RerankResponse() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String model,  List<RerankResult> results,  Usage? usage)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _RerankResponse() when $default != null:
return $default(_that.model,_that.results,_that.usage);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String model,  List<RerankResult> results,  Usage? usage)  $default,) {final _that = this;
switch (_that) {
case _RerankResponse():
return $default(_that.model,_that.results,_that.usage);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String model,  List<RerankResult> results,  Usage? usage)?  $default,) {final _that = this;
switch (_that) {
case _RerankResponse() when $default != null:
return $default(_that.model,_that.results,_that.usage);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _RerankResponse implements RerankResponse {
  const _RerankResponse({required this.model, required  List<RerankResult> results, this.usage}): _results = results;
  factory _RerankResponse.fromJson(Map<String, dynamic> json) => _$RerankResponseFromJson(json);

@override final  String model;
 final  List<RerankResult> _results;
@override List<RerankResult> get results {
  if (_results is EqualUnmodifiableListView) return _results;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_results);
}

@override final  Usage? usage;

/// Create a copy of RerankResponse
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$RerankResponseCopyWith<_RerankResponse> get copyWith => __$RerankResponseCopyWithImpl<_RerankResponse>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$RerankResponseToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _RerankResponse&&(identical(other.model, model) || other.model == model)&&const DeepCollectionEquality().equals(other.results, _results)&&(identical(other.usage, usage) || other.usage == usage));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,model,const DeepCollectionEquality().hash(_results),usage);
}

@override
String toString() {
    return 'RerankResponse(model: $model, results: $results, usage: $usage)';
}


}

/// @nodoc
abstract mixin class _$RerankResponseCopyWith<$Res> implements $RerankResponseCopyWith<$Res> {
  factory _$RerankResponseCopyWith(_RerankResponse value, $Res Function(_RerankResponse) _then) = __$RerankResponseCopyWithImpl;
@override @useResult
$Res call({
 String model, List<RerankResult> results, Usage? usage
});


@override $UsageCopyWith<$Res>? get usage;

}
/// @nodoc
class __$RerankResponseCopyWithImpl<$Res>
    implements _$RerankResponseCopyWith<$Res> {
  __$RerankResponseCopyWithImpl(this._self, this._then);

  final _RerankResponse _self;
  final $Res Function(_RerankResponse) _then;

/// Create a copy of RerankResponse
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? model = null,Object? results = null,Object? usage = freezed,}) {
  return _then(_RerankResponse(
model: null == model ? _self.model : model // ignore: cast_nullable_to_non_nullable
as String,results: null == results ? _self._results : results // ignore: cast_nullable_to_non_nullable
as List<RerankResult>,usage: freezed == usage ? _self.usage : usage // ignore: cast_nullable_to_non_nullable
as Usage?,
  ));
}

/// Create a copy of RerankResponse
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
