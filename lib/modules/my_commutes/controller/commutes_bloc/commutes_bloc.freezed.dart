// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'commutes_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$CommutesEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() addCommute,
    required TResult Function(LocalCommuteModel commute) changePin,
    required TResult Function(LocalCommuteModel commute) deleteCommute,
    required TResult Function(LatLng location, Placemark placemark)
        selectLocation,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? addCommute,
    TResult? Function(LocalCommuteModel commute)? changePin,
    TResult? Function(LocalCommuteModel commute)? deleteCommute,
    TResult? Function(LatLng location, Placemark placemark)? selectLocation,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? addCommute,
    TResult Function(LocalCommuteModel commute)? changePin,
    TResult Function(LocalCommuteModel commute)? deleteCommute,
    TResult Function(LatLng location, Placemark placemark)? selectLocation,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(AddCommute value) addCommute,
    required TResult Function(_ChangePin value) changePin,
    required TResult Function(_DeleteCommute value) deleteCommute,
    required TResult Function(SelectLocation value) selectLocation,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(AddCommute value)? addCommute,
    TResult? Function(_ChangePin value)? changePin,
    TResult? Function(_DeleteCommute value)? deleteCommute,
    TResult? Function(SelectLocation value)? selectLocation,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(AddCommute value)? addCommute,
    TResult Function(_ChangePin value)? changePin,
    TResult Function(_DeleteCommute value)? deleteCommute,
    TResult Function(SelectLocation value)? selectLocation,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CommutesEventCopyWith<$Res> {
  factory $CommutesEventCopyWith(
          CommutesEvent value, $Res Function(CommutesEvent) then) =
      _$CommutesEventCopyWithImpl<$Res, CommutesEvent>;
}

