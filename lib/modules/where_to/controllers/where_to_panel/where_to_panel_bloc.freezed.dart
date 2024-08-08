// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'where_to_panel_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$WhereToPanelEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(PredictionModel predictionModel,
            LocationFieldType locationFieldType)
        onSelectPlace,
    required TResult Function(LocationFieldType locationFieldType)
        onSelectCurrentLocation,
    required TResult Function(
            LatLng location, LocationFieldType locationFieldType)
        onSelectFromMap,
    required TResult Function(LocationFieldType locationFieldType)
        deleteLocationData,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(PredictionModel predictionModel,
            LocationFieldType locationFieldType)?
        onSelectPlace,
    TResult? Function(LocationFieldType locationFieldType)?
        onSelectCurrentLocation,
    TResult? Function(LatLng location, LocationFieldType locationFieldType)?
        onSelectFromMap,
    TResult? Function(LocationFieldType locationFieldType)? deleteLocationData,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(PredictionModel predictionModel,
            LocationFieldType locationFieldType)?
        onSelectPlace,
    TResult Function(LocationFieldType locationFieldType)?
        onSelectCurrentLocation,
    TResult Function(LatLng location, LocationFieldType locationFieldType)?
        onSelectFromMap,
    TResult Function(LocationFieldType locationFieldType)? deleteLocationData,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_OnSelectPlace value) onSelectPlace,
    required TResult Function(_OnSelectCurrentLocation value)
        onSelectCurrentLocation,
    required TResult Function(_OnSelectFromMap value) onSelectFromMap,
    required TResult Function(_DeleteLocationData value) deleteLocationData,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_OnSelectPlace value)? onSelectPlace,
    TResult? Function(_OnSelectCurrentLocation value)? onSelectCurrentLocation,
    TResult? Function(_OnSelectFromMap value)? onSelectFromMap,
    TResult? Function(_DeleteLocationData value)? deleteLocationData,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_OnSelectPlace value)? onSelectPlace,
    TResult Function(_OnSelectCurrentLocation value)? onSelectCurrentLocation,
    TResult Function(_OnSelectFromMap value)? onSelectFromMap,
    TResult Function(_DeleteLocationData value)? deleteLocationData,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WhereToPanelEventCopyWith<$Res> {
  factory $WhereToPanelEventCopyWith(
          WhereToPanelEvent value, $Res Function(WhereToPanelEvent) then) =
      _$WhereToPanelEventCopyWithImpl<$Res, WhereToPanelEvent>;
}

/// @nodoc
class _$WhereToPanelEventCopyWithImpl<$Res, $Val extends WhereToPanelEvent>
    implements $WhereToPanelEventCopyWith<$Res> {
  _$WhereToPanelEventCopyWithImpl(this._value, this._then);

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
    extends _$WhereToPanelEventCopyWithImpl<$Res, _$StartedImpl>
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
    return 'WhereToPanelEvent.started()';
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
    required TResult Function(PredictionModel predictionModel,
            LocationFieldType locationFieldType)
        onSelectPlace,
    required TResult Function(LocationFieldType locationFieldType)
        onSelectCurrentLocation,
    required TResult Function(
            LatLng location, LocationFieldType locationFieldType)
        onSelectFromMap,
    required TResult Function(LocationFieldType locationFieldType)
        deleteLocationData,
  }) {
    return started();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(PredictionModel predictionModel,
            LocationFieldType locationFieldType)?
        onSelectPlace,
    TResult? Function(LocationFieldType locationFieldType)?
        onSelectCurrentLocation,
    TResult? Function(LatLng location, LocationFieldType locationFieldType)?
        onSelectFromMap,
    TResult? Function(LocationFieldType locationFieldType)? deleteLocationData,
  }) {
    return started?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(PredictionModel predictionModel,
            LocationFieldType locationFieldType)?
        onSelectPlace,
    TResult Function(LocationFieldType locationFieldType)?
        onSelectCurrentLocation,
    TResult Function(LatLng location, LocationFieldType locationFieldType)?
        onSelectFromMap,
    TResult Function(LocationFieldType locationFieldType)? deleteLocationData,
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
    required TResult Function(_OnSelectPlace value) onSelectPlace,
    required TResult Function(_OnSelectCurrentLocation value)
        onSelectCurrentLocation,
    required TResult Function(_OnSelectFromMap value) onSelectFromMap,
    required TResult Function(_DeleteLocationData value) deleteLocationData,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_OnSelectPlace value)? onSelectPlace,
    TResult? Function(_OnSelectCurrentLocation value)? onSelectCurrentLocation,
    TResult? Function(_OnSelectFromMap value)? onSelectFromMap,
    TResult? Function(_DeleteLocationData value)? deleteLocationData,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_OnSelectPlace value)? onSelectPlace,
    TResult Function(_OnSelectCurrentLocation value)? onSelectCurrentLocation,
    TResult Function(_OnSelectFromMap value)? onSelectFromMap,
    TResult Function(_DeleteLocationData value)? deleteLocationData,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class _Started implements WhereToPanelEvent {
  const factory _Started() = _$StartedImpl;
}

