// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'pick_location_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$PickLocationEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(GoogleMapController googleMapController)
        onMapCreated,
    required TResult Function(LatLng latLng) onMapTap,
    required TResult Function() goToMe,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(GoogleMapController googleMapController)? onMapCreated,
    TResult? Function(LatLng latLng)? onMapTap,
    TResult? Function()? goToMe,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(GoogleMapController googleMapController)? onMapCreated,
    TResult Function(LatLng latLng)? onMapTap,
    TResult Function()? goToMe,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(OnMapCreated value) onMapCreated,
    required TResult Function(OnMapTap value) onMapTap,
    required TResult Function(GoToMe value) goToMe,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(OnMapCreated value)? onMapCreated,
    TResult? Function(OnMapTap value)? onMapTap,
    TResult? Function(GoToMe value)? goToMe,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(OnMapCreated value)? onMapCreated,
    TResult Function(OnMapTap value)? onMapTap,
    TResult Function(GoToMe value)? goToMe,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PickLocationEventCopyWith<$Res> {
  factory $PickLocationEventCopyWith(
          PickLocationEvent value, $Res Function(PickLocationEvent) then) =
      _$PickLocationEventCopyWithImpl<$Res, PickLocationEvent>;
}

/// @nodoc
class _$PickLocationEventCopyWithImpl<$Res, $Val extends PickLocationEvent>
    implements $PickLocationEventCopyWith<$Res> {
  _$PickLocationEventCopyWithImpl(this._value, this._then);

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
    extends _$PickLocationEventCopyWithImpl<$Res, _$StartedImpl>
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
    return 'PickLocationEvent.started()';
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
    required TResult Function(GoogleMapController googleMapController)
        onMapCreated,
    required TResult Function(LatLng latLng) onMapTap,
    required TResult Function() goToMe,
  }) {
    return started();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(GoogleMapController googleMapController)? onMapCreated,
    TResult? Function(LatLng latLng)? onMapTap,
    TResult? Function()? goToMe,
  }) {
    return started?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(GoogleMapController googleMapController)? onMapCreated,
    TResult Function(LatLng latLng)? onMapTap,
    TResult Function()? goToMe,
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
    required TResult Function(OnMapCreated value) onMapCreated,
    required TResult Function(OnMapTap value) onMapTap,
    required TResult Function(GoToMe value) goToMe,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(OnMapCreated value)? onMapCreated,
    TResult? Function(OnMapTap value)? onMapTap,
    TResult? Function(GoToMe value)? goToMe,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(OnMapCreated value)? onMapCreated,
    TResult Function(OnMapTap value)? onMapTap,
    TResult Function(GoToMe value)? goToMe,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class _Started implements PickLocationEvent {
  const factory _Started() = _$StartedImpl;
}

/// @nodoc
abstract class _$$OnMapCreatedImplCopyWith<$Res> {
  factory _$$OnMapCreatedImplCopyWith(
          _$OnMapCreatedImpl value, $Res Function(_$OnMapCreatedImpl) then) =
      __$$OnMapCreatedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({GoogleMapController googleMapController});
}

/// @nodoc
class __$$OnMapCreatedImplCopyWithImpl<$Res>
    extends _$PickLocationEventCopyWithImpl<$Res, _$OnMapCreatedImpl>
    implements _$$OnMapCreatedImplCopyWith<$Res> {
  __$$OnMapCreatedImplCopyWithImpl(
      _$OnMapCreatedImpl _value, $Res Function(_$OnMapCreatedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? googleMapController = null,
  }) {
    return _then(_$OnMapCreatedImpl(
      null == googleMapController
          ? _value.googleMapController
          : googleMapController // ignore: cast_nullable_to_non_nullable
              as GoogleMapController,
    ));
  }
}

/// @nodoc

class _$OnMapCreatedImpl implements OnMapCreated {
  const _$OnMapCreatedImpl(this.googleMapController);

  @override
  final GoogleMapController googleMapController;

  @override
  String toString() {
    return 'PickLocationEvent.onMapCreated(googleMapController: $googleMapController)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OnMapCreatedImpl &&
            (identical(other.googleMapController, googleMapController) ||
                other.googleMapController == googleMapController));
  }

  @override
  int get hashCode => Object.hash(runtimeType, googleMapController);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$OnMapCreatedImplCopyWith<_$OnMapCreatedImpl> get copyWith =>
      __$$OnMapCreatedImplCopyWithImpl<_$OnMapCreatedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(GoogleMapController googleMapController)
        onMapCreated,
    required TResult Function(LatLng latLng) onMapTap,
    required TResult Function() goToMe,
  }) {
    return onMapCreated(googleMapController);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(GoogleMapController googleMapController)? onMapCreated,
    TResult? Function(LatLng latLng)? onMapTap,
    TResult? Function()? goToMe,
  }) {
    return onMapCreated?.call(googleMapController);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(GoogleMapController googleMapController)? onMapCreated,
    TResult Function(LatLng latLng)? onMapTap,
    TResult Function()? goToMe,
    required TResult orElse(),
  }) {
    if (onMapCreated != null) {
      return onMapCreated(googleMapController);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(OnMapCreated value) onMapCreated,
    required TResult Function(OnMapTap value) onMapTap,
    required TResult Function(GoToMe value) goToMe,
  }) {
    return onMapCreated(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(OnMapCreated value)? onMapCreated,
    TResult? Function(OnMapTap value)? onMapTap,
    TResult? Function(GoToMe value)? goToMe,
  }) {
    return onMapCreated?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(OnMapCreated value)? onMapCreated,
    TResult Function(OnMapTap value)? onMapTap,
    TResult Function(GoToMe value)? goToMe,
    required TResult orElse(),
  }) {
    if (onMapCreated != null) {
      return onMapCreated(this);
    }
    return orElse();
  }
}

