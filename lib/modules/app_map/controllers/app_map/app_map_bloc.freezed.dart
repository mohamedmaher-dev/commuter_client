// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'app_map_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$AppMapEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool autoMove) started,
    required TResult Function(GoogleMapController controller) onMapCreated,
    required TResult Function(CameraPosition cameraPosition) onMapMove,
    required TResult Function(LocationData locationData) onLocationChanged,
    required TResult Function(Set<Marker> markers) setMarkers,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(bool autoMove)? started,
    TResult? Function(GoogleMapController controller)? onMapCreated,
    TResult? Function(CameraPosition cameraPosition)? onMapMove,
    TResult? Function(LocationData locationData)? onLocationChanged,
    TResult? Function(Set<Marker> markers)? setMarkers,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool autoMove)? started,
    TResult Function(GoogleMapController controller)? onMapCreated,
    TResult Function(CameraPosition cameraPosition)? onMapMove,
    TResult Function(LocationData locationData)? onLocationChanged,
    TResult Function(Set<Marker> markers)? setMarkers,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_OnMapCreated value) onMapCreated,
    required TResult Function(_OnMapMove value) onMapMove,
    required TResult Function(_OnLocationChanged value) onLocationChanged,
    required TResult Function(_SetMarkers value) setMarkers,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_OnMapCreated value)? onMapCreated,
    TResult? Function(_OnMapMove value)? onMapMove,
    TResult? Function(_OnLocationChanged value)? onLocationChanged,
    TResult? Function(_SetMarkers value)? setMarkers,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_OnMapCreated value)? onMapCreated,
    TResult Function(_OnMapMove value)? onMapMove,
    TResult Function(_OnLocationChanged value)? onLocationChanged,
    TResult Function(_SetMarkers value)? setMarkers,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AppMapEventCopyWith<$Res> {
  factory $AppMapEventCopyWith(
          AppMapEvent value, $Res Function(AppMapEvent) then) =
      _$AppMapEventCopyWithImpl<$Res, AppMapEvent>;
}

/// @nodoc
class _$AppMapEventCopyWithImpl<$Res, $Val extends AppMapEvent>
    implements $AppMapEventCopyWith<$Res> {
  _$AppMapEventCopyWithImpl(this._value, this._then);

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
  @useResult
  $Res call({bool autoMove});
}

