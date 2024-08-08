// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'profile_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ProfileEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() deleteMe,
    required TResult Function() updateMe,
    required TResult Function(ImageSource imageSourse) pickImage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? deleteMe,
    TResult? Function()? updateMe,
    TResult? Function(ImageSource imageSourse)? pickImage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? deleteMe,
    TResult Function()? updateMe,
    TResult Function(ImageSource imageSourse)? pickImage,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(DeleteMe value) deleteMe,
    required TResult Function(UpdateMe value) updateMe,
    required TResult Function(PickImage value) pickImage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(DeleteMe value)? deleteMe,
    TResult? Function(UpdateMe value)? updateMe,
    TResult? Function(PickImage value)? pickImage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(DeleteMe value)? deleteMe,
    TResult Function(UpdateMe value)? updateMe,
    TResult Function(PickImage value)? pickImage,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProfileEventCopyWith<$Res> {
  factory $ProfileEventCopyWith(
          ProfileEvent value, $Res Function(ProfileEvent) then) =
      _$ProfileEventCopyWithImpl<$Res, ProfileEvent>;
}

/// @nodoc
class _$ProfileEventCopyWithImpl<$Res, $Val extends ProfileEvent>
    implements $ProfileEventCopyWith<$Res> {
  _$ProfileEventCopyWithImpl(this._value, this._then);

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
    extends _$ProfileEventCopyWithImpl<$Res, _$StartedImpl>
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
    return 'ProfileEvent.started()';
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
    required TResult Function() deleteMe,
    required TResult Function() updateMe,
    required TResult Function(ImageSource imageSourse) pickImage,
  }) {
    return started();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? deleteMe,
    TResult? Function()? updateMe,
    TResult? Function(ImageSource imageSourse)? pickImage,
  }) {
    return started?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? deleteMe,
    TResult Function()? updateMe,
    TResult Function(ImageSource imageSourse)? pickImage,
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
    required TResult Function(DeleteMe value) deleteMe,
    required TResult Function(UpdateMe value) updateMe,
    required TResult Function(PickImage value) pickImage,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(DeleteMe value)? deleteMe,
    TResult? Function(UpdateMe value)? updateMe,
    TResult? Function(PickImage value)? pickImage,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(DeleteMe value)? deleteMe,
    TResult Function(UpdateMe value)? updateMe,
    TResult Function(PickImage value)? pickImage,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class _Started implements ProfileEvent {
  const factory _Started() = _$StartedImpl;
}

/// @nodoc
abstract class _$$DeleteMeImplCopyWith<$Res> {
  factory _$$DeleteMeImplCopyWith(
          _$DeleteMeImpl value, $Res Function(_$DeleteMeImpl) then) =
      __$$DeleteMeImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$DeleteMeImplCopyWithImpl<$Res>
    extends _$ProfileEventCopyWithImpl<$Res, _$DeleteMeImpl>
    implements _$$DeleteMeImplCopyWith<$Res> {
  __$$DeleteMeImplCopyWithImpl(
      _$DeleteMeImpl _value, $Res Function(_$DeleteMeImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$DeleteMeImpl implements DeleteMe {
  const _$DeleteMeImpl();

  @override
  String toString() {
    return 'ProfileEvent.deleteMe()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$DeleteMeImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() deleteMe,
    required TResult Function() updateMe,
    required TResult Function(ImageSource imageSourse) pickImage,
  }) {
    return deleteMe();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? deleteMe,
    TResult? Function()? updateMe,
    TResult? Function(ImageSource imageSourse)? pickImage,
  }) {
    return deleteMe?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? deleteMe,
    TResult Function()? updateMe,
    TResult Function(ImageSource imageSourse)? pickImage,
    required TResult orElse(),
  }) {
    if (deleteMe != null) {
      return deleteMe();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(DeleteMe value) deleteMe,
    required TResult Function(UpdateMe value) updateMe,
    required TResult Function(PickImage value) pickImage,
  }) {
    return deleteMe(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(DeleteMe value)? deleteMe,
    TResult? Function(UpdateMe value)? updateMe,
    TResult? Function(PickImage value)? pickImage,
  }) {
    return deleteMe?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(DeleteMe value)? deleteMe,
    TResult Function(UpdateMe value)? updateMe,
    TResult Function(PickImage value)? pickImage,
    required TResult orElse(),
  }) {
    if (deleteMe != null) {
      return deleteMe(this);
    }
    return orElse();
  }
}

abstract class DeleteMe implements ProfileEvent {
  const factory DeleteMe() = _$DeleteMeImpl;
}

/// @nodoc
abstract class _$$UpdateMeImplCopyWith<$Res> {
  factory _$$UpdateMeImplCopyWith(
          _$UpdateMeImpl value, $Res Function(_$UpdateMeImpl) then) =
      __$$UpdateMeImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$UpdateMeImplCopyWithImpl<$Res>
    extends _$ProfileEventCopyWithImpl<$Res, _$UpdateMeImpl>
    implements _$$UpdateMeImplCopyWith<$Res> {
  __$$UpdateMeImplCopyWithImpl(
      _$UpdateMeImpl _value, $Res Function(_$UpdateMeImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$UpdateMeImpl implements UpdateMe {
  const _$UpdateMeImpl();

  @override
  String toString() {
    return 'ProfileEvent.updateMe()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$UpdateMeImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() deleteMe,
    required TResult Function() updateMe,
    required TResult Function(ImageSource imageSourse) pickImage,
  }) {
    return updateMe();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? deleteMe,
    TResult? Function()? updateMe,
    TResult? Function(ImageSource imageSourse)? pickImage,
  }) {
    return updateMe?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? deleteMe,
    TResult Function()? updateMe,
    TResult Function(ImageSource imageSourse)? pickImage,
    required TResult orElse(),
  }) {
    if (updateMe != null) {
      return updateMe();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(DeleteMe value) deleteMe,
    required TResult Function(UpdateMe value) updateMe,
    required TResult Function(PickImage value) pickImage,
  }) {
    return updateMe(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(DeleteMe value)? deleteMe,
    TResult? Function(UpdateMe value)? updateMe,
    TResult? Function(PickImage value)? pickImage,
  }) {
    return updateMe?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(DeleteMe value)? deleteMe,
    TResult Function(UpdateMe value)? updateMe,
    TResult Function(PickImage value)? pickImage,
    required TResult orElse(),
  }) {
    if (updateMe != null) {
      return updateMe(this);
    }
    return orElse();
  }
}

abstract class UpdateMe implements ProfileEvent {
  const factory UpdateMe() = _$UpdateMeImpl;
}

/// @nodoc
abstract class _$$PickImageImplCopyWith<$Res> {
  factory _$$PickImageImplCopyWith(
          _$PickImageImpl value, $Res Function(_$PickImageImpl) then) =
      __$$PickImageImplCopyWithImpl<$Res>;
  @useResult
  $Res call({ImageSource imageSourse});
}

/// @nodoc
class __$$PickImageImplCopyWithImpl<$Res>
    extends _$ProfileEventCopyWithImpl<$Res, _$PickImageImpl>
    implements _$$PickImageImplCopyWith<$Res> {
  __$$PickImageImplCopyWithImpl(
      _$PickImageImpl _value, $Res Function(_$PickImageImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? imageSourse = null,
  }) {
    return _then(_$PickImageImpl(
      imageSourse: null == imageSourse
          ? _value.imageSourse
          : imageSourse // ignore: cast_nullable_to_non_nullable
              as ImageSource,
    ));
  }
}

/// @nodoc

class _$PickImageImpl implements PickImage {
  const _$PickImageImpl({required this.imageSourse});

  @override
  final ImageSource imageSourse;

  @override
  String toString() {
    return 'ProfileEvent.pickImage(imageSourse: $imageSourse)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PickImageImpl &&
            (identical(other.imageSourse, imageSourse) ||
                other.imageSourse == imageSourse));
  }

  @override
  int get hashCode => Object.hash(runtimeType, imageSourse);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PickImageImplCopyWith<_$PickImageImpl> get copyWith =>
      __$$PickImageImplCopyWithImpl<_$PickImageImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() deleteMe,
    required TResult Function() updateMe,
    required TResult Function(ImageSource imageSourse) pickImage,
  }) {
    return pickImage(imageSourse);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? deleteMe,
    TResult? Function()? updateMe,
    TResult? Function(ImageSource imageSourse)? pickImage,
  }) {
    return pickImage?.call(imageSourse);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? deleteMe,
    TResult Function()? updateMe,
    TResult Function(ImageSource imageSourse)? pickImage,
    required TResult orElse(),
  }) {
    if (pickImage != null) {
      return pickImage(imageSourse);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(DeleteMe value) deleteMe,
    required TResult Function(UpdateMe value) updateMe,
    required TResult Function(PickImage value) pickImage,
  }) {
    return pickImage(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(DeleteMe value)? deleteMe,
    TResult? Function(UpdateMe value)? updateMe,
    TResult? Function(PickImage value)? pickImage,
  }) {
    return pickImage?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(DeleteMe value)? deleteMe,
    TResult Function(UpdateMe value)? updateMe,
    TResult Function(PickImage value)? pickImage,
    required TResult orElse(),
  }) {
    if (pickImage != null) {
      return pickImage(this);
    }
    return orElse();
  }
}