abstract class OnMapCreated implements PickLocationEvent {
  const factory OnMapCreated(final GoogleMapController googleMapController) =
      _$OnMapCreatedImpl;

  GoogleMapController get googleMapController;
  @JsonKey(ignore: true)
  _$$OnMapCreatedImplCopyWith<_$OnMapCreatedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$OnMapTapImplCopyWith<$Res> {
  factory _$$OnMapTapImplCopyWith(
          _$OnMapTapImpl value, $Res Function(_$OnMapTapImpl) then) =
      __$$OnMapTapImplCopyWithImpl<$Res>;
  @useResult
  $Res call({LatLng latLng});
}

/// @nodoc
class __$$OnMapTapImplCopyWithImpl<$Res>
    extends _$PickLocationEventCopyWithImpl<$Res, _$OnMapTapImpl>
    implements _$$OnMapTapImplCopyWith<$Res> {
  __$$OnMapTapImplCopyWithImpl(
      _$OnMapTapImpl _value, $Res Function(_$OnMapTapImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? latLng = null,
  }) {
    return _then(_$OnMapTapImpl(
      null == latLng
          ? _value.latLng
          : latLng // ignore: cast_nullable_to_non_nullable
              as LatLng,
    ));
  }
}

/// @nodoc

class _$OnMapTapImpl implements OnMapTap {
  const _$OnMapTapImpl(this.latLng);

  @override
  final LatLng latLng;

  @override
  String toString() {
    return 'PickLocationEvent.onMapTap(latLng: $latLng)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OnMapTapImpl &&
            (identical(other.latLng, latLng) || other.latLng == latLng));
  }