/// @nodoc
class __$$StartedImplCopyWithImpl<$Res>
    extends _$AppMapEventCopyWithImpl<$Res, _$StartedImpl>
    implements _$$StartedImplCopyWith<$Res> {
  __$$StartedImplCopyWithImpl(
      _$StartedImpl _value, $Res Function(_$StartedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? autoMove = null,
  }) {
    return _then(_$StartedImpl(
      autoMove: null == autoMove
          ? _value.autoMove
          : autoMove // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$StartedImpl implements _Started {
  const _$StartedImpl({required this.autoMove});

  @override
  final bool autoMove;

  @override
  String toString() {
    return 'AppMapEvent.started(autoMove: $autoMove)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StartedImpl &&
            (identical(other.autoMove, autoMove) ||
                other.autoMove == autoMove));
  }

  @override
  int get hashCode => Object.hash(runtimeType, autoMove);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$StartedImplCopyWith<_$StartedImpl> get copyWith =>
      __$$StartedImplCopyWithImpl<_$StartedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool autoMove) started,
    required TResult Function(GoogleMapController controller) onMapCreated,
    required TResult Function(CameraPosition cameraPosition) onMapMove,
    required TResult Function(LocationData locationData) onLocationChanged,
    required TResult Function(Set<Marker> markers) setMarkers,
  }) {
    return started(autoMove);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(bool autoMove)? started,
    TResult? Function(GoogleMapController controller)? onMapCreated,
    TResult? Function(CameraPosition cameraPosition)? onMapMove,
    TResult? Function(LocationData locationData)? onLocationChanged,
    TResult? Function(Set<Marker> markers)? setMarkers,
  }) {
    return started?.call(autoMove);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool autoMove)? started,
    TResult Function(GoogleMapController controller)? onMapCreated,
    TResult Function(CameraPosition cameraPosition)? onMapMove,
    TResult Function(LocationData locationData)? onLocationChanged,
    TResult Function(Set<Marker> markers)? setMarkers,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(autoMove);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_OnMapCreated value) onMapCreated,
    required TResult Function(_OnMapMove value) onMapMove,
    required TResult Function(_OnLocationChanged value) onLocationChanged,
    required TResult Function(_SetMarkers value) setMarkers,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_OnMapCreated value)? onMapCreated,
    TResult? Function(_OnMapMove value)? onMapMove,
    TResult? Function(_OnLocationChanged value)? onLocationChanged,
    TResult? Function(_SetMarkers value)? setMarkers,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_OnMapCreated value)? onMapCreated,
    TResult Function(_OnMapMove value)? onMapMove,
    TResult Function(_OnLocationChanged value)? onLocationChanged,
    TResult Function(_SetMarkers value)? setMarkers,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class _Started implements AppMapEvent {
  const factory _Started({required final bool autoMove}) = _$StartedImpl;

  bool get autoMove;
  @JsonKey(ignore: true)
  _$$StartedImplCopyWith<_$StartedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$OnMapCreatedImplCopyWith<$Res> {
  factory _$$OnMapCreatedImplCopyWith(
          _$OnMapCreatedImpl value, $Res Function(_$OnMapCreatedImpl) then) =
      __$$OnMapCreatedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({GoogleMapController controller});
}

/// @nodoc
class __$$OnMapCreatedImplCopyWithImpl<$Res>
    extends _$AppMapEventCopyWithImpl<$Res, _$OnMapCreatedImpl>
    implements _$$OnMapCreatedImplCopyWith<$Res> {
  __$$OnMapCreatedImplCopyWithImpl(
      _$OnMapCreatedImpl _value, $Res Function(_$OnMapCreatedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? controller = null,
  }) {
    return _then(_$OnMapCreatedImpl(
      null == controller
          ? _value.controller
          : controller // ignore: cast_nullable_to_non_nullable
              as GoogleMapController,
    ));
  }
}

/// @nodoc

class _$OnMapCreatedImpl implements _OnMapCreated {
  const _$OnMapCreatedImpl(this.controller);

  @override
  final GoogleMapController controller;

  @override
  String toString() {
    return 'AppMapEvent.onMapCreated(controller: $controller)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OnMapCreatedImpl &&
            (identical(other.controller, controller) ||
                other.controller == controller));
  }

  @override
  int get hashCode => Object.hash(runtimeType, controller);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$OnMapCreatedImplCopyWith<_$OnMapCreatedImpl> get copyWith =>
      __$$OnMapCreatedImplCopyWithImpl<_$OnMapCreatedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool autoMove) started,
    required TResult Function(GoogleMapController controller) onMapCreated,
    required TResult Function(CameraPosition cameraPosition) onMapMove,
    required TResult Function(LocationData locationData) onLocationChanged,
    required TResult Function(Set<Marker> markers) setMarkers,
  }) {
    return onMapCreated(controller);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(bool autoMove)? started,
    TResult? Function(GoogleMapController controller)? onMapCreated,
    TResult? Function(CameraPosition cameraPosition)? onMapMove,
    TResult? Function(LocationData locationData)? onLocationChanged,
    TResult? Function(Set<Marker> markers)? setMarkers,
  }) {
    return onMapCreated?.call(controller);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool autoMove)? started,
    TResult Function(GoogleMapController controller)? onMapCreated,
    TResult Function(CameraPosition cameraPosition)? onMapMove,
    TResult Function(LocationData locationData)? onLocationChanged,
    TResult Function(Set<Marker> markers)? setMarkers,
    required TResult orElse(),
  }) {
    if (onMapCreated != null) {
      return onMapCreated(controller);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_OnMapCreated value) onMapCreated,
    required TResult Function(_OnMapMove value) onMapMove,
    required TResult Function(_OnLocationChanged value) onLocationChanged,
    required TResult Function(_SetMarkers value) setMarkers,
  }) {
    return onMapCreated(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_OnMapCreated value)? onMapCreated,
    TResult? Function(_OnMapMove value)? onMapMove,
    TResult? Function(_OnLocationChanged value)? onLocationChanged,
    TResult? Function(_SetMarkers value)? setMarkers,
  }) {
    return onMapCreated?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_OnMapCreated value)? onMapCreated,
    TResult Function(_OnMapMove value)? onMapMove,
    TResult Function(_OnLocationChanged value)? onLocationChanged,
    TResult Function(_SetMarkers value)? setMarkers,
    required TResult orElse(),
  }) {
    if (onMapCreated != null) {
      return onMapCreated(this);
    }
    return orElse();
  }
}