abstract class PickImage implements ProfileEvent {
  const factory PickImage({required final ImageSource imageSourse}) =
      _$PickImageImpl;

  ImageSource get imageSourse;
  @JsonKey(ignore: true)
  _$$PickImageImplCopyWith<_$PickImageImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$ProfileState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(int id) refresh,
    required TResult Function() loading,
    required TResult Function(String msg) failure,
    required TResult Function() getMeLoading,
    required TResult Function() getMeSuccess,
    required TResult Function(String msg) getMefailure,
    required TResult Function() deleteMeSuccess,
    required TResult Function() updateMeSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(int id)? refresh,
    TResult? Function()? loading,
    TResult? Function(String msg)? failure,
    TResult? Function()? getMeLoading,
    TResult? Function()? getMeSuccess,
    TResult? Function(String msg)? getMefailure,
    TResult? Function()? deleteMeSuccess,
    TResult? Function()? updateMeSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(int id)? refresh,
    TResult Function()? loading,
    TResult Function(String msg)? failure,
    TResult Function()? getMeLoading,
    TResult Function()? getMeSuccess,
    TResult Function(String msg)? getMefailure,
    TResult Function()? deleteMeSuccess,
    TResult Function()? updateMeSuccess,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(Refresh value) refresh,
    required TResult Function(Loading value) loading,
    required TResult Function(Failure value) failure,
    required TResult Function(GetMeLoading value) getMeLoading,
    required TResult Function(GetMeSuccess value) getMeSuccess,
    required TResult Function(GetMeFailure value) getMefailure,
    required TResult Function(DeleteMeSuccess value) deleteMeSuccess,
    required TResult Function(UpdateMeSuccess value) updateMeSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(Refresh value)? refresh,
    TResult? Function(Loading value)? loading,
    TResult? Function(Failure value)? failure,
    TResult? Function(GetMeLoading value)? getMeLoading,
    TResult? Function(GetMeSuccess value)? getMeSuccess,
    TResult? Function(GetMeFailure value)? getMefailure,
    TResult? Function(DeleteMeSuccess value)? deleteMeSuccess,
    TResult? Function(UpdateMeSuccess value)? updateMeSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(Refresh value)? refresh,
    TResult Function(Loading value)? loading,
    TResult Function(Failure value)? failure,
    TResult Function(GetMeLoading value)? getMeLoading,
    TResult Function(GetMeSuccess value)? getMeSuccess,
    TResult Function(GetMeFailure value)? getMefailure,
    TResult Function(DeleteMeSuccess value)? deleteMeSuccess,
    TResult Function(UpdateMeSuccess value)? updateMeSuccess,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProfileStateCopyWith<$Res> {
  factory $ProfileStateCopyWith(
          ProfileState value, $Res Function(ProfileState) then) =
      _$ProfileStateCopyWithImpl<$Res, ProfileState>;
}

/// @nodoc
class _$ProfileStateCopyWithImpl<$Res, $Val extends ProfileState>
    implements $ProfileStateCopyWith<$Res> {
  _$ProfileStateCopyWithImpl(this._value, this._then);

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
    extends _$ProfileStateCopyWithImpl<$Res, _$InitialImpl>
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
    return 'ProfileState.initial()';
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
    required TResult Function(int id) refresh,
    required TResult Function() loading,
    required TResult Function(String msg) failure,
    required TResult Function() getMeLoading,
    required TResult Function() getMeSuccess,
    required TResult Function(String msg) getMefailure,
    required TResult Function() deleteMeSuccess,
    required TResult Function() updateMeSuccess,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(int id)? refresh,
    TResult? Function()? loading,
    TResult? Function(String msg)? failure,
    TResult? Function()? getMeLoading,
    TResult? Function()? getMeSuccess,
    TResult? Function(String msg)? getMefailure,
    TResult? Function()? deleteMeSuccess,
    TResult? Function()? updateMeSuccess,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(int id)? refresh,
    TResult Function()? loading,
    TResult Function(String msg)? failure,
    TResult Function()? getMeLoading,
    TResult Function()? getMeSuccess,
    TResult Function(String msg)? getMefailure,
    TResult Function()? deleteMeSuccess,
    TResult Function()? updateMeSuccess,
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
    required TResult Function(Refresh value) refresh,
    required TResult Function(Loading value) loading,
    required TResult Function(Failure value) failure,
    required TResult Function(GetMeLoading value) getMeLoading,
    required TResult Function(GetMeSuccess value) getMeSuccess,
    required TResult Function(GetMeFailure value) getMefailure,
    required TResult Function(DeleteMeSuccess value) deleteMeSuccess,
    required TResult Function(UpdateMeSuccess value) updateMeSuccess,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(Refresh value)? refresh,
    TResult? Function(Loading value)? loading,
    TResult? Function(Failure value)? failure,
    TResult? Function(GetMeLoading value)? getMeLoading,
    TResult? Function(GetMeSuccess value)? getMeSuccess,
    TResult? Function(GetMeFailure value)? getMefailure,
    TResult? Function(DeleteMeSuccess value)? deleteMeSuccess,
    TResult? Function(UpdateMeSuccess value)? updateMeSuccess,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(Refresh value)? refresh,
    TResult Function(Loading value)? loading,
    TResult Function(Failure value)? failure,
    TResult Function(GetMeLoading value)? getMeLoading,
    TResult Function(GetMeSuccess value)? getMeSuccess,
    TResult Function(GetMeFailure value)? getMefailure,
    TResult Function(DeleteMeSuccess value)? deleteMeSuccess,
    TResult Function(UpdateMeSuccess value)? updateMeSuccess,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements ProfileState {
  const factory _Initial() = _$InitialImpl;
}

/// @nodoc
abstract class _$$RefreshImplCopyWith<$Res> {
  factory _$$RefreshImplCopyWith(
          _$RefreshImpl value, $Res Function(_$RefreshImpl) then) =
      __$$RefreshImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int id});
}