  @override
  int get hashCode => Object.hash(runtimeType, latLng);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$OnMapTapImplCopyWith<_$OnMapTapImpl> get copyWith =>
      __$$OnMapTapImplCopyWithImpl<_$OnMapTapImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(GoogleMapController googleMapController)
        onMapCreated,
    required TResult Function(LatLng latLng) onMapTap,
    required TResult Function() goToMe,
  }) {
    return onMapTap(latLng);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(GoogleMapController googleMapController)? onMapCreated,
    TResult? Function(LatLng latLng)? onMapTap,
    TResult? Function()? goToMe,
  }) {
    return onMapTap?.call(latLng);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(GoogleMapController googleMapController)? onMapCreated,
    TResult Function(LatLng latLng)? onMapTap,
    TResult Function()? goToMe,
    required TResult orElse(),
  }) {
    if (onMapTap != null) {
      return onMapTap(latLng);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(OnMapCreated value) onMapCreated,
    required TResult Function(OnMapTap value) onMapTap,
    required TResult Function(GoToMe value) goToMe,
  }) {
    return onMapTap(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(OnMapCreated value)? onMapCreated,
    TResult? Function(OnMapTap value)? onMapTap,
    TResult? Function(GoToMe value)? goToMe,
  }) {
    return onMapTap?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(OnMapCreated value)? onMapCreated,
    TResult Function(OnMapTap value)? onMapTap,
    TResult Function(GoToMe value)? goToMe,
    required TResult orElse(),
  }) {
    if (onMapTap != null) {
      return onMapTap(this);
    }
    return orElse();
  }
}

abstract class OnMapTap implements PickLocationEvent {
  const factory OnMapTap(final LatLng latLng) = _$OnMapTapImpl;