abstract class _OnMapCreated implements AppMapEvent {
  const factory _OnMapCreated(final GoogleMapController controller) =
      _$OnMapCreatedImpl;

  GoogleMapController get controller;
  @JsonKey(ignore: true)
  _$$OnMapCreatedImplCopyWith<_$OnMapCreatedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$OnMapMoveImplCopyWith<$Res> {
  factory _$$OnMapMoveImplCopyWith(
          _$OnMapMoveImpl value, $Res Function(_$OnMapMoveImpl) then) =
      __$$OnMapMoveImplCopyWithImpl<$Res>;
  @useResult
  $Res call({CameraPosition cameraPosition});
}

/// @nodoc
class __$$OnMapMoveImplCopyWithImpl<$Res>
    extends _$AppMapEventCopyWithImpl<$Res, _$OnMapMoveImpl>
    implements _$$OnMapMoveImplCopyWith<$Res> {
  __$$OnMapMoveImplCopyWithImpl(
      _$OnMapMoveImpl _value, $Res Function(_$OnMapMoveImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? cameraPosition = null,
  }) {
    return _then(_$OnMapMoveImpl(
      null == cameraPosition
          ? _value.cameraPosition
          : cameraPosition // ignore: cast_nullable_to_non_nullable
              as CameraPosition,
    ));
  }
}

/// @nodoc

class _$OnMapMoveImpl implements _OnMapMove {
  const _$OnMapMoveImpl(this.cameraPosition);

  @override
  final CameraPosition cameraPosition;

  @override
  String toString() {
    return 'AppMapEvent.onMapMove(cameraPosition: $cameraPosition)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OnMapMoveImpl &&
            (identical(other.cameraPosition, cameraPosition) ||
                other.cameraPosition == cameraPosition));
  }

  @override
  int get hashCode => Object.hash(runtimeType, cameraPosition);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$OnMapMoveImplCopyWith<_$OnMapMoveImpl> get copyWith =>
      __$$OnMapMoveImplCopyWithImpl<_$OnMapMoveImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool autoMove) started,
    required TResult Function(GoogleMapController controller) onMapCreated,
    required TResult Function(CameraPosition cameraPosition) onMapMove,
    required TResult Function(LocationData locationData) onLocationChanged,
    required TResult Function(Set<Marker> markers) setMarkers,
  }) {
    return onMapMove(cameraPosition);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(bool autoMove)? started,
    TResult? Function(GoogleMapController controller)? onMapCreated,
    TResult? Function(CameraPosition cameraPosition)? onMapMove,
    TResult? Function(LocationData locationData)? onLocationChanged,
    TResult? Function(Set<Marker> markers)? setMarkers,
  }) {
    return onMapMove?.call(cameraPosition);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool autoMove)? started,
    TResult Function(GoogleMapController controller)? onMapCreated,
    TResult Function(CameraPosition cameraPosition)? onMapMove,
    TResult Function(LocationData locationData)? onLocationChanged,
    TResult Function(Set<Marker> markers)? setMarkers,
    required TResult orElse(),
  }) {
    if (onMapMove != null) {
      return onMapMove(cameraPosition);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_OnMapCreated value) onMapCreated,
    required TResult Function(_OnMapMove value) onMapMove,
    required TResult Function(_OnLocationChanged value) onLocationChanged,
    required TResult Function(_SetMarkers value) setMarkers,
  }) {
    return onMapMove(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_OnMapCreated value)? onMapCreated,
    TResult? Function(_OnMapMove value)? onMapMove,
    TResult? Function(_OnLocationChanged value)? onLocationChanged,
    TResult? Function(_SetMarkers value)? setMarkers,
  }) {
    return onMapMove?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_OnMapCreated value)? onMapCreated,
    TResult Function(_OnMapMove value)? onMapMove,
    TResult Function(_OnLocationChanged value)? onLocationChanged,
    TResult Function(_SetMarkers value)? setMarkers,
    required TResult orElse(),
  }) {
    if (onMapMove != null) {
      return onMapMove(this);
    }
    return orElse();
  }
}