/// @nodoc
class __$$RefreshImplCopyWithImpl<$Res>
    extends _$ProfileStateCopyWithImpl<$Res, _$RefreshImpl>
    implements _$$RefreshImplCopyWith<$Res> {
  __$$RefreshImplCopyWithImpl(
      _$RefreshImpl _value, $Res Function(_$RefreshImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
  }) {
    return _then(_$RefreshImpl(
      null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$RefreshImpl implements Refresh {
  const _$RefreshImpl(this.id);

  @override
  final int id;

  @override
  String toString() {
    return 'ProfileState.refresh(id: $id)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RefreshImpl &&
            (identical(other.id, id) || other.id == id));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RefreshImplCopyWith<_$RefreshImpl> get copyWith =>
      __$$RefreshImplCopyWithImpl<_$RefreshImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(int id) refresh,
    required TResult Function() loading,
    required TResult Function(String msg) failure,
    required TResult Function() getMeLoading,
    required TResult Function() getMeSuccess,
    required TResult Function(String msg) getMefailure,
    required TResult Function() deleteMeSuccess,
    required TResult Function() updateMeSuccess,
  }) {
    return refresh(id);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(int id)? refresh,
    TResult? Function()? loading,
    TResult? Function(String msg)? failure,
    TResult? Function()? getMeLoading,
    TResult? Function()? getMeSuccess,
    TResult? Function(String msg)? getMefailure,
    TResult? Function()? deleteMeSuccess,
    TResult? Function()? updateMeSuccess,
  }) {
    return refresh?.call(id);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(int id)? refresh,
    TResult Function()? loading,
    TResult Function(String msg)? failure,
    TResult Function()? getMeLoading,
    TResult Function()? getMeSuccess,
    TResult Function(String msg)? getMefailure,
    TResult Function()? deleteMeSuccess,
    TResult Function()? updateMeSuccess,
    required TResult orElse(),
  }) {
    if (refresh != null) {
      return refresh(id);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(Refresh value) refresh,
    required TResult Function(Loading value) loading,
    required TResult Function(Failure value) failure,
    required TResult Function(GetMeLoading value) getMeLoading,
    required TResult Function(GetMeSuccess value) getMeSuccess,
    required TResult Function(GetMeFailure value) getMefailure,
    required TResult Function(DeleteMeSuccess value) deleteMeSuccess,
    required TResult Function(UpdateMeSuccess value) updateMeSuccess,
  }) {
    return refresh(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(Refresh value)? refresh,
    TResult? Function(Loading value)? loading,
    TResult? Function(Failure value)? failure,
    TResult? Function(GetMeLoading value)? getMeLoading,
    TResult? Function(GetMeSuccess value)? getMeSuccess,
    TResult? Function(GetMeFailure value)? getMefailure,
    TResult? Function(DeleteMeSuccess value)? deleteMeSuccess,
    TResult? Function(UpdateMeSuccess value)? updateMeSuccess,
  }) {
    return refresh?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(Refresh value)? refresh,
    TResult Function(Loading value)? loading,
    TResult Function(Failure value)? failure,
    TResult Function(GetMeLoading value)? getMeLoading,
    TResult Function(GetMeSuccess value)? getMeSuccess,
    TResult Function(GetMeFailure value)? getMefailure,
    TResult Function(DeleteMeSuccess value)? deleteMeSuccess,
    TResult Function(UpdateMeSuccess value)? updateMeSuccess,
    required TResult orElse(),
  }) {
    if (refresh != null) {
      return refresh(this);
    }
    return orElse();
  }
}