/// @nodoc
class _$CommutesEventCopyWithImpl<$Res, $Val extends CommutesEvent>
    implements $CommutesEventCopyWith<$Res> {
  _$CommutesEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$StartedImplCopyWith<$Res> {
  factory _$$StartedImplCopyWith(
          _$StartedImpl value, $Res Function(_$StartedImpl) then) =
      __$$StartedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$StartedImplCopyWithImpl<$Res>
    extends _$CommutesEventCopyWithImpl<$Res, _$StartedImpl>
    implements _$$StartedImplCopyWith<$Res> {
  __$$StartedImplCopyWithImpl(
      _$StartedImpl _value, $Res Function(_$StartedImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$StartedImpl implements _Started {
  const _$StartedImpl();

  @override
  String toString() {
    return 'CommutesEvent.started()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$StartedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() addCommute,
    required TResult Function(LocalCommuteModel commute) changePin,
    required TResult Function(LocalCommuteModel commute) deleteCommute,
    required TResult Function(LatLng location, Placemark placemark)
        selectLocation,
  }) {
    return started();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? addCommute,
    TResult? Function(LocalCommuteModel commute)? changePin,
    TResult? Function(LocalCommuteModel commute)? deleteCommute,
    TResult? Function(LatLng location, Placemark placemark)? selectLocation,
  }) {
    return started?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? addCommute,
    TResult Function(LocalCommuteModel commute)? changePin,
    TResult Function(LocalCommuteModel commute)? deleteCommute,
    TResult Function(LatLng location, Placemark placemark)? selectLocation,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(AddCommute value) addCommute,
    required TResult Function(_ChangePin value) changePin,
    required TResult Function(_DeleteCommute value) deleteCommute,
    required TResult Function(SelectLocation value) selectLocation,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(AddCommute value)? addCommute,
    TResult? Function(_ChangePin value)? changePin,
    TResult? Function(_DeleteCommute value)? deleteCommute,
    TResult? Function(SelectLocation value)? selectLocation,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(AddCommute value)? addCommute,
    TResult Function(_ChangePin value)? changePin,
    TResult Function(_DeleteCommute value)? deleteCommute,
    TResult Function(SelectLocation value)? selectLocation,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class _Started implements CommutesEvent {
  const factory _Started() = _$StartedImpl;
}

/// @nodoc
abstract class _$$AddCommuteImplCopyWith<$Res> {
  factory _$$AddCommuteImplCopyWith(
          _$AddCommuteImpl value, $Res Function(_$AddCommuteImpl) then) =
      __$$AddCommuteImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$AddCommuteImplCopyWithImpl<$Res>
    extends _$CommutesEventCopyWithImpl<$Res, _$AddCommuteImpl>
    implements _$$AddCommuteImplCopyWith<$Res> {
  __$$AddCommuteImplCopyWithImpl(
      _$AddCommuteImpl _value, $Res Function(_$AddCommuteImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$AddCommuteImpl implements AddCommute {
  const _$AddCommuteImpl();

  @override
  String toString() {
    return 'CommutesEvent.addCommute()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$AddCommuteImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() addCommute,
    required TResult Function(LocalCommuteModel commute) changePin,
    required TResult Function(LocalCommuteModel commute) deleteCommute,
    required TResult Function(LatLng location, Placemark placemark)
        selectLocation,
  }) {
    return addCommute();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? addCommute,
    TResult? Function(LocalCommuteModel commute)? changePin,
    TResult? Function(LocalCommuteModel commute)? deleteCommute,
    TResult? Function(LatLng location, Placemark placemark)? selectLocation,
  }) {
    return addCommute?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? addCommute,
    TResult Function(LocalCommuteModel commute)? changePin,
    TResult Function(LocalCommuteModel commute)? deleteCommute,
    TResult Function(LatLng location, Placemark placemark)? selectLocation,
    required TResult orElse(),
  }) {
    if (addCommute != null) {
      return addCommute();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(AddCommute value) addCommute,
    required TResult Function(_ChangePin value) changePin,
    required TResult Function(_DeleteCommute value) deleteCommute,
    required TResult Function(SelectLocation value) selectLocation,
  }) {
    return addCommute(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(AddCommute value)? addCommute,
    TResult? Function(_ChangePin value)? changePin,
    TResult? Function(_DeleteCommute value)? deleteCommute,
    TResult? Function(SelectLocation value)? selectLocation,
  }) {
    return addCommute?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(AddCommute value)? addCommute,
    TResult Function(_ChangePin value)? changePin,
    TResult Function(_DeleteCommute value)? deleteCommute,
    TResult Function(SelectLocation value)? selectLocation,
    required TResult orElse(),
  }) {
    if (addCommute != null) {
      return addCommute(this);
    }
    return orElse();
  }
}

abstract class AddCommute implements CommutesEvent {
  const factory AddCommute() = _$AddCommuteImpl;
}

/// @nodoc
abstract class _$$ChangePinImplCopyWith<$Res> {
  factory _$$ChangePinImplCopyWith(
          _$ChangePinImpl value, $Res Function(_$ChangePinImpl) then) =
      __$$ChangePinImplCopyWithImpl<$Res>;
  @useResult
  $Res call({LocalCommuteModel commute});
}

/// @nodoc
class __$$ChangePinImplCopyWithImpl<$Res>
    extends _$CommutesEventCopyWithImpl<$Res, _$ChangePinImpl>
    implements _$$ChangePinImplCopyWith<$Res> {
  __$$ChangePinImplCopyWithImpl(
      _$ChangePinImpl _value, $Res Function(_$ChangePinImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? commute = null,
  }) {
    return _then(_$ChangePinImpl(
      commute: null == commute
          ? _value.commute
          : commute // ignore: cast_nullable_to_non_nullable
              as LocalCommuteModel,
    ));
  }
}

/// @nodoc

class _$ChangePinImpl implements _ChangePin {
  const _$ChangePinImpl({required this.commute});

  @override
  final LocalCommuteModel commute;

  @override
  String toString() {
    return 'CommutesEvent.changePin(commute: $commute)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChangePinImpl &&
            (identical(other.commute, commute) || other.commute == commute));
  }

  @override
  int get hashCode => Object.hash(runtimeType, commute);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ChangePinImplCopyWith<_$ChangePinImpl> get copyWith =>
      __$$ChangePinImplCopyWithImpl<_$ChangePinImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() addCommute,
    required TResult Function(LocalCommuteModel commute) changePin,
    required TResult Function(LocalCommuteModel commute) deleteCommute,
    required TResult Function(LatLng location, Placemark placemark)
        selectLocation,
  }) {
    return changePin(commute);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? addCommute,
    TResult? Function(LocalCommuteModel commute)? changePin,
    TResult? Function(LocalCommuteModel commute)? deleteCommute,
    TResult? Function(LatLng location, Placemark placemark)? selectLocation,
  }) {
    return changePin?.call(commute);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? addCommute,
    TResult Function(LocalCommuteModel commute)? changePin,
    TResult Function(LocalCommuteModel commute)? deleteCommute,
    TResult Function(LatLng location, Placemark placemark)? selectLocation,
    required TResult orElse(),
  }) {
    if (changePin != null) {
      return changePin(commute);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(AddCommute value) addCommute,
    required TResult Function(_ChangePin value) changePin,
    required TResult Function(_DeleteCommute value) deleteCommute,
    required TResult Function(SelectLocation value) selectLocation,
  }) {
    return changePin(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(AddCommute value)? addCommute,
    TResult? Function(_ChangePin value)? changePin,
    TResult? Function(_DeleteCommute value)? deleteCommute,
    TResult? Function(SelectLocation value)? selectLocation,
  }) {
    return changePin?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(AddCommute value)? addCommute,
    TResult Function(_ChangePin value)? changePin,
    TResult Function(_DeleteCommute value)? deleteCommute,
    TResult Function(SelectLocation value)? selectLocation,
    required TResult orElse(),
  }) {
    if (changePin != null) {
      return changePin(this);
    }
    return orElse();
  }
}