abstract class _OnMapMove implements AppMapEvent {
  const factory _OnMapMove(final CameraPosition cameraPosition) =
      _$OnMapMoveImpl;

  CameraPosition get cameraPosition;
  @JsonKey(ignore: true)
  _$$OnMapMoveImplCopyWith<_$OnMapMoveImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$OnLocationChangedImplCopyWith<$Res> {
  factory _$$OnLocationChangedImplCopyWith(_$OnLocationChangedImpl value,
          $Res Function(_$OnLocationChangedImpl) then) =
      __$$OnLocationChangedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({LocationData locationData});
}

/// @nodoc
class __$$OnLocationChangedImplCopyWithImpl<$Res>
    extends _$AppMapEventCopyWithImpl<$Res, _$OnLocationChangedImpl>
    implements _$$OnLocationChangedImplCopyWith<$Res> {
  __$$OnLocationChangedImplCopyWithImpl(_$OnLocationChangedImpl _value,
      $Res Function(_$OnLocationChangedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? locationData = null,
  }) {
    return _then(_$OnLocationChangedImpl(
      null == locationData
          ? _value.locationData
          : locationData // ignore: cast_nullable_to_non_nullable
              as LocationData,
    ));
  }
}

/// @nodoc

class _$OnLocationChangedImpl implements _OnLocationChanged {
  const _$OnLocationChangedImpl(this.locationData);

  @override
  final LocationData locationData;

  @override
  String toString() {
    return 'AppMapEvent.onLocationChanged(locationData: $locationData)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OnLocationChangedImpl &&
            (identical(other.locationData, locationData) ||
                other.locationData == locationData));
  }

  @override
  int get hashCode => Object.hash(runtimeType, locationData);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$OnLocationChangedImplCopyWith<_$OnLocationChangedImpl> get copyWith =>
      __$$OnLocationChangedImplCopyWithImpl<_$OnLocationChangedImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool autoMove) started,
    required TResult Function(GoogleMapController controller) onMapCreated,
    required TResult Function(CameraPosition cameraPosition) onMapMove,
    required TResult Function(LocationData locationData) onLocationChanged,
    required TResult Function(Set<Marker> markers) setMarkers,
  }) {
    return onLocationChanged(locationData);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(bool autoMove)? started,
    TResult? Function(GoogleMapController controller)? onMapCreated,
    TResult? Function(CameraPosition cameraPosition)? onMapMove,
    TResult? Function(LocationData locationData)? onLocationChanged,
    TResult? Function(Set<Marker> markers)? setMarkers,
  }) {
    return onLocationChanged?.call(locationData);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool autoMove)? started,
    TResult Function(GoogleMapController controller)? onMapCreated,
    TResult Function(CameraPosition cameraPosition)? onMapMove,
    TResult Function(LocationData locationData)? onLocationChanged,
    TResult Function(Set<Marker> markers)? setMarkers,
    required TResult orElse(),
  }) {
    if (onLocationChanged != null) {
      return onLocationChanged(locationData);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_OnMapCreated value) onMapCreated,
    required TResult Function(_OnMapMove value) onMapMove,
    required TResult Function(_OnLocationChanged value) onLocationChanged,
    required TResult Function(_SetMarkers value) setMarkers,
  }) {
    return onLocationChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_OnMapCreated value)? onMapCreated,
    TResult? Function(_OnMapMove value)? onMapMove,
    TResult? Function(_OnLocationChanged value)? onLocationChanged,
    TResult? Function(_SetMarkers value)? setMarkers,
  }) {
    return onLocationChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_OnMapCreated value)? onMapCreated,
    TResult Function(_OnMapMove value)? onMapMove,
    TResult Function(_OnLocationChanged value)? onLocationChanged,
    TResult Function(_SetMarkers value)? setMarkers,
    required TResult orElse(),
  }) {
    if (onLocationChanged != null) {
      return onLocationChanged(this);
    }
    return orElse();
  }
}

abstract class _OnLocationChanged implements AppMapEvent {
  const factory _OnLocationChanged(final LocationData locationData) =
      _$OnLocationChangedImpl;