  LatLng get latLng;
  @JsonKey(ignore: true)
  _$$OnMapTapImplCopyWith<_$OnMapTapImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GoToMeImplCopyWith<$Res> {
  factory _$$GoToMeImplCopyWith(
          _$GoToMeImpl value, $Res Function(_$GoToMeImpl) then) =
      __$$GoToMeImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GoToMeImplCopyWithImpl<$Res>
    extends _$PickLocationEventCopyWithImpl<$Res, _$GoToMeImpl>
    implements _$$GoToMeImplCopyWith<$Res> {
  __$$GoToMeImplCopyWithImpl(
      _$GoToMeImpl _value, $Res Function(_$GoToMeImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$GoToMeImpl implements GoToMe {
  const _$GoToMeImpl();

  @override
  String toString() {
    return 'PickLocationEvent.goToMe()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$GoToMeImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(GoogleMapController googleMapController)
        onMapCreated,
    required TResult Function(LatLng latLng) onMapTap,
    required TResult Function() goToMe,
  }) {
    return goToMe();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(GoogleMapController googleMapController)? onMapCreated,
    TResult? Function(LatLng latLng)? onMapTap,
    TResult? Function()? goToMe,
  }) {
    return goToMe?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(GoogleMapController googleMapController)? onMapCreated,
    TResult Function(LatLng latLng)? onMapTap,
    TResult Function()? goToMe,
    required TResult orElse(),
  }) {
    if (goToMe != null) {
      return goToMe();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(OnMapCreated value) onMapCreated,
    required TResult Function(OnMapTap value) onMapTap,
    required TResult Function(GoToMe value) goToMe,
  }) {
    return goToMe(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(OnMapCreated value)? onMapCreated,
    TResult? Function(OnMapTap value)? onMapTap,
    TResult? Function(GoToMe value)? goToMe,
  }) {
    return goToMe?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(OnMapCreated value)? onMapCreated,
    TResult Function(OnMapTap value)? onMapTap,
    TResult Function(GoToMe value)? goToMe,
    required TResult orElse(),
  }) {
    if (goToMe != null) {
      return goToMe(this);
    }
    return orElse();
  }
}

abstract class GoToMe implements PickLocationEvent {
  const factory GoToMe() = _$GoToMeImpl;
}

/// @nodoc
mixin _$PickLocationState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() ploading,
    required TResult Function() failure,
    required TResult Function(int id) success,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? ploading,
    TResult? Function()? failure,
    TResult? Function(int id)? success,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? ploading,
    TResult Function()? failure,
    TResult Function(int id)? success,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(Loading value) loading,
    required TResult Function(PLoading value) ploading,
    required TResult Function(Failure value) failure,
    required TResult Function(Success value) success,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(Loading value)? loading,
    TResult? Function(PLoading value)? ploading,
    TResult? Function(Failure value)? failure,
    TResult? Function(Success value)? success,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(PLoading value)? ploading,
    TResult Function(Failure value)? failure,
    TResult Function(Success value)? success,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PickLocationStateCopyWith<$Res> {
  factory $PickLocationStateCopyWith(
          PickLocationState value, $Res Function(PickLocationState) then) =
      _$PickLocationStateCopyWithImpl<$Res, PickLocationState>;
}

/// @nodoc
class _$PickLocationStateCopyWithImpl<$Res, $Val extends PickLocationState>
    implements $PickLocationStateCopyWith<$Res> {
  _$PickLocationStateCopyWithImpl(this._value, this._then);

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
    extends _$PickLocationStateCopyWithImpl<$Res, _$InitialImpl>
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
    return 'PickLocationState.initial()';
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
    required TResult Function() ploading,
    required TResult Function() failure,
    required TResult Function(int id) success,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? ploading,
    TResult? Function()? failure,
    TResult? Function(int id)? success,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? ploading,
    TResult Function()? failure,
    TResult Function(int id)? success,
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
    required TResult Function(PLoading value) ploading,
    required TResult Function(Failure value) failure,
    required TResult Function(Success value) success,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(Loading value)? loading,
    TResult? Function(PLoading value)? ploading,
    TResult? Function(Failure value)? failure,
    TResult? Function(Success value)? success,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(PLoading value)? ploading,
    TResult Function(Failure value)? failure,
    TResult Function(Success value)? success,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements PickLocationState {
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
    extends _$PickLocationStateCopyWithImpl<$Res, _$LoadingImpl>
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
    return 'PickLocationState.loading()';
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
    required TResult Function() ploading,
    required TResult Function() failure,
    required TResult Function(int id) success,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? ploading,
    TResult? Function()? failure,
    TResult? Function(int id)? success,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? ploading,
    TResult Function()? failure,
    TResult Function(int id)? success,
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
    required TResult Function(PLoading value) ploading,
    required TResult Function(Failure value) failure,
    required TResult Function(Success value) success,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(Loading value)? loading,
    TResult? Function(PLoading value)? ploading,
    TResult? Function(Failure value)? failure,
    TResult? Function(Success value)? success,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(PLoading value)? ploading,
    TResult Function(Failure value)? failure,
    TResult Function(Success value)? success,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class Loading implements PickLocationState {
  const factory Loading() = _$LoadingImpl;
}

/// @nodoc
abstract class _$$PLoadingImplCopyWith<$Res> {
  factory _$$PLoadingImplCopyWith(
          _$PLoadingImpl value, $Res Function(_$PLoadingImpl) then) =
      __$$PLoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$PLoadingImplCopyWithImpl<$Res>
    extends _$PickLocationStateCopyWithImpl<$Res, _$PLoadingImpl>
    implements _$$PLoadingImplCopyWith<$Res> {
  __$$PLoadingImplCopyWithImpl(
      _$PLoadingImpl _value, $Res Function(_$PLoadingImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$PLoadingImpl implements PLoading {
  const _$PLoadingImpl();

  @override
  String toString() {
    return 'PickLocationState.ploading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$PLoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() ploading,
    required TResult Function() failure,
    required TResult Function(int id) success,
  }) {
    return ploading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? ploading,
    TResult? Function()? failure,
    TResult? Function(int id)? success,
  }) {
    return ploading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? ploading,
    TResult Function()? failure,
    TResult Function(int id)? success,
    required TResult orElse(),
  }) {
    if (ploading != null) {
      return ploading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(Loading value) loading,
    required TResult Function(PLoading value) ploading,
    required TResult Function(Failure value) failure,
    required TResult Function(Success value) success,
  }) {
    return ploading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(Loading value)? loading,
    TResult? Function(PLoading value)? ploading,
    TResult? Function(Failure value)? failure,
    TResult? Function(Success value)? success,
  }) {
    return ploading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(PLoading value)? ploading,
    TResult Function(Failure value)? failure,
    TResult Function(Success value)? success,
    required TResult orElse(),
  }) {
    if (ploading != null) {
      return ploading(this);
    }
    return orElse();
  }
}

abstract class PLoading implements PickLocationState {
  const factory PLoading() = _$PLoadingImpl;
}

/// @nodoc
abstract class _$$FailureImplCopyWith<$Res> {
  factory _$$FailureImplCopyWith(
          _$FailureImpl value, $Res Function(_$FailureImpl) then) =
      __$$FailureImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$FailureImplCopyWithImpl<$Res>
    extends _$PickLocationStateCopyWithImpl<$Res, _$FailureImpl>
    implements _$$FailureImplCopyWith<$Res> {
  __$$FailureImplCopyWithImpl(
      _$FailureImpl _value, $Res Function(_$FailureImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$FailureImpl implements Failure {
  const _$FailureImpl();

  @override
  String toString() {
    return 'PickLocationState.failure()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$FailureImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() ploading,
    required TResult Function() failure,
    required TResult Function(int id) success,
  }) {
    return failure();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? ploading,
    TResult? Function()? failure,
    TResult? Function(int id)? success,
  }) {
    return failure?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? ploading,
    TResult Function()? failure,
    TResult Function(int id)? success,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(Loading value) loading,
    required TResult Function(PLoading value) ploading,
    required TResult Function(Failure value) failure,
    required TResult Function(Success value) success,
  }) {
    return failure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(Loading value)? loading,
    TResult? Function(PLoading value)? ploading,
    TResult? Function(Failure value)? failure,
    TResult? Function(Success value)? success,
  }) {
    return failure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(PLoading value)? ploading,
    TResult Function(Failure value)? failure,
    TResult Function(Success value)? success,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(this);
    }
    return orElse();
  }
}

abstract class Failure implements PickLocationState {
  const factory Failure() = _$FailureImpl;
}

/// @nodoc
abstract class _$$SuccessImplCopyWith<$Res> {
  factory _$$SuccessImplCopyWith(
          _$SuccessImpl value, $Res Function(_$SuccessImpl) then) =
      __$$SuccessImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int id});
}