abstract class _ChangePin implements CommutesEvent {
  const factory _ChangePin({required final LocalCommuteModel commute}) =
      _$ChangePinImpl;

  LocalCommuteModel get commute;
  @JsonKey(ignore: true)
  _$$ChangePinImplCopyWith<_$ChangePinImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$DeleteCommuteImplCopyWith<$Res> {
  factory _$$DeleteCommuteImplCopyWith(
          _$DeleteCommuteImpl value, $Res Function(_$DeleteCommuteImpl) then) =
      __$$DeleteCommuteImplCopyWithImpl<$Res>;
  @useResult
  $Res call({LocalCommuteModel commute});
}

/// @nodoc
class __$$DeleteCommuteImplCopyWithImpl<$Res>
    extends _$CommutesEventCopyWithImpl<$Res, _$DeleteCommuteImpl>
    implements _$$DeleteCommuteImplCopyWith<$Res> {
  __$$DeleteCommuteImplCopyWithImpl(
      _$DeleteCommuteImpl _value, $Res Function(_$DeleteCommuteImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? commute = null,
  }) {
    return _then(_$DeleteCommuteImpl(
      commute: null == commute
          ? _value.commute
          : commute // ignore: cast_nullable_to_non_nullable
              as LocalCommuteModel,
    ));
  }
}

/// @nodoc

class _$DeleteCommuteImpl implements _DeleteCommute {
  const _$DeleteCommuteImpl({required this.commute});

  @override
  final LocalCommuteModel commute;

  @override
  String toString() {
    return 'CommutesEvent.deleteCommute(commute: $commute)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DeleteCommuteImpl &&
            (identical(other.commute, commute) || other.commute == commute));
  }