abstract class Refresh implements ProfileState {
  const factory Refresh(final int id) = _$RefreshImpl;

  int get id;
  @JsonKey(ignore: true)
  _$$RefreshImplCopyWith<_$RefreshImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LoadingImplCopyWith<$Res> {
  factory _$$LoadingImplCopyWith(
          _$LoadingImpl value, $Res Function(_$LoadingImpl) then) =
      __$$LoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoadingImplCopyWithImpl<$Res>
    extends _$ProfileStateCopyWithImpl<$Res, _$LoadingImpl>
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
    return 'ProfileState.loading()';
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
    required TResult Function(int id) refresh,
    required TResult Function() loading,
    required TResult Function(String msg) failure,
    required TResult Function() getMeLoading,
    required TResult Function() getMeSuccess,
    required TResult Function(String msg) getMefailure,
    required TResult Function() deleteMeSuccess,
    required TResult Function() updateMeSuccess,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(int id)? refresh,
    TResult? Function()? loading,
    TResult? Function(String msg)? failure,
    TResult? Function()? getMeLoading,
    TResult? Function()? getMeSuccess,
    TResult? Function(String msg)? getMefailure,
    TResult? Function()? deleteMeSuccess,
    TResult? Function()? updateMeSuccess,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(int id)? refresh,
    TResult Function()? loading,
    TResult Function(String msg)? failure,
    TResult Function()? getMeLoading,
    TResult Function()? getMeSuccess,
    TResult Function(String msg)? getMefailure,
    TResult Function()? deleteMeSuccess,
    TResult Function()? updateMeSuccess,
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
    required TResult Function(Refresh value) refresh,
    required TResult Function(Loading value) loading,
    required TResult Function(Failure value) failure,
    required TResult Function(GetMeLoading value) getMeLoading,
    required TResult Function(GetMeSuccess value) getMeSuccess,
    required TResult Function(GetMeFailure value) getMefailure,
    required TResult Function(DeleteMeSuccess value) deleteMeSuccess,
    required TResult Function(UpdateMeSuccess value) updateMeSuccess,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(Refresh value)? refresh,
    TResult? Function(Loading value)? loading,
    TResult? Function(Failure value)? failure,
    TResult? Function(GetMeLoading value)? getMeLoading,
    TResult? Function(GetMeSuccess value)? getMeSuccess,
    TResult? Function(GetMeFailure value)? getMefailure,
    TResult? Function(DeleteMeSuccess value)? deleteMeSuccess,
    TResult? Function(UpdateMeSuccess value)? updateMeSuccess,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(Refresh value)? refresh,
    TResult Function(Loading value)? loading,
    TResult Function(Failure value)? failure,
    TResult Function(GetMeLoading value)? getMeLoading,
    TResult Function(GetMeSuccess value)? getMeSuccess,
    TResult Function(GetMeFailure value)? getMefailure,
    TResult Function(DeleteMeSuccess value)? deleteMeSuccess,
    TResult Function(UpdateMeSuccess value)? updateMeSuccess,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class Loading implements ProfileState {
  const factory Loading() = _$LoadingImpl;
}

/// @nodoc
abstract class _$$FailureImplCopyWith<$Res> {
  factory _$$FailureImplCopyWith(
          _$FailureImpl value, $Res Function(_$FailureImpl) then) =
      __$$FailureImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String msg});
}