/// @nodoc
abstract class _$$OnSelectPlaceImplCopyWith<$Res> {
  factory _$$OnSelectPlaceImplCopyWith(
          _$OnSelectPlaceImpl value, $Res Function(_$OnSelectPlaceImpl) then) =
      __$$OnSelectPlaceImplCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {PredictionModel predictionModel, LocationFieldType locationFieldType});
}

/// @nodoc
class __$$OnSelectPlaceImplCopyWithImpl<$Res>
    extends _$WhereToPanelEventCopyWithImpl<$Res, _$OnSelectPlaceImpl>
    implements _$$OnSelectPlaceImplCopyWith<$Res> {
  __$$OnSelectPlaceImplCopyWithImpl(
      _$OnSelectPlaceImpl _value, $Res Function(_$OnSelectPlaceImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? predictionModel = null,
    Object? locationFieldType = null,
  }) {
    return _then(_$OnSelectPlaceImpl(
      predictionModel: null == predictionModel
          ? _value.predictionModel
          : predictionModel // ignore: cast_nullable_to_non_nullable
              as PredictionModel,
      locationFieldType: null == locationFieldType
          ? _value.locationFieldType
          : locationFieldType // ignore: cast_nullable_to_non_nullable
              as LocationFieldType,
    ));
  }
}

/// @nodoc

class _$OnSelectPlaceImpl implements _OnSelectPlace {
  const _$OnSelectPlaceImpl(
      {required this.predictionModel, required this.locationFieldType});

  @override
  final PredictionModel predictionModel;
  @override
  final LocationFieldType locationFieldType;

  @override
  String toString() {
    return 'WhereToPanelEvent.onSelectPlace(predictionModel: $predictionModel, locationFieldType: $locationFieldType)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OnSelectPlaceImpl &&
            (identical(other.predictionModel, predictionModel) ||
                other.predictionModel == predictionModel) &&
            (identical(other.locationFieldType, locationFieldType) ||
                other.locationFieldType == locationFieldType));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, predictionModel, locationFieldType);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$OnSelectPlaceImplCopyWith<_$OnSelectPlaceImpl> get copyWith =>
      __$$OnSelectPlaceImplCopyWithImpl<_$OnSelectPlaceImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(PredictionModel predictionModel,
            LocationFieldType locationFieldType)
        onSelectPlace,
    required TResult Function(LocationFieldType locationFieldType)
        onSelectCurrentLocation,
    required TResult Function(
            LatLng location, LocationFieldType locationFieldType)
        onSelectFromMap,
    required TResult Function(LocationFieldType locationFieldType)
        deleteLocationData,
  }) {
    return onSelectPlace(predictionModel, locationFieldType);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(PredictionModel predictionModel,
            LocationFieldType locationFieldType)?
        onSelectPlace,
    TResult? Function(LocationFieldType locationFieldType)?
        onSelectCurrentLocation,
    TResult? Function(LatLng location, LocationFieldType locationFieldType)?
        onSelectFromMap,
    TResult? Function(LocationFieldType locationFieldType)? deleteLocationData,
  }) {
    return onSelectPlace?.call(predictionModel, locationFieldType);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(PredictionModel predictionModel,
            LocationFieldType locationFieldType)?
        onSelectPlace,
    TResult Function(LocationFieldType locationFieldType)?
        onSelectCurrentLocation,
    TResult Function(LatLng location, LocationFieldType locationFieldType)?
        onSelectFromMap,
    TResult Function(LocationFieldType locationFieldType)? deleteLocationData,
    required TResult orElse(),
  }) {
    if (onSelectPlace != null) {
      return onSelectPlace(predictionModel, locationFieldType);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_OnSelectPlace value) onSelectPlace,
    required TResult Function(_OnSelectCurrentLocation value)
        onSelectCurrentLocation,
    required TResult Function(_OnSelectFromMap value) onSelectFromMap,
    required TResult Function(_DeleteLocationData value) deleteLocationData,
  }) {
    return onSelectPlace(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_OnSelectPlace value)? onSelectPlace,
    TResult? Function(_OnSelectCurrentLocation value)? onSelectCurrentLocation,
    TResult? Function(_OnSelectFromMap value)? onSelectFromMap,
    TResult? Function(_DeleteLocationData value)? deleteLocationData,
  }) {
    return onSelectPlace?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_OnSelectPlace value)? onSelectPlace,
    TResult Function(_OnSelectCurrentLocation value)? onSelectCurrentLocation,
    TResult Function(_OnSelectFromMap value)? onSelectFromMap,
    TResult Function(_DeleteLocationData value)? deleteLocationData,
    required TResult orElse(),
  }) {
    if (onSelectPlace != null) {
      return onSelectPlace(this);
    }
    return orElse();
  }
}