  @override
  int get hashCode => Object.hash(runtimeType, commute);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DeleteCommuteImplCopyWith<_$DeleteCommuteImpl> get copyWith =>
      __$$DeleteCommuteImplCopyWithImpl<_$DeleteCommuteImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() addCommute,
    required TResult Function(LocalCommuteModel commute) changePin,
    required TResult Function(LocalCommuteModel commute) deleteCommute,
    required TResult Function(LatLng location, Placemark placemark)
        selectLocation,
  }) {
    return deleteCommute(commute);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? addCommute,
    TResult? Function(LocalCommuteModel commute)? changePin,
    TResult? Function(LocalCommuteModel commute)? deleteCommute,
    TResult? Function(LatLng location, Placemark placemark)? selectLocation,
  }) {
    return deleteCommute?.call(commute);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? addCommute,
    TResult Function(LocalCommuteModel commute)? changePin,
    TResult Function(LocalCommuteModel commute)? deleteCommute,
    TResult Function(LatLng location, Placemark placemark)? selectLocation,
    required TResult orElse(),
  }) {
    if (deleteCommute != null) {
      return deleteCommute(commute);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(AddCommute value) addCommute,
    required TResult Function(_ChangePin value) changePin,
    required TResult Function(_DeleteCommute value) deleteCommute,
    required TResult Function(SelectLocation value) selectLocation,
  }) {
    return deleteCommute(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(AddCommute value)? addCommute,
    TResult? Function(_ChangePin value)? changePin,
    TResult? Function(_DeleteCommute value)? deleteCommute,
    TResult? Function(SelectLocation value)? selectLocation,
  }) {
    return deleteCommute?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(AddCommute value)? addCommute,
    TResult Function(_ChangePin value)? changePin,
    TResult Function(_DeleteCommute value)? deleteCommute,
    TResult Function(SelectLocation value)? selectLocation,
    required TResult orElse(),
  }) {
    if (deleteCommute != null) {
      return deleteCommute(this);
    }
    return orElse();
  }
}

abstract class _DeleteCommute implements CommutesEvent {
  const factory _DeleteCommute({required final LocalCommuteModel commute}) =
      _$DeleteCommuteImpl;

  LocalCommuteModel get commute;
  @JsonKey(ignore: true)
  _$$DeleteCommuteImplCopyWith<_$DeleteCommuteImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SelectLocationImplCopyWith<$Res> {
  factory _$$SelectLocationImplCopyWith(_$SelectLocationImpl value,
          $Res Function(_$SelectLocationImpl) then) =
      __$$SelectLocationImplCopyWithImpl<$Res>;
  @useResult
  $Res call({LatLng location, Placemark placemark});
}

/// @nodoc
class __$$SelectLocationImplCopyWithImpl<$Res>
    extends _$CommutesEventCopyWithImpl<$Res, _$SelectLocationImpl>
    implements _$$SelectLocationImplCopyWith<$Res> {
  __$$SelectLocationImplCopyWithImpl(
      _$SelectLocationImpl _value, $Res Function(_$SelectLocationImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? location = null,
    Object? placemark = null,
  }) {
    return _then(_$SelectLocationImpl(
      location: null == location
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as LatLng,
      placemark: null == placemark
          ? _value.placemark
          : placemark // ignore: cast_nullable_to_non_nullable
              as Placemark,
    ));
  }
}

/// @nodoc

class _$SelectLocationImpl implements SelectLocation {
  const _$SelectLocationImpl({required this.location, required this.placemark});

  @override
  final LatLng location;
  @override
  final Placemark placemark;

  @override
  String toString() {
    return 'CommutesEvent.selectLocation(location: $location, placemark: $placemark)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SelectLocationImpl &&
            (identical(other.location, location) ||
                other.location == location) &&
            (identical(other.placemark, placemark) ||
                other.placemark == placemark));
  }

  @override
  int get hashCode => Object.hash(runtimeType, location, placemark);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SelectLocationImplCopyWith<_$SelectLocationImpl> get copyWith =>
      __$$SelectLocationImplCopyWithImpl<_$SelectLocationImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() addCommute,
    required TResult Function(LocalCommuteModel commute) changePin,
    required TResult Function(LocalCommuteModel commute) deleteCommute,
    required TResult Function(LatLng location, Placemark placemark)
        selectLocation,
  }) {
    return selectLocation(location, placemark);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? addCommute,
    TResult? Function(LocalCommuteModel commute)? changePin,
    TResult? Function(LocalCommuteModel commute)? deleteCommute,
    TResult? Function(LatLng location, Placemark placemark)? selectLocation,
  }) {
    return selectLocation?.call(location, placemark);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? addCommute,
    TResult Function(LocalCommuteModel commute)? changePin,
    TResult Function(LocalCommuteModel commute)? deleteCommute,
    TResult Function(LatLng location, Placemark placemark)? selectLocation,
    required TResult orElse(),
  }) {
    if (selectLocation != null) {
      return selectLocation(location, placemark);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(AddCommute value) addCommute,
    required TResult Function(_ChangePin value) changePin,
    required TResult Function(_DeleteCommute value) deleteCommute,
    required TResult Function(SelectLocation value) selectLocation,
  }) {
    return selectLocation(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(AddCommute value)? addCommute,
    TResult? Function(_ChangePin value)? changePin,
    TResult? Function(_DeleteCommute value)? deleteCommute,
    TResult? Function(SelectLocation value)? selectLocation,
  }) {
    return selectLocation?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(AddCommute value)? addCommute,
    TResult Function(_ChangePin value)? changePin,
    TResult Function(_DeleteCommute value)? deleteCommute,
    TResult Function(SelectLocation value)? selectLocation,
    required TResult orElse(),
  }) {
    if (selectLocation != null) {
      return selectLocation(this);
    }
    return orElse();
  }
}

