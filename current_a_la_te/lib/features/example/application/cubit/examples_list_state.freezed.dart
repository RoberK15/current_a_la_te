// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'examples_list_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$ExamplesListState {

 StateStatus get status; List<Example> get examples; String get errorMessage;
/// Create a copy of ExamplesListState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ExamplesListStateCopyWith<ExamplesListState> get copyWith => _$ExamplesListStateCopyWithImpl<ExamplesListState>(this as ExamplesListState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ExamplesListState&&(identical(other.status, status) || other.status == status)&&const DeepCollectionEquality().equals(other.examples, examples)&&(identical(other.errorMessage, errorMessage) || other.errorMessage == errorMessage));
}


@override
int get hashCode => Object.hash(runtimeType,status,const DeepCollectionEquality().hash(examples),errorMessage);

@override
String toString() {
  return 'ExamplesListState(status: $status, examples: $examples, errorMessage: $errorMessage)';
}


}

/// @nodoc
abstract mixin class $ExamplesListStateCopyWith<$Res>  {
  factory $ExamplesListStateCopyWith(ExamplesListState value, $Res Function(ExamplesListState) _then) = _$ExamplesListStateCopyWithImpl;
@useResult
$Res call({
 StateStatus status, List<Example> examples, String errorMessage
});




}
/// @nodoc
class _$ExamplesListStateCopyWithImpl<$Res>
    implements $ExamplesListStateCopyWith<$Res> {
  _$ExamplesListStateCopyWithImpl(this._self, this._then);

  final ExamplesListState _self;
  final $Res Function(ExamplesListState) _then;

/// Create a copy of ExamplesListState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? status = null,Object? examples = null,Object? errorMessage = null,}) {
  return _then(_self.copyWith(
status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as StateStatus,examples: null == examples ? _self.examples : examples // ignore: cast_nullable_to_non_nullable
as List<Example>,errorMessage: null == errorMessage ? _self.errorMessage : errorMessage // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [ExamplesListState].
extension ExamplesListStatePatterns on ExamplesListState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ExamplesListState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ExamplesListState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ExamplesListState value)  $default,){
final _that = this;
switch (_that) {
case _ExamplesListState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ExamplesListState value)?  $default,){
final _that = this;
switch (_that) {
case _ExamplesListState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( StateStatus status,  List<Example> examples,  String errorMessage)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ExamplesListState() when $default != null:
return $default(_that.status,_that.examples,_that.errorMessage);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( StateStatus status,  List<Example> examples,  String errorMessage)  $default,) {final _that = this;
switch (_that) {
case _ExamplesListState():
return $default(_that.status,_that.examples,_that.errorMessage);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( StateStatus status,  List<Example> examples,  String errorMessage)?  $default,) {final _that = this;
switch (_that) {
case _ExamplesListState() when $default != null:
return $default(_that.status,_that.examples,_that.errorMessage);case _:
  return null;

}
}

}

/// @nodoc


class _ExamplesListState implements ExamplesListState {
  const _ExamplesListState({this.status = StateStatus.initial, final  List<Example> examples = const [], this.errorMessage = ''}): _examples = examples;
  

@override@JsonKey() final  StateStatus status;
 final  List<Example> _examples;
@override@JsonKey() List<Example> get examples {
  if (_examples is EqualUnmodifiableListView) return _examples;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_examples);
}

@override@JsonKey() final  String errorMessage;

/// Create a copy of ExamplesListState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ExamplesListStateCopyWith<_ExamplesListState> get copyWith => __$ExamplesListStateCopyWithImpl<_ExamplesListState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ExamplesListState&&(identical(other.status, status) || other.status == status)&&const DeepCollectionEquality().equals(other._examples, _examples)&&(identical(other.errorMessage, errorMessage) || other.errorMessage == errorMessage));
}


@override
int get hashCode => Object.hash(runtimeType,status,const DeepCollectionEquality().hash(_examples),errorMessage);

@override
String toString() {
  return 'ExamplesListState(status: $status, examples: $examples, errorMessage: $errorMessage)';
}


}

/// @nodoc
abstract mixin class _$ExamplesListStateCopyWith<$Res> implements $ExamplesListStateCopyWith<$Res> {
  factory _$ExamplesListStateCopyWith(_ExamplesListState value, $Res Function(_ExamplesListState) _then) = __$ExamplesListStateCopyWithImpl;
@override @useResult
$Res call({
 StateStatus status, List<Example> examples, String errorMessage
});




}
/// @nodoc
class __$ExamplesListStateCopyWithImpl<$Res>
    implements _$ExamplesListStateCopyWith<$Res> {
  __$ExamplesListStateCopyWithImpl(this._self, this._then);

  final _ExamplesListState _self;
  final $Res Function(_ExamplesListState) _then;

/// Create a copy of ExamplesListState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? status = null,Object? examples = null,Object? errorMessage = null,}) {
  return _then(_ExamplesListState(
status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as StateStatus,examples: null == examples ? _self._examples : examples // ignore: cast_nullable_to_non_nullable
as List<Example>,errorMessage: null == errorMessage ? _self.errorMessage : errorMessage // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