abstract class _OnSelectPlace implements WhereToPanelEvent {
  const factory _OnSelectPlace(
          {required final PredictionModel predictionModel,
          required final LocationFieldType locationFieldType}) =
      _$OnSelectPlaceImpl;

  PredictionModel get predictionModel;
  LocationFieldType get locationFieldType;
  @JsonKey(ignore: true)
  _$$OnSelectPlaceImplCopyWith<_$OnSelectPlaceImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$OnSelectCurrentLocationImplCopyWith<$Res> {
  factory _$$OnSelectCurrentLocationImplCopyWith(
          _$OnSelectCurrentLocationImpl value,
          $Res Function(_$OnSelectCurrentLocationImpl) then) =
      __$$OnSelectCurrentLocationImplCopyWithImpl<$Res>;
  @useResult
  $Res call({LocationFieldType locationFieldType});
}

/// @nodoc
class __$$OnSelectCurrentLocationImplCopyWithImpl<$Res>
    extends _$WhereToPanelEventCopyWithImpl<$Res, _$OnSelectCurrentLocationImpl>
    implements _$$OnSelectCurrentLocationImplCopyWith<$Res> {
  __$$OnSelectCurrentLocationImplCopyWithImpl(
      _$OnSelectCurrentLocationImpl _value,
      $Res Function(_$OnSelectCurrentLocationImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? locationFieldType = null,
  }) {
    return _then(_$OnSelectCurrentLocationImpl(
      locationFieldType: null == locationFieldType
          ? _value.locationFieldType
          : locationFieldType // ignore: cast_nullable_to_non_nullable
              as LocationFieldType,
    ));
  }
}

/// @nodoc

class _$OnSelectCurrentLocationImpl implements _OnSelectCurrentLocation {
  const _$OnSelectCurrentLocationImpl({required this.locationFieldType});

  @override
  final LocationFieldType locationFieldType;

  @override
  String toString() {
    return 'WhereToPanelEvent.onSelectCurrentLocation(locationFieldType: $locationFieldType)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OnSelectCurrentLocationImpl &&
            (identical(other.locationFieldType, locationFieldType) ||
                other.locationFieldType == locationFieldType));
  }