abstract class SelectLocation implements CommutesEvent {
  const factory SelectLocation(
      {required final LatLng location,
      required final Placemark placemark}) = _$SelectLocationImpl;

  LatLng get location;
  Placemark get placemark;
  @JsonKey(ignore: true)
  _$$SelectLocationImplCopyWith<_$SelectLocationImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$CommutesState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<LocalCommuteModel> localCommutes) success,
    required TResult Function() empty,
    required TResult Function(String message, int id) failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<LocalCommuteModel> localCommutes)? success,
    TResult? Function()? empty,
    TResult? Function(String message, int id)? failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<LocalCommuteModel> localCommutes)? success,
    TResult Function()? empty,
    TResult Function(String message, int id)? failure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(Loading value) loading,
    required TResult Function(Success value) success,
    required TResult Function(Empty value) empty,
    required TResult Function(Failure value) failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(Loading value)? loading,
    TResult? Function(Success value)? success,
    TResult? Function(Empty value)? empty,
    TResult? Function(Failure value)? failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(Success value)? success,
    TResult Function(Empty value)? empty,
    TResult Function(Failure value)? failure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CommutesStateCopyWith<$Res> {
  factory $CommutesStateCopyWith(
          CommutesState value, $Res Function(CommutesState) then) =
      _$CommutesStateCopyWithImpl<$Res, CommutesState>;
}