/// @nodoc
class __$$FailureImplCopyWithImpl<$Res>
    extends _$ProfileStateCopyWithImpl<$Res, _$FailureImpl>
    implements _$$FailureImplCopyWith<$Res> {
  __$$FailureImplCopyWithImpl(
      _$FailureImpl _value, $Res Function(_$FailureImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? msg = null,
  }) {
    return _then(_$FailureImpl(
      msg: null == msg
          ? _value.msg
          : msg // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$FailureImpl implements Failure {
  const _$FailureImpl({required this.msg});

  @override
  final String msg;

  @override
  String toString() {
    return 'ProfileState.failure(msg: $msg)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FailureImpl &&
            (identical(other.msg, msg) || other.msg == msg));
  }

  @override
  int get hashCode => Object.hash(runtimeType, msg);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FailureImplCopyWith<_$FailureImpl> get copyWith =>
      __$$FailureImplCopyWithImpl<_$FailureImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(int id) refresh,
    required TResult Function() loading,
    required TResult Function(String msg) failure,
    required TResult Function() getMeLoading,
    required TResult Function() getMeSuccess,
    required TResult Function(String msg) getMefailure,
    required TResult Function() deleteMeSuccess,
    required TResult Function() updateMeSuccess,
  }) {
    return failure(msg);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(int id)? refresh,
    TResult? Function()? loading,
    TResult? Function(String msg)? failure,
    TResult? Function()? getMeLoading,
    TResult? Function()? getMeSuccess,
    TResult? Function(String msg)? getMefailure,
    TResult? Function()? deleteMeSuccess,
    TResult? Function()? updateMeSuccess,
  }) {
    return failure?.call(msg);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(int id)? refresh,
    TResult Function()? loading,
    TResult Function(String msg)? failure,
    TResult Function()? getMeLoading,
    TResult Function()? getMeSuccess,
    TResult Function(String msg)? getMefailure,
    TResult Function()? deleteMeSuccess,
    TResult Function()? updateMeSuccess,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(msg);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(Refresh value) refresh,
    required TResult Function(Loading value) loading,
    required TResult Function(Failure value) failure,
    required TResult Function(GetMeLoading value) getMeLoading,
    required TResult Function(GetMeSuccess value) getMeSuccess,
    required TResult Function(GetMeFailure value) getMefailure,
    required TResult Function(DeleteMeSuccess value) deleteMeSuccess,
    required TResult Function(UpdateMeSuccess value) updateMeSuccess,
  }) {
    return failure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(Refresh value)? refresh,
    TResult? Function(Loading value)? loading,
    TResult? Function(Failure value)? failure,
    TResult? Function(GetMeLoading value)? getMeLoading,
    TResult? Function(GetMeSuccess value)? getMeSuccess,
    TResult? Function(GetMeFailure value)? getMefailure,
    TResult? Function(DeleteMeSuccess value)? deleteMeSuccess,
    TResult? Function(UpdateMeSuccess value)? updateMeSuccess,
  }) {
    return failure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(Refresh value)? refresh,
    TResult Function(Loading value)? loading,
    TResult Function(Failure value)? failure,
    TResult Function(GetMeLoading value)? getMeLoading,
    TResult Function(GetMeSuccess value)? getMeSuccess,
    TResult Function(GetMeFailure value)? getMefailure,
    TResult Function(DeleteMeSuccess value)? deleteMeSuccess,
    TResult Function(UpdateMeSuccess value)? updateMeSuccess,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(this);
    }
    return orElse();
  }
}

abstract class Failure implements ProfileState {
  const factory Failure({required final String msg}) = _$FailureImpl;

  String get msg;
  @JsonKey(ignore: true)
  _$$FailureImplCopyWith<_$FailureImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GetMeLoadingImplCopyWith<$Res> {
  factory _$$GetMeLoadingImplCopyWith(
          _$GetMeLoadingImpl value, $Res Function(_$GetMeLoadingImpl) then) =
      __$$GetMeLoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GetMeLoadingImplCopyWithImpl<$Res>
    extends _$ProfileStateCopyWithImpl<$Res, _$GetMeLoadingImpl>
    implements _$$GetMeLoadingImplCopyWith<$Res> {
  __$$GetMeLoadingImplCopyWithImpl(
      _$GetMeLoadingImpl _value, $Res Function(_$GetMeLoadingImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$GetMeLoadingImpl implements GetMeLoading {
  const _$GetMeLoadingImpl();

  @override
  String toString() {
    return 'ProfileState.getMeLoading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$GetMeLoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(int id) refresh,
    required TResult Function() loading,
    required TResult Function(String msg) failure,
    required TResult Function() getMeLoading,
    required TResult Function() getMeSuccess,
    required TResult Function(String msg) getMefailure,
    required TResult Function() deleteMeSuccess,
    required TResult Function() updateMeSuccess,
  }) {
    return getMeLoading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(int id)? refresh,
    TResult? Function()? loading,
    TResult? Function(String msg)? failure,
    TResult? Function()? getMeLoading,
    TResult? Function()? getMeSuccess,
    TResult? Function(String msg)? getMefailure,
    TResult? Function()? deleteMeSuccess,
    TResult? Function()? updateMeSuccess,
  }) {
    return getMeLoading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(int id)? refresh,
    TResult Function()? loading,
    TResult Function(String msg)? failure,
    TResult Function()? getMeLoading,
    TResult Function()? getMeSuccess,
    TResult Function(String msg)? getMefailure,
    TResult Function()? deleteMeSuccess,
    TResult Function()? updateMeSuccess,
    required TResult orElse(),
  }) {
    if (getMeLoading != null) {
      return getMeLoading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(Refresh value) refresh,
    required TResult Function(Loading value) loading,
    required TResult Function(Failure value) failure,
    required TResult Function(GetMeLoading value) getMeLoading,
    required TResult Function(GetMeSuccess value) getMeSuccess,
    required TResult Function(GetMeFailure value) getMefailure,
    required TResult Function(DeleteMeSuccess value) deleteMeSuccess,
    required TResult Function(UpdateMeSuccess value) updateMeSuccess,
  }) {
    return getMeLoading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(Refresh value)? refresh,
    TResult? Function(Loading value)? loading,
    TResult? Function(Failure value)? failure,
    TResult? Function(GetMeLoading value)? getMeLoading,
    TResult? Function(GetMeSuccess value)? getMeSuccess,
    TResult? Function(GetMeFailure value)? getMefailure,
    TResult? Function(DeleteMeSuccess value)? deleteMeSuccess,
    TResult? Function(UpdateMeSuccess value)? updateMeSuccess,
  }) {
    return getMeLoading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(Refresh value)? refresh,
    TResult Function(Loading value)? loading,
    TResult Function(Failure value)? failure,
    TResult Function(GetMeLoading value)? getMeLoading,
    TResult Function(GetMeSuccess value)? getMeSuccess,
    TResult Function(GetMeFailure value)? getMefailure,
    TResult Function(DeleteMeSuccess value)? deleteMeSuccess,
    TResult Function(UpdateMeSuccess value)? updateMeSuccess,
    required TResult orElse(),
  }) {
    if (getMeLoading != null) {
      return getMeLoading(this);
    }
    return orElse();
  }
}