  @override
  int get hashCode => Object.hash(runtimeType, locationFieldType);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$OnSelectCurrentLocationImplCopyWith<_$OnSelectCurrentLocationImpl>
      get copyWith => __$$OnSelectCurrentLocationImplCopyWithImpl<
          _$OnSelectCurrentLocationImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(PredictionModel predictionModel,
            LocationFieldType locationFieldType)
        onSelectPlace,
    required TResult Function(LocationFieldType locationFieldType)
        onSelectCurrentLocation,
    required TResult Function(
            LatLng location, LocationFieldType locationFieldType)
        onSelectFromMap,
    required TResult Function(LocationFieldType locationFieldType)
        deleteLocationData,
  }) {
    return onSelectCurrentLocation(locationFieldType);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(PredictionModel predictionModel,
            LocationFieldType locationFieldType)?
        onSelectPlace,
    TResult? Function(LocationFieldType locationFieldType)?
        onSelectCurrentLocation,
    TResult? Function(LatLng location, LocationFieldType locationFieldType)?
        onSelectFromMap,
    TResult? Function(LocationFieldType locationFieldType)? deleteLocationData,
  }) {
    return onSelectCurrentLocation?.call(locationFieldType);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(PredictionModel predictionModel,
            LocationFieldType locationFieldType)?
        onSelectPlace,
    TResult Function(LocationFieldType locationFieldType)?
        onSelectCurrentLocation,
    TResult Function(LatLng location, LocationFieldType locationFieldType)?
        onSelectFromMap,
    TResult Function(LocationFieldType locationFieldType)? deleteLocationData,
    required TResult orElse(),
  }) {
    if (onSelectCurrentLocation != null) {
      return onSelectCurrentLocation(locationFieldType);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_OnSelectPlace value) onSelectPlace,
    required TResult Function(_OnSelectCurrentLocation value)
        onSelectCurrentLocation,
    required TResult Function(_OnSelectFromMap value) onSelectFromMap,
    required TResult Function(_DeleteLocationData value) deleteLocationData,
  }) {
    return onSelectCurrentLocation(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_OnSelectPlace value)? onSelectPlace,
    TResult? Function(_OnSelectCurrentLocation value)? onSelectCurrentLocation,
    TResult? Function(_OnSelectFromMap value)? onSelectFromMap,
    TResult? Function(_DeleteLocationData value)? deleteLocationData,
  }) {
    return onSelectCurrentLocation?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_OnSelectPlace value)? onSelectPlace,
    TResult Function(_OnSelectCurrentLocation value)? onSelectCurrentLocation,
    TResult Function(_OnSelectFromMap value)? onSelectFromMap,
    TResult Function(_DeleteLocationData value)? deleteLocationData,
    required TResult orElse(),
  }) {
    if (onSelectCurrentLocation != null) {
      return onSelectCurrentLocation(this);
    }
    return orElse();
  }
}

abstract class _OnSelectCurrentLocation implements WhereToPanelEvent {
  const factory _OnSelectCurrentLocation(
          {required final LocationFieldType locationFieldType}) =
      _$OnSelectCurrentLocationImpl;

  LocationFieldType get locationFieldType;
  @JsonKey(ignore: true)
  _$$OnSelectCurrentLocationImplCopyWith<_$OnSelectCurrentLocationImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$OnSelectFromMapImplCopyWith<$Res> {
  factory _$$OnSelectFromMapImplCopyWith(_$OnSelectFromMapImpl value,
          $Res Function(_$OnSelectFromMapImpl) then) =
      __$$OnSelectFromMapImplCopyWithImpl<$Res>;
  @useResult
  $Res call({LatLng location, LocationFieldType locationFieldType});
}

/// @nodoc
class __$$OnSelectFromMapImplCopyWithImpl<$Res>
    extends _$WhereToPanelEventCopyWithImpl<$Res, _$OnSelectFromMapImpl>
    implements _$$OnSelectFromMapImplCopyWith<$Res> {
  __$$OnSelectFromMapImplCopyWithImpl(
      _$OnSelectFromMapImpl _value, $Res Function(_$OnSelectFromMapImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? location = null,
    Object? locationFieldType = null,
  }) {
    return _then(_$OnSelectFromMapImpl(
      location: null == location
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as LatLng,
      locationFieldType: null == locationFieldType
          ? _value.locationFieldType
          : locationFieldType // ignore: cast_nullable_to_non_nullable
              as LocationFieldType,
    ));
  }
}

/// @nodoc

class _$OnSelectFromMapImpl implements _OnSelectFromMap {
  const _$OnSelectFromMapImpl(
      {required this.location, required this.locationFieldType});

  @override
  final LatLng location;
  @override
  final LocationFieldType locationFieldType;

  @override
  String toString() {
    return 'WhereToPanelEvent.onSelectFromMap(location: $location, locationFieldType: $locationFieldType)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OnSelectFromMapImpl &&
            (identical(other.location, location) ||
                other.location == location) &&
            (identical(other.locationFieldType, locationFieldType) ||
                other.locationFieldType == locationFieldType));
  }