/// @nodoc
class _$CommutesStateCopyWithImpl<$Res, $Val extends CommutesState>
    implements $CommutesStateCopyWith<$Res> {
  _$CommutesStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$InitialImplCopyWith<$Res> {
  factory _$$InitialImplCopyWith(
          _$InitialImpl value, $Res Function(_$InitialImpl) then) =
      __$$InitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InitialImplCopyWithImpl<$Res>
    extends _$CommutesStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$InitialImpl implements _Initial {
  const _$InitialImpl();

  @override
  String toString() {
    return 'CommutesState.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$InitialImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<LocalCommuteModel> localCommutes) success,
    required TResult Function() empty,
    required TResult Function(String message, int id) failure,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<LocalCommuteModel> localCommutes)? success,
    TResult? Function()? empty,
    TResult? Function(String message, int id)? failure,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<LocalCommuteModel> localCommutes)? success,
    TResult Function()? empty,
    TResult Function(String message, int id)? failure,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(Loading value) loading,
    required TResult Function(Success value) success,
    required TResult Function(Empty value) empty,
    required TResult Function(Failure value) failure,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(Loading value)? loading,
    TResult? Function(Success value)? success,
    TResult? Function(Empty value)? empty,
    TResult? Function(Failure value)? failure,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(Success value)? success,
    TResult Function(Empty value)? empty,
    TResult Function(Failure value)? failure,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements CommutesState {
  const factory _Initial() = _$InitialImpl;
}

/// @nodoc
abstract class _$$LoadingImplCopyWith<$Res> {
  factory _$$LoadingImplCopyWith(
          _$LoadingImpl value, $Res Function(_$LoadingImpl) then) =
      __$$LoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoadingImplCopyWithImpl<$Res>
    extends _$CommutesStateCopyWithImpl<$Res, _$LoadingImpl>
    implements _$$LoadingImplCopyWith<$Res> {
  __$$LoadingImplCopyWithImpl(
      _$LoadingImpl _value, $Res Function(_$LoadingImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$LoadingImpl implements Loading {
  const _$LoadingImpl();

  @override
  String toString() {
    return 'CommutesState.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<LocalCommuteModel> localCommutes) success,
    required TResult Function() empty,
    required TResult Function(String message, int id) failure,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<LocalCommuteModel> localCommutes)? success,
    TResult? Function()? empty,
    TResult? Function(String message, int id)? failure,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<LocalCommuteModel> localCommutes)? success,
    TResult Function()? empty,
    TResult Function(String message, int id)? failure,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(Loading value) loading,
    required TResult Function(Success value) success,
    required TResult Function(Empty value) empty,
    required TResult Function(Failure value) failure,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(Loading value)? loading,
    TResult? Function(Success value)? success,
    TResult? Function(Empty value)? empty,
    TResult? Function(Failure value)? failure,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(Success value)? success,
    TResult Function(Empty value)? empty,
    TResult Function(Failure value)? failure,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class Loading implements CommutesState {
  const factory Loading() = _$LoadingImpl;
}

/// @nodoc
abstract class _$$SuccessImplCopyWith<$Res> {
  factory _$$SuccessImplCopyWith(
          _$SuccessImpl value, $Res Function(_$SuccessImpl) then) =
      __$$SuccessImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<LocalCommuteModel> localCommutes});
}

/// @nodoc
class __$$SuccessImplCopyWithImpl<$Res>
    extends _$CommutesStateCopyWithImpl<$Res, _$SuccessImpl>
    implements _$$SuccessImplCopyWith<$Res> {
  __$$SuccessImplCopyWithImpl(
      _$SuccessImpl _value, $Res Function(_$SuccessImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? localCommutes = null,
  }) {
    return _then(_$SuccessImpl(
      localCommutes: null == localCommutes
          ? _value._localCommutes
          : localCommutes // ignore: cast_nullable_to_non_nullable
              as List<LocalCommuteModel>,
    ));
  }
}

/// @nodoc

class _$SuccessImpl implements Success {
  const _$SuccessImpl({required final List<LocalCommuteModel> localCommutes})
      : _localCommutes = localCommutes;

  final List<LocalCommuteModel> _localCommutes;
  @override
  List<LocalCommuteModel> get localCommutes {
    if (_localCommutes is EqualUnmodifiableListView) return _localCommutes;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_localCommutes);
  }

  @override
  String toString() {
    return 'CommutesState.success(localCommutes: $localCommutes)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SuccessImpl &&
            const DeepCollectionEquality()
                .equals(other._localCommutes, _localCommutes));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_localCommutes));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SuccessImplCopyWith<_$SuccessImpl> get copyWith =>
      __$$SuccessImplCopyWithImpl<_$SuccessImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<LocalCommuteModel> localCommutes) success,
    required TResult Function() empty,
    required TResult Function(String message, int id) failure,
  }) {
    return success(localCommutes);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<LocalCommuteModel> localCommutes)? success,
    TResult? Function()? empty,
    TResult? Function(String message, int id)? failure,
  }) {
    return success?.call(localCommutes);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<LocalCommuteModel> localCommutes)? success,
    TResult Function()? empty,
    TResult Function(String message, int id)? failure,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(localCommutes);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(Loading value) loading,
    required TResult Function(Success value) success,
    required TResult Function(Empty value) empty,
    required TResult Function(Failure value) failure,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(Loading value)? loading,
    TResult? Function(Success value)? success,
    TResult? Function(Empty value)? empty,
    TResult? Function(Failure value)? failure,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(Success value)? success,
    TResult Function(Empty value)? empty,
    TResult Function(Failure value)? failure,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class Success implements CommutesState {
  const factory Success(
      {required final List<LocalCommuteModel> localCommutes}) = _$SuccessImpl;

  List<LocalCommuteModel> get localCommutes;
  @JsonKey(ignore: true)
  _$$SuccessImplCopyWith<_$SuccessImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$EmptyImplCopyWith<$Res> {
  factory _$$EmptyImplCopyWith(
          _$EmptyImpl value, $Res Function(_$EmptyImpl) then) =
      __$$EmptyImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$EmptyImplCopyWithImpl<$Res>
    extends _$CommutesStateCopyWithImpl<$Res, _$EmptyImpl>
    implements _$$EmptyImplCopyWith<$Res> {
  __$$EmptyImplCopyWithImpl(
      _$EmptyImpl _value, $Res Function(_$EmptyImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$EmptyImpl implements Empty {
  const _$EmptyImpl();

  @override
  String toString() {
    return 'CommutesState.empty()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$EmptyImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<LocalCommuteModel> localCommutes) success,
    required TResult Function() empty,
    required TResult Function(String message, int id) failure,
  }) {
    return empty();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<LocalCommuteModel> localCommutes)? success,
    TResult? Function()? empty,
    TResult? Function(String message, int id)? failure,
  }) {
    return empty?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<LocalCommuteModel> localCommutes)? success,
    TResult Function()? empty,
    TResult Function(String message, int id)? failure,
    required TResult orElse(),
  }) {
    if (empty != null) {
      return empty();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(Loading value) loading,
    required TResult Function(Success value) success,
    required TResult Function(Empty value) empty,
    required TResult Function(Failure value) failure,
  }) {
    return empty(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(Loading value)? loading,
    TResult? Function(Success value)? success,
    TResult? Function(Empty value)? empty,
    TResult? Function(Failure value)? failure,
  }) {
    return empty?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(Success value)? success,
    TResult Function(Empty value)? empty,
    TResult Function(Failure value)? failure,
    required TResult orElse(),
  }) {
    if (empty != null) {
      return empty(this);
    }
    return orElse();
  }
}