abstract class GetMeLoading implements ProfileState {
  const factory GetMeLoading() = _$GetMeLoadingImpl;
}

/// @nodoc
abstract class _$$GetMeSuccessImplCopyWith<$Res> {
  factory _$$GetMeSuccessImplCopyWith(
          _$GetMeSuccessImpl value, $Res Function(_$GetMeSuccessImpl) then) =
      __$$GetMeSuccessImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GetMeSuccessImplCopyWithImpl<$Res>
    extends _$ProfileStateCopyWithImpl<$Res, _$GetMeSuccessImpl>
    implements _$$GetMeSuccessImplCopyWith<$Res> {
  __$$GetMeSuccessImplCopyWithImpl(
      _$GetMeSuccessImpl _value, $Res Function(_$GetMeSuccessImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$GetMeSuccessImpl implements GetMeSuccess {
  const _$GetMeSuccessImpl();

  @override
  String toString() {
    return 'ProfileState.getMeSuccess()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$GetMeSuccessImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(int id) refresh,
    required TResult Function() loading,
    required TResult Function(String msg) failure,
    required TResult Function() getMeLoading,
    required TResult Function() getMeSuccess,
    required TResult Function(String msg) getMefailure,
    required TResult Function() deleteMeSuccess,
    required TResult Function() updateMeSuccess,
  }) {
    return getMeSuccess();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(int id)? refresh,
    TResult? Function()? loading,
    TResult? Function(String msg)? failure,
    TResult? Function()? getMeLoading,
    TResult? Function()? getMeSuccess,
    TResult? Function(String msg)? getMefailure,
    TResult? Function()? deleteMeSuccess,
    TResult? Function()? updateMeSuccess,
  }) {
    return getMeSuccess?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(int id)? refresh,
    TResult Function()? loading,
    TResult Function(String msg)? failure,
    TResult Function()? getMeLoading,
    TResult Function()? getMeSuccess,
    TResult Function(String msg)? getMefailure,
    TResult Function()? deleteMeSuccess,
    TResult Function()? updateMeSuccess,
    required TResult orElse(),
  }) {
    if (getMeSuccess != null) {
      return getMeSuccess();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(Refresh value) refresh,
    required TResult Function(Loading value) loading,
    required TResult Function(Failure value) failure,
    required TResult Function(GetMeLoading value) getMeLoading,
    required TResult Function(GetMeSuccess value) getMeSuccess,
    required TResult Function(GetMeFailure value) getMefailure,
    required TResult Function(DeleteMeSuccess value) deleteMeSuccess,
    required TResult Function(UpdateMeSuccess value) updateMeSuccess,
  }) {
    return getMeSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(Refresh value)? refresh,
    TResult? Function(Loading value)? loading,
    TResult? Function(Failure value)? failure,
    TResult? Function(GetMeLoading value)? getMeLoading,
    TResult? Function(GetMeSuccess value)? getMeSuccess,
    TResult? Function(GetMeFailure value)? getMefailure,
    TResult? Function(DeleteMeSuccess value)? deleteMeSuccess,
    TResult? Function(UpdateMeSuccess value)? updateMeSuccess,
  }) {
    return getMeSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(Refresh value)? refresh,
    TResult Function(Loading value)? loading,
    TResult Function(Failure value)? failure,
    TResult Function(GetMeLoading value)? getMeLoading,
    TResult Function(GetMeSuccess value)? getMeSuccess,
    TResult Function(GetMeFailure value)? getMefailure,
    TResult Function(DeleteMeSuccess value)? deleteMeSuccess,
    TResult Function(UpdateMeSuccess value)? updateMeSuccess,
    required TResult orElse(),
  }) {
    if (getMeSuccess != null) {
      return getMeSuccess(this);
    }
    return orElse();
  }
}

abstract class GetMeSuccess implements ProfileState {
  const factory GetMeSuccess() = _$GetMeSuccessImpl;
}

/// @nodoc
abstract class _$$GetMeFailureImplCopyWith<$Res> {
  factory _$$GetMeFailureImplCopyWith(
          _$GetMeFailureImpl value, $Res Function(_$GetMeFailureImpl) then) =
      __$$GetMeFailureImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String msg});
}