  @override
  int get hashCode => Object.hash(runtimeType, location, locationFieldType);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$OnSelectFromMapImplCopyWith<_$OnSelectFromMapImpl> get copyWith =>
      __$$OnSelectFromMapImplCopyWithImpl<_$OnSelectFromMapImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(PredictionModel predictionModel,
            LocationFieldType locationFieldType)
        onSelectPlace,
    required TResult Function(LocationFieldType locationFieldType)
        onSelectCurrentLocation,
    required TResult Function(
            LatLng location, LocationFieldType locationFieldType)
        onSelectFromMap,
    required TResult Function(LocationFieldType locationFieldType)
        deleteLocationData,
  }) {
    return onSelectFromMap(location, locationFieldType);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(PredictionModel predictionModel,
            LocationFieldType locationFieldType)?
        onSelectPlace,
    TResult? Function(LocationFieldType locationFieldType)?
        onSelectCurrentLocation,
    TResult? Function(LatLng location, LocationFieldType locationFieldType)?
        onSelectFromMap,
    TResult? Function(LocationFieldType locationFieldType)? deleteLocationData,
  }) {
    return onSelectFromMap?.call(location, locationFieldType);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(PredictionModel predictionModel,
            LocationFieldType locationFieldType)?
        onSelectPlace,
    TResult Function(LocationFieldType locationFieldType)?
        onSelectCurrentLocation,
    TResult Function(LatLng location, LocationFieldType locationFieldType)?
        onSelectFromMap,
    TResult Function(LocationFieldType locationFieldType)? deleteLocationData,
    required TResult orElse(),
  }) {
    if (onSelectFromMap != null) {
      return onSelectFromMap(location, locationFieldType);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_OnSelectPlace value) onSelectPlace,
    required TResult Function(_OnSelectCurrentLocation value)
        onSelectCurrentLocation,
    required TResult Function(_OnSelectFromMap value) onSelectFromMap,
    required TResult Function(_DeleteLocationData value) deleteLocationData,
  }) {
    return onSelectFromMap(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_OnSelectPlace value)? onSelectPlace,
    TResult? Function(_OnSelectCurrentLocation value)? onSelectCurrentLocation,
    TResult? Function(_OnSelectFromMap value)? onSelectFromMap,
    TResult? Function(_DeleteLocationData value)? deleteLocationData,
  }) {
    return onSelectFromMap?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_OnSelectPlace value)? onSelectPlace,
    TResult Function(_OnSelectCurrentLocation value)? onSelectCurrentLocation,
    TResult Function(_OnSelectFromMap value)? onSelectFromMap,
    TResult Function(_DeleteLocationData value)? deleteLocationData,
    required TResult orElse(),
  }) {
    if (onSelectFromMap != null) {
      return onSelectFromMap(this);
    }
    return orElse();
  }
}

abstract class _OnSelectFromMap implements WhereToPanelEvent {
  const factory _OnSelectFromMap(
          {required final LatLng location,
          required final LocationFieldType locationFieldType}) =
      _$OnSelectFromMapImpl;

  LatLng get location;
  LocationFieldType get locationFieldType;
  @JsonKey(ignore: true)
  _$$OnSelectFromMapImplCopyWith<_$OnSelectFromMapImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$DeleteLocationDataImplCopyWith<$Res> {
  factory _$$DeleteLocationDataImplCopyWith(_$DeleteLocationDataImpl value,
          $Res Function(_$DeleteLocationDataImpl) then) =
      __$$DeleteLocationDataImplCopyWithImpl<$Res>;
  @useResult
  $Res call({LocationFieldType locationFieldType});
}

/// @nodoc
class __$$DeleteLocationDataImplCopyWithImpl<$Res>
    extends _$WhereToPanelEventCopyWithImpl<$Res, _$DeleteLocationDataImpl>
    implements _$$DeleteLocationDataImplCopyWith<$Res> {
  __$$DeleteLocationDataImplCopyWithImpl(_$DeleteLocationDataImpl _value,
      $Res Function(_$DeleteLocationDataImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? locationFieldType = null,
  }) {
    return _then(_$DeleteLocationDataImpl(
      locationFieldType: null == locationFieldType
          ? _value.locationFieldType
          : locationFieldType // ignore: cast_nullable_to_non_nullable
              as LocationFieldType,
    ));
  }
}

/// @nodoc

class _$DeleteLocationDataImpl implements _DeleteLocationData {
  const _$DeleteLocationDataImpl({required this.locationFieldType});

  @override
  final LocationFieldType locationFieldType;

  @override
  String toString() {
    return 'WhereToPanelEvent.deleteLocationData(locationFieldType: $locationFieldType)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DeleteLocationDataImpl &&
            (identical(other.locationFieldType, locationFieldType) ||
                other.locationFieldType == locationFieldType));
  }