abstract class Empty implements CommutesState {
  const factory Empty() = _$EmptyImpl;
}

/// @nodoc
abstract class _$$FailureImplCopyWith<$Res> {
  factory _$$FailureImplCopyWith(
          _$FailureImpl value, $Res Function(_$FailureImpl) then) =
      __$$FailureImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String message, int id});
}

/// @nodoc
class __$$FailureImplCopyWithImpl<$Res>
    extends _$CommutesStateCopyWithImpl<$Res, _$FailureImpl>
    implements _$$FailureImplCopyWith<$Res> {
  __$$FailureImplCopyWithImpl(
      _$FailureImpl _value, $Res Function(_$FailureImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
    Object? id = null,
  }) {
    return _then(_$FailureImpl(
      null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$FailureImpl implements Failure {
  const _$FailureImpl(this.message, this.id);

  @override
  final String message;
  @override
  final int id;

  @override
  String toString() {
    return 'CommutesState.failure(message: $message, id: $id)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FailureImpl &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.id, id) || other.id == id));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message, id);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FailureImplCopyWith<_$FailureImpl> get copyWith =>
      __$$FailureImplCopyWithImpl<_$FailureImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<LocalCommuteModel> localCommutes) success,
    required TResult Function() empty,
    required TResult Function(String message, int id) failure,
  }) {
    return failure(message, id);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<LocalCommuteModel> localCommutes)? success,
    TResult? Function()? empty,
    TResult? Function(String message, int id)? failure,
  }) {
    return failure?.call(message, id);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<LocalCommuteModel> localCommutes)? success,
    TResult Function()? empty,
    TResult Function(String message, int id)? failure,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(message, id);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(Loading value) loading,
    required TResult Function(Success value) success,
    required TResult Function(Empty value) empty,
    required TResult Function(Failure value) failure,
  }) {
    return failure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(Loading value)? loading,
    TResult? Function(Success value)? success,
    TResult? Function(Empty value)? empty,
    TResult? Function(Failure value)? failure,
  }) {
    return failure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(Success value)? success,
    TResult Function(Empty value)? empty,
    TResult Function(Failure value)? failure,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(this);
    }
    return orElse();
  }
}

abstract class Failure implements CommutesState {
  const factory Failure(final String message, final int id) = _$FailureImpl;

  String get message;
  int get id;
  @JsonKey(ignore: true)
  _$$FailureImplCopyWith<_$FailureImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