/// @nodoc
class __$$SuccessImplCopyWithImpl<$Res>
    extends _$PickLocationStateCopyWithImpl<$Res, _$SuccessImpl>
    implements _$$SuccessImplCopyWith<$Res> {
  __$$SuccessImplCopyWithImpl(
      _$SuccessImpl _value, $Res Function(_$SuccessImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
  }) {
    return _then(_$SuccessImpl(
      null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$SuccessImpl implements Success {
  const _$SuccessImpl(this.id);

  @override
  final int id;

  @override
  String toString() {
    return 'PickLocationState.success(id: $id)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SuccessImpl &&
            (identical(other.id, id) || other.id == id));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id);

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
    required TResult Function() ploading,
    required TResult Function() failure,
    required TResult Function(int id) success,
  }) {
    return success(id);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? ploading,
    TResult? Function()? failure,
    TResult? Function(int id)? success,
  }) {
    return success?.call(id);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? ploading,
    TResult Function()? failure,
    TResult Function(int id)? success,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(id);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(Loading value) loading,
    required TResult Function(PLoading value) ploading,
    required TResult Function(Failure value) failure,
    required TResult Function(Success value) success,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(Loading value)? loading,
    TResult? Function(PLoading value)? ploading,
    TResult? Function(Failure value)? failure,
    TResult? Function(Success value)? success,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(PLoading value)? ploading,
    TResult Function(Failure value)? failure,
    TResult Function(Success value)? success,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class Success implements PickLocationState {
  const factory Success(final int id) = _$SuccessImpl;

  int get id;
  @JsonKey(ignore: true)
  _$$SuccessImplCopyWith<_$SuccessImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