  LocationData get locationData;
  @JsonKey(ignore: true)
  _$$OnLocationChangedImplCopyWith<_$OnLocationChangedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SetMarkersImplCopyWith<$Res> {
  factory _$$SetMarkersImplCopyWith(
          _$SetMarkersImpl value, $Res Function(_$SetMarkersImpl) then) =
      __$$SetMarkersImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Set<Marker> markers});
}

/// @nodoc
class __$$SetMarkersImplCopyWithImpl<$Res>
    extends _$AppMapEventCopyWithImpl<$Res, _$SetMarkersImpl>
    implements _$$SetMarkersImplCopyWith<$Res> {
  __$$SetMarkersImplCopyWithImpl(
      _$SetMarkersImpl _value, $Res Function(_$SetMarkersImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? markers = null,
  }) {
    return _then(_$SetMarkersImpl(
      null == markers
          ? _value._markers
          : markers // ignore: cast_nullable_to_non_nullable
              as Set<Marker>,
    ));
  }
}

/// @nodoc

class _$SetMarkersImpl implements _SetMarkers {
  const _$SetMarkersImpl(final Set<Marker> markers) : _markers = markers;

  final Set<Marker> _markers;
  @override
  Set<Marker> get markers {
    if (_markers is EqualUnmodifiableSetView) return _markers;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableSetView(_markers);
  }

  @override
  String toString() {
    return 'AppMapEvent.setMarkers(markers: $markers)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SetMarkersImpl &&
            const DeepCollectionEquality().equals(other._markers, _markers));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_markers));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SetMarkersImplCopyWith<_$SetMarkersImpl> get copyWith =>
      __$$SetMarkersImplCopyWithImpl<_$SetMarkersImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool autoMove) started,
    required TResult Function(GoogleMapController controller) onMapCreated,
    required TResult Function(CameraPosition cameraPosition) onMapMove,
    required TResult Function(LocationData locationData) onLocationChanged,
    required TResult Function(Set<Marker> markers) setMarkers,
  }) {
    return setMarkers(markers);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(bool autoMove)? started,
    TResult? Function(GoogleMapController controller)? onMapCreated,
    TResult? Function(CameraPosition cameraPosition)? onMapMove,
    TResult? Function(LocationData locationData)? onLocationChanged,
    TResult? Function(Set<Marker> markers)? setMarkers,
  }) {
    return setMarkers?.call(markers);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool autoMove)? started,
    TResult Function(GoogleMapController controller)? onMapCreated,
    TResult Function(CameraPosition cameraPosition)? onMapMove,
    TResult Function(LocationData locationData)? onLocationChanged,
    TResult Function(Set<Marker> markers)? setMarkers,
    required TResult orElse(),
  }) {
    if (setMarkers != null) {
      return setMarkers(markers);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_OnMapCreated value) onMapCreated,
    required TResult Function(_OnMapMove value) onMapMove,
    required TResult Function(_OnLocationChanged value) onLocationChanged,
    required TResult Function(_SetMarkers value) setMarkers,
  }) {
    return setMarkers(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_OnMapCreated value)? onMapCreated,
    TResult? Function(_OnMapMove value)? onMapMove,
    TResult? Function(_OnLocationChanged value)? onLocationChanged,
    TResult? Function(_SetMarkers value)? setMarkers,
  }) {
    return setMarkers?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_OnMapCreated value)? onMapCreated,
    TResult Function(_OnMapMove value)? onMapMove,
    TResult Function(_OnLocationChanged value)? onLocationChanged,
    TResult Function(_SetMarkers value)? setMarkers,
    required TResult orElse(),
  }) {
    if (setMarkers != null) {
      return setMarkers(this);
    }
    return orElse();
  }
}

abstract class _SetMarkers implements AppMapEvent {
  const factory _SetMarkers(final Set<Marker> markers) = _$SetMarkersImpl;

  Set<Marker> get markers;
  @JsonKey(ignore: true)
  _$$SetMarkersImplCopyWith<_$SetMarkersImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$AppMapState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(int id) success,
    required TResult Function() failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(int id)? success,
    TResult? Function()? failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(int id)? success,
    TResult Function()? failure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Success value) success,
    required TResult Function(_Failure value) failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Success value)? success,
    TResult? Function(_Failure value)? failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Success value)? success,
    TResult Function(_Failure value)? failure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AppMapStateCopyWith<$Res> {
  factory $AppMapStateCopyWith(
          AppMapState value, $Res Function(AppMapState) then) =
      _$AppMapStateCopyWithImpl<$Res, AppMapState>;
}

