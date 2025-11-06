// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'bottom_nav_bar_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$BottomNavBarState {

 List<BottomNavBarOptionModel> get options; int get currentRouteIndex;
/// Create a copy of BottomNavBarState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$BottomNavBarStateCopyWith<BottomNavBarState> get copyWith => _$BottomNavBarStateCopyWithImpl<BottomNavBarState>(this as BottomNavBarState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is BottomNavBarState&&const DeepCollectionEquality().equals(other.options, options)&&(identical(other.currentRouteIndex, currentRouteIndex) || other.currentRouteIndex == currentRouteIndex));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(options),currentRouteIndex);

@override
String toString() {
  return 'BottomNavBarState(options: $options, currentRouteIndex: $currentRouteIndex)';
}


}

/// @nodoc
abstract mixin class $BottomNavBarStateCopyWith<$Res>  {
  factory $BottomNavBarStateCopyWith(BottomNavBarState value, $Res Function(BottomNavBarState) _then) = _$BottomNavBarStateCopyWithImpl;
@useResult
$Res call({
 List<BottomNavBarOptionModel> options, int currentRouteIndex
});




}
/// @nodoc
class _$BottomNavBarStateCopyWithImpl<$Res>
    implements $BottomNavBarStateCopyWith<$Res> {
  _$BottomNavBarStateCopyWithImpl(this._self, this._then);

  final BottomNavBarState _self;
  final $Res Function(BottomNavBarState) _then;

/// Create a copy of BottomNavBarState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? options = null,Object? currentRouteIndex = null,}) {
  return _then(_self.copyWith(
options: null == options ? _self.options : options // ignore: cast_nullable_to_non_nullable
as List<BottomNavBarOptionModel>,currentRouteIndex: null == currentRouteIndex ? _self.currentRouteIndex : currentRouteIndex // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// Adds pattern-matching-related methods to [BottomNavBarState].
extension BottomNavBarStatePatterns on BottomNavBarState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _BottomNavBarState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _BottomNavBarState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _BottomNavBarState value)  $default,){
final _that = this;
switch (_that) {
case _BottomNavBarState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _BottomNavBarState value)?  $default,){
final _that = this;
switch (_that) {
case _BottomNavBarState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( List<BottomNavBarOptionModel> options,  int currentRouteIndex)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _BottomNavBarState() when $default != null:
return $default(_that.options,_that.currentRouteIndex);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( List<BottomNavBarOptionModel> options,  int currentRouteIndex)  $default,) {final _that = this;
switch (_that) {
case _BottomNavBarState():
return $default(_that.options,_that.currentRouteIndex);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( List<BottomNavBarOptionModel> options,  int currentRouteIndex)?  $default,) {final _that = this;
switch (_that) {
case _BottomNavBarState() when $default != null:
return $default(_that.options,_that.currentRouteIndex);case _:
  return null;

}
}

}

/// @nodoc


class _BottomNavBarState implements BottomNavBarState {
  const _BottomNavBarState({final  List<BottomNavBarOptionModel> options = const [], this.currentRouteIndex = 0}): _options = options;
  

 final  List<BottomNavBarOptionModel> _options;
@override@JsonKey() List<BottomNavBarOptionModel> get options {
  if (_options is EqualUnmodifiableListView) return _options;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_options);
}

@override@JsonKey() final  int currentRouteIndex;

/// Create a copy of BottomNavBarState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$BottomNavBarStateCopyWith<_BottomNavBarState> get copyWith => __$BottomNavBarStateCopyWithImpl<_BottomNavBarState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _BottomNavBarState&&const DeepCollectionEquality().equals(other._options, _options)&&(identical(other.currentRouteIndex, currentRouteIndex) || other.currentRouteIndex == currentRouteIndex));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_options),currentRouteIndex);

@override
String toString() {
  return 'BottomNavBarState(options: $options, currentRouteIndex: $currentRouteIndex)';
}


}

/// @nodoc
abstract mixin class _$BottomNavBarStateCopyWith<$Res> implements $BottomNavBarStateCopyWith<$Res> {
  factory _$BottomNavBarStateCopyWith(_BottomNavBarState value, $Res Function(_BottomNavBarState) _then) = __$BottomNavBarStateCopyWithImpl;
@override @useResult
$Res call({
 List<BottomNavBarOptionModel> options, int currentRouteIndex
});




}
/// @nodoc
class __$BottomNavBarStateCopyWithImpl<$Res>
    implements _$BottomNavBarStateCopyWith<$Res> {
  __$BottomNavBarStateCopyWithImpl(this._self, this._then);

  final _BottomNavBarState _self;
  final $Res Function(_BottomNavBarState) _then;

/// Create a copy of BottomNavBarState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? options = null,Object? currentRouteIndex = null,}) {
  return _then(_BottomNavBarState(
options: null == options ? _self._options : options // ignore: cast_nullable_to_non_nullable
as List<BottomNavBarOptionModel>,currentRouteIndex: null == currentRouteIndex ? _self.currentRouteIndex : currentRouteIndex // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

// dart format on