/// @nodoc
class __$$GetMeFailureImplCopyWithImpl<$Res>
    extends _$ProfileStateCopyWithImpl<$Res, _$GetMeFailureImpl>
    implements _$$GetMeFailureImplCopyWith<$Res> {
  __$$GetMeFailureImplCopyWithImpl(
      _$GetMeFailureImpl _value, $Res Function(_$GetMeFailureImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? msg = null,
  }) {
    return _then(_$GetMeFailureImpl(
      msg: null == msg
          ? _value.msg
          : msg // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$GetMeFailureImpl implements GetMeFailure {
  const _$GetMeFailureImpl({required this.msg});

  @override
  final String msg;

  @override
  String toString() {
    return 'ProfileState.getMefailure(msg: $msg)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetMeFailureImpl &&
            (identical(other.msg, msg) || other.msg == msg));
  }

  @override
  int get hashCode => Object.hash(runtimeType, msg);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetMeFailureImplCopyWith<_$GetMeFailureImpl> get copyWith =>
      __$$GetMeFailureImplCopyWithImpl<_$GetMeFailureImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(int id) refresh,
    required TResult Function() loading,
    required TResult Function(String msg) failure,
    required TResult Function() getMeLoading,
    required TResult Function() getMeSuccess,
    required TResult Function(String msg) getMefailure,
    required TResult Function() deleteMeSuccess,
    required TResult Function() updateMeSuccess,
  }) {
    return getMefailure(msg);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(int id)? refresh,
    TResult? Function()? loading,
    TResult? Function(String msg)? failure,
    TResult? Function()? getMeLoading,
    TResult? Function()? getMeSuccess,
    TResult? Function(String msg)? getMefailure,
    TResult? Function()? deleteMeSuccess,
    TResult? Function()? updateMeSuccess,
  }) {
    return getMefailure?.call(msg);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(int id)? refresh,
    TResult Function()? loading,
    TResult Function(String msg)? failure,
    TResult Function()? getMeLoading,
    TResult Function()? getMeSuccess,
    TResult Function(String msg)? getMefailure,
    TResult Function()? deleteMeSuccess,
    TResult Function()? updateMeSuccess,
    required TResult orElse(),
  }) {
    if (getMefailure != null) {
      return getMefailure(msg);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(Refresh value) refresh,
    required TResult Function(Loading value) loading,
    required TResult Function(Failure value) failure,
    required TResult Function(GetMeLoading value) getMeLoading,
    required TResult Function(GetMeSuccess value) getMeSuccess,
    required TResult Function(GetMeFailure value) getMefailure,
    required TResult Function(DeleteMeSuccess value) deleteMeSuccess,
    required TResult Function(UpdateMeSuccess value) updateMeSuccess,
  }) {
    return getMefailure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(Refresh value)? refresh,
    TResult? Function(Loading value)? loading,
    TResult? Function(Failure value)? failure,
    TResult? Function(GetMeLoading value)? getMeLoading,
    TResult? Function(GetMeSuccess value)? getMeSuccess,
    TResult? Function(GetMeFailure value)? getMefailure,
    TResult? Function(DeleteMeSuccess value)? deleteMeSuccess,
    TResult? Function(UpdateMeSuccess value)? updateMeSuccess,
  }) {
    return getMefailure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(Refresh value)? refresh,
    TResult Function(Loading value)? loading,
    TResult Function(Failure value)? failure,
    TResult Function(GetMeLoading value)? getMeLoading,
    TResult Function(GetMeSuccess value)? getMeSuccess,
    TResult Function(GetMeFailure value)? getMefailure,
    TResult Function(DeleteMeSuccess value)? deleteMeSuccess,
    TResult Function(UpdateMeSuccess value)? updateMeSuccess,
    required TResult orElse(),
  }) {
    if (getMefailure != null) {
      return getMefailure(this);
    }
    return orElse();
  }
}

abstract class GetMeFailure implements ProfileState {
  const factory GetMeFailure({required final String msg}) = _$GetMeFailureImpl;

  String get msg;
  @JsonKey(ignore: true)
  _$$GetMeFailureImplCopyWith<_$GetMeFailureImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$DeleteMeSuccessImplCopyWith<$Res> {
  factory _$$DeleteMeSuccessImplCopyWith(_$DeleteMeSuccessImpl value,
          $Res Function(_$DeleteMeSuccessImpl) then) =
      __$$DeleteMeSuccessImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$DeleteMeSuccessImplCopyWithImpl<$Res>
    extends _$ProfileStateCopyWithImpl<$Res, _$DeleteMeSuccessImpl>
    implements _$$DeleteMeSuccessImplCopyWith<$Res> {
  __$$DeleteMeSuccessImplCopyWithImpl(
      _$DeleteMeSuccessImpl _value, $Res Function(_$DeleteMeSuccessImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$DeleteMeSuccessImpl implements DeleteMeSuccess {
  const _$DeleteMeSuccessImpl();

  @override
  String toString() {
    return 'ProfileState.deleteMeSuccess()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$DeleteMeSuccessImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(int id) refresh,
    required TResult Function() loading,
    required TResult Function(String msg) failure,
    required TResult Function() getMeLoading,
    required TResult Function() getMeSuccess,
    required TResult Function(String msg) getMefailure,
    required TResult Function() deleteMeSuccess,
    required TResult Function() updateMeSuccess,
  }) {
    return deleteMeSuccess();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(int id)? refresh,
    TResult? Function()? loading,
    TResult? Function(String msg)? failure,
    TResult? Function()? getMeLoading,
    TResult? Function()? getMeSuccess,
    TResult? Function(String msg)? getMefailure,
    TResult? Function()? deleteMeSuccess,
    TResult? Function()? updateMeSuccess,
  }) {
    return deleteMeSuccess?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(int id)? refresh,
    TResult Function()? loading,
    TResult Function(String msg)? failure,
    TResult Function()? getMeLoading,
    TResult Function()? getMeSuccess,
    TResult Function(String msg)? getMefailure,
    TResult Function()? deleteMeSuccess,
    TResult Function()? updateMeSuccess,
    required TResult orElse(),
  }) {
    if (deleteMeSuccess != null) {
      return deleteMeSuccess();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(Refresh value) refresh,
    required TResult Function(Loading value) loading,
    required TResult Function(Failure value) failure,
    required TResult Function(GetMeLoading value) getMeLoading,
    required TResult Function(GetMeSuccess value) getMeSuccess,
    required TResult Function(GetMeFailure value) getMefailure,
    required TResult Function(DeleteMeSuccess value) deleteMeSuccess,
    required TResult Function(UpdateMeSuccess value) updateMeSuccess,
  }) {
    return deleteMeSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(Refresh value)? refresh,
    TResult? Function(Loading value)? loading,
    TResult? Function(Failure value)? failure,
    TResult? Function(GetMeLoading value)? getMeLoading,
    TResult? Function(GetMeSuccess value)? getMeSuccess,
    TResult? Function(GetMeFailure value)? getMefailure,
    TResult? Function(DeleteMeSuccess value)? deleteMeSuccess,
    TResult? Function(UpdateMeSuccess value)? updateMeSuccess,
  }) {
    return deleteMeSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(Refresh value)? refresh,
    TResult Function(Loading value)? loading,
    TResult Function(Failure value)? failure,
    TResult Function(GetMeLoading value)? getMeLoading,
    TResult Function(GetMeSuccess value)? getMeSuccess,
    TResult Function(GetMeFailure value)? getMefailure,
    TResult Function(DeleteMeSuccess value)? deleteMeSuccess,
    TResult Function(UpdateMeSuccess value)? updateMeSuccess,
    required TResult orElse(),
  }) {
    if (deleteMeSuccess != null) {
      return deleteMeSuccess(this);
    }
    return orElse();
  }
}