/// @nodoc
class _$AppMapStateCopyWithImpl<$Res, $Val extends AppMapState>
    implements $AppMapStateCopyWith<$Res> {
  _$AppMapStateCopyWithImpl(this._value, this._then);

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
    extends _$AppMapStateCopyWithImpl<$Res, _$InitialImpl>
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
    return 'AppMapState.initial()';
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
    required TResult Function(int id) success,
    required TResult Function() failure,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(int id)? success,
    TResult? Function()? failure,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(int id)? success,
    TResult Function()? failure,
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
    required TResult Function(_Loading value) loading,
    required TResult Function(_Success value) success,
    required TResult Function(_Failure value) failure,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Success value)? success,
    TResult? Function(_Failure value)? failure,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Success value)? success,
    TResult Function(_Failure value)? failure,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements AppMapState {
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
    extends _$AppMapStateCopyWithImpl<$Res, _$LoadingImpl>
    implements _$$LoadingImplCopyWith<$Res> {
  __$$LoadingImplCopyWithImpl(
      _$LoadingImpl _value, $Res Function(_$LoadingImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$LoadingImpl implements _Loading {
  const _$LoadingImpl();

  @override
  String toString() {
    return 'AppMapState.loading()';
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
    required TResult Function(int id) success,
    required TResult Function() failure,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(int id)? success,
    TResult? Function()? failure,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(int id)? success,
    TResult Function()? failure,
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
    required TResult Function(_Loading value) loading,
    required TResult Function(_Success value) success,
    required TResult Function(_Failure value) failure,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Success value)? success,
    TResult? Function(_Failure value)? failure,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Success value)? success,
    TResult Function(_Failure value)? failure,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _Loading implements AppMapState {
  const factory _Loading() = _$LoadingImpl;
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
    extends _$AppMapStateCopyWithImpl<$Res, _$SuccessImpl>
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

class _$SuccessImpl implements _Success {
  const _$SuccessImpl(this.id);

  @override
  final int id;

  @override
  String toString() {
    return 'AppMapState.success(id: $id)';
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
    required TResult Function(int id) success,
    required TResult Function() failure,
  }) {
    return success(id);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(int id)? success,
    TResult? Function()? failure,
  }) {
    return success?.call(id);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(int id)? success,
    TResult Function()? failure,
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
    required TResult Function(_Loading value) loading,
    required TResult Function(_Success value) success,
    required TResult Function(_Failure value) failure,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Success value)? success,
    TResult? Function(_Failure value)? failure,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Success value)? success,
    TResult Function(_Failure value)? failure,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class _Success implements AppMapState {
  const factory _Success(final int id) = _$SuccessImpl;

  int get id;
  @JsonKey(ignore: true)
  _$$SuccessImplCopyWith<_$SuccessImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$FailureImplCopyWith<$Res> {
  factory _$$FailureImplCopyWith(
          _$FailureImpl value, $Res Function(_$FailureImpl) then) =
      __$$FailureImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$FailureImplCopyWithImpl<$Res>
    extends _$AppMapStateCopyWithImpl<$Res, _$FailureImpl>
    implements _$$FailureImplCopyWith<$Res> {
  __$$FailureImplCopyWithImpl(
      _$FailureImpl _value, $Res Function(_$FailureImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$FailureImpl implements _Failure {
  const _$FailureImpl();

  @override
  String toString() {
    return 'AppMapState.failure()';
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
    required TResult Function(int id) success,
    required TResult Function() failure,
  }) {
    return failure();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(int id)? success,
    TResult? Function()? failure,
  }) {
    return failure?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(int id)? success,
    TResult Function()? failure,
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
    required TResult Function(_Loading value) loading,
    required TResult Function(_Success value) success,
    required TResult Function(_Failure value) failure,
  }) {
    return failure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Success value)? success,
    TResult? Function(_Failure value)? failure,
  }) {
    return failure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Success value)? success,
    TResult Function(_Failure value)? failure,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(this);
    }
    return orElse();
  }
}

abstract class _Failure implements AppMapState {
  const factory _Failure() = _$FailureImpl;
}