  @override
  int get hashCode => Object.hash(runtimeType, locationFieldType);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DeleteLocationDataImplCopyWith<_$DeleteLocationDataImpl> get copyWith =>
      __$$DeleteLocationDataImplCopyWithImpl<_$DeleteLocationDataImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(PredictionModel predictionModel,
            LocationFieldType locationFieldType)
        onSelectPlace,
    required TResult Function(LocationFieldType locationFieldType)
        onSelectCurrentLocation,
    required TResult Function(
            LatLng location, LocationFieldType locationFieldType)
        onSelectFromMap,
    required TResult Function(LocationFieldType locationFieldType)
        deleteLocationData,
  }) {
    return deleteLocationData(locationFieldType);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(PredictionModel predictionModel,
            LocationFieldType locationFieldType)?
        onSelectPlace,
    TResult? Function(LocationFieldType locationFieldType)?
        onSelectCurrentLocation,
    TResult? Function(LatLng location, LocationFieldType locationFieldType)?
        onSelectFromMap,
    TResult? Function(LocationFieldType locationFieldType)? deleteLocationData,
  }) {
    return deleteLocationData?.call(locationFieldType);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(PredictionModel predictionModel,
            LocationFieldType locationFieldType)?
        onSelectPlace,
    TResult Function(LocationFieldType locationFieldType)?
        onSelectCurrentLocation,
    TResult Function(LatLng location, LocationFieldType locationFieldType)?
        onSelectFromMap,
    TResult Function(LocationFieldType locationFieldType)? deleteLocationData,
    required TResult orElse(),
  }) {
    if (deleteLocationData != null) {
      return deleteLocationData(locationFieldType);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_OnSelectPlace value) onSelectPlace,
    required TResult Function(_OnSelectCurrentLocation value)
        onSelectCurrentLocation,
    required TResult Function(_OnSelectFromMap value) onSelectFromMap,
    required TResult Function(_DeleteLocationData value) deleteLocationData,
  }) {
    return deleteLocationData(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_OnSelectPlace value)? onSelectPlace,
    TResult? Function(_OnSelectCurrentLocation value)? onSelectCurrentLocation,
    TResult? Function(_OnSelectFromMap value)? onSelectFromMap,
    TResult? Function(_DeleteLocationData value)? deleteLocationData,
  }) {
    return deleteLocationData?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_OnSelectPlace value)? onSelectPlace,
    TResult Function(_OnSelectCurrentLocation value)? onSelectCurrentLocation,
    TResult Function(_OnSelectFromMap value)? onSelectFromMap,
    TResult Function(_DeleteLocationData value)? deleteLocationData,
    required TResult orElse(),
  }) {
    if (deleteLocationData != null) {
      return deleteLocationData(this);
    }
    return orElse();
  }
}

abstract class _DeleteLocationData implements WhereToPanelEvent {
  const factory _DeleteLocationData(
          {required final LocationFieldType locationFieldType}) =
      _$DeleteLocationDataImpl;

  LocationFieldType get locationFieldType;
  @JsonKey(ignore: true)
  _$$DeleteLocationDataImplCopyWith<_$DeleteLocationDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$WhereToPanelState {
  int get id => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int id) initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int id)? initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int id)? initial,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $WhereToPanelStateCopyWith<WhereToPanelState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WhereToPanelStateCopyWith<$Res> {
  factory $WhereToPanelStateCopyWith(
          WhereToPanelState value, $Res Function(WhereToPanelState) then) =
      _$WhereToPanelStateCopyWithImpl<$Res, WhereToPanelState>;
  @useResult
  $Res call({int id});
}

/// @nodoc
class _$WhereToPanelStateCopyWithImpl<$Res, $Val extends WhereToPanelState>
    implements $WhereToPanelStateCopyWith<$Res> {
  _$WhereToPanelStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$InitialImplCopyWith<$Res>
    implements $WhereToPanelStateCopyWith<$Res> {
  factory _$$InitialImplCopyWith(
          _$InitialImpl value, $Res Function(_$InitialImpl) then) =
      __$$InitialImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id});
}

/// @nodoc
class __$$InitialImplCopyWithImpl<$Res>
    extends _$WhereToPanelStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
  }) {
    return _then(_$InitialImpl(
      null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$InitialImpl implements _Initial {
  const _$InitialImpl(this.id);

  @override
  final int id;

  @override
  String toString() {
    return 'WhereToPanelState.initial(id: $id)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InitialImpl &&
            (identical(other.id, id) || other.id == id));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$InitialImplCopyWith<_$InitialImpl> get copyWith =>
      __$$InitialImplCopyWithImpl<_$InitialImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int id) initial,
  }) {
    return initial(id);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int id)? initial,
  }) {
    return initial?.call(id);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int id)? initial,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(id);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements WhereToPanelState {
  const factory _Initial(final int id) = _$InitialImpl;

  @override
  int get id;
  @override
  @JsonKey(ignore: true)
  _$$InitialImplCopyWith<_$InitialImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