abstract class DeleteMeSuccess implements ProfileState {
  const factory DeleteMeSuccess() = _$DeleteMeSuccessImpl;
}

/// @nodoc
abstract class _$$UpdateMeSuccessImplCopyWith<$Res> {
  factory _$$UpdateMeSuccessImplCopyWith(_$UpdateMeSuccessImpl value,
          $Res Function(_$UpdateMeSuccessImpl) then) =
      __$$UpdateMeSuccessImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$UpdateMeSuccessImplCopyWithImpl<$Res>
    extends _$ProfileStateCopyWithImpl<$Res, _$UpdateMeSuccessImpl>
    implements _$$UpdateMeSuccessImplCopyWith<$Res> {
  __$$UpdateMeSuccessImplCopyWithImpl(
      _$UpdateMeSuccessImpl _value, $Res Function(_$UpdateMeSuccessImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$UpdateMeSuccessImpl implements UpdateMeSuccess {
  const _$UpdateMeSuccessImpl();

  @override
  String toString() {
    return 'ProfileState.updateMeSuccess()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$UpdateMeSuccessImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(int id) refresh,
    required TResult Function() loading,
    required TResult Function(String msg) failure,
    required TResult Function() getMeLoading,
    required TResult Function() getMeSuccess,
    required TResult Function(String msg) getMefailure,
    required TResult Function() deleteMeSuccess,
    required TResult Function() updateMeSuccess,
  }) {
    return updateMeSuccess();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(int id)? refresh,
    TResult? Function()? loading,
    TResult? Function(String msg)? failure,
    TResult? Function()? getMeLoading,
    TResult? Function()? getMeSuccess,
    TResult? Function(String msg)? getMefailure,
    TResult? Function()? deleteMeSuccess,
    TResult? Function()? updateMeSuccess,
  }) {
    return updateMeSuccess?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(int id)? refresh,
    TResult Function()? loading,
    TResult Function(String msg)? failure,
    TResult Function()? getMeLoading,
    TResult Function()? getMeSuccess,
    TResult Function(String msg)? getMefailure,
    TResult Function()? deleteMeSuccess,
    TResult Function()? updateMeSuccess,
    required TResult orElse(),
  }) {
    if (updateMeSuccess != null) {
      return updateMeSuccess();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(Refresh value) refresh,
    required TResult Function(Loading value) loading,
    required TResult Function(Failure value) failure,
    required TResult Function(GetMeLoading value) getMeLoading,
    required TResult Function(GetMeSuccess value) getMeSuccess,
    required TResult Function(GetMeFailure value) getMefailure,
    required TResult Function(DeleteMeSuccess value) deleteMeSuccess,
    required TResult Function(UpdateMeSuccess value) updateMeSuccess,
  }) {
    return updateMeSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(Refresh value)? refresh,
    TResult? Function(Loading value)? loading,
    TResult? Function(Failure value)? failure,
    TResult? Function(GetMeLoading value)? getMeLoading,
    TResult? Function(GetMeSuccess value)? getMeSuccess,
    TResult? Function(GetMeFailure value)? getMefailure,
    TResult? Function(DeleteMeSuccess value)? deleteMeSuccess,
    TResult? Function(UpdateMeSuccess value)? updateMeSuccess,
  }) {
    return updateMeSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(Refresh value)? refresh,
    TResult Function(Loading value)? loading,
    TResult Function(Failure value)? failure,
    TResult Function(GetMeLoading value)? getMeLoading,
    TResult Function(GetMeSuccess value)? getMeSuccess,
    TResult Function(GetMeFailure value)? getMefailure,
    TResult Function(DeleteMeSuccess value)? deleteMeSuccess,
    TResult Function(UpdateMeSuccess value)? updateMeSuccess,
    required TResult orElse(),
  }) {
    if (updateMeSuccess != null) {
      return updateMeSuccess(this);
    }
    return orElse();
  }
}

abstract class UpdateMeSuccess implements ProfileState {
  const factory UpdateMeSuccess() = _$UpdateMeSuccessImpl;
}
