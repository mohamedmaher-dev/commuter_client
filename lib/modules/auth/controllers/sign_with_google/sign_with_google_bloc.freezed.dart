// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'sign_with_google_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$SignWithGoogleEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SignWithGoogleEventCopyWith<$Res> {
  factory $SignWithGoogleEventCopyWith(
          SignWithGoogleEvent value, $Res Function(SignWithGoogleEvent) then) =
      _$SignWithGoogleEventCopyWithImpl<$Res, SignWithGoogleEvent>;
}

/// @nodoc
class _$SignWithGoogleEventCopyWithImpl<$Res, $Val extends SignWithGoogleEvent>
    implements $SignWithGoogleEventCopyWith<$Res> {
  _$SignWithGoogleEventCopyWithImpl(this._value, this._then);

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
    extends _$SignWithGoogleEventCopyWithImpl<$Res, _$StartedImpl>
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
    return 'SignWithGoogleEvent.started()';
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
  }) {
    return started();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
  }) {
    return started?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
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
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class _Started implements SignWithGoogleEvent {
  const factory _Started() = _$StartedImpl;
}

/// @nodoc
mixin _$SignWithGoogleState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() startSuccess,
    required TResult Function() signSuccess,
    required TResult Function(String msg) failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? startSuccess,
    TResult? Function()? signSuccess,
    TResult? Function(String msg)? failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? startSuccess,
    TResult Function()? signSuccess,
    TResult Function(String msg)? failure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_StartSuccess value) startSuccess,
    required TResult Function(_SignSuccess value) signSuccess,
    required TResult Function(_Failure value) failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_StartSuccess value)? startSuccess,
    TResult? Function(_SignSuccess value)? signSuccess,
    TResult? Function(_Failure value)? failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_StartSuccess value)? startSuccess,
    TResult Function(_SignSuccess value)? signSuccess,
    TResult Function(_Failure value)? failure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SignWithGoogleStateCopyWith<$Res> {
  factory $SignWithGoogleStateCopyWith(
          SignWithGoogleState value, $Res Function(SignWithGoogleState) then) =
      _$SignWithGoogleStateCopyWithImpl<$Res, SignWithGoogleState>;
}

/// @nodoc
class _$SignWithGoogleStateCopyWithImpl<$Res, $Val extends SignWithGoogleState>
    implements $SignWithGoogleStateCopyWith<$Res> {
  _$SignWithGoogleStateCopyWithImpl(this._value, this._then);

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
    extends _$SignWithGoogleStateCopyWithImpl<$Res, _$InitialImpl>
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
    return 'SignWithGoogleState.initial()';
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
    required TResult Function() startSuccess,
    required TResult Function() signSuccess,
    required TResult Function(String msg) failure,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? startSuccess,
    TResult? Function()? signSuccess,
    TResult? Function(String msg)? failure,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? startSuccess,
    TResult Function()? signSuccess,
    TResult Function(String msg)? failure,
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
    required TResult Function(_StartSuccess value) startSuccess,
    required TResult Function(_SignSuccess value) signSuccess,
    required TResult Function(_Failure value) failure,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_StartSuccess value)? startSuccess,
    TResult? Function(_SignSuccess value)? signSuccess,
    TResult? Function(_Failure value)? failure,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_StartSuccess value)? startSuccess,
    TResult Function(_SignSuccess value)? signSuccess,
    TResult Function(_Failure value)? failure,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements SignWithGoogleState {
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
    extends _$SignWithGoogleStateCopyWithImpl<$Res, _$LoadingImpl>
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
    return 'SignWithGoogleState.loading()';
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
    required TResult Function() startSuccess,
    required TResult Function() signSuccess,
    required TResult Function(String msg) failure,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? startSuccess,
    TResult? Function()? signSuccess,
    TResult? Function(String msg)? failure,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? startSuccess,
    TResult Function()? signSuccess,
    TResult Function(String msg)? failure,
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
    required TResult Function(_StartSuccess value) startSuccess,
    required TResult Function(_SignSuccess value) signSuccess,
    required TResult Function(_Failure value) failure,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_StartSuccess value)? startSuccess,
    TResult? Function(_SignSuccess value)? signSuccess,
    TResult? Function(_Failure value)? failure,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_StartSuccess value)? startSuccess,
    TResult Function(_SignSuccess value)? signSuccess,
    TResult Function(_Failure value)? failure,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _Loading implements SignWithGoogleState {
  const factory _Loading() = _$LoadingImpl;
}

/// @nodoc
abstract class _$$StartSuccessImplCopyWith<$Res> {
  factory _$$StartSuccessImplCopyWith(
          _$StartSuccessImpl value, $Res Function(_$StartSuccessImpl) then) =
      __$$StartSuccessImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$StartSuccessImplCopyWithImpl<$Res>
    extends _$SignWithGoogleStateCopyWithImpl<$Res, _$StartSuccessImpl>
    implements _$$StartSuccessImplCopyWith<$Res> {
  __$$StartSuccessImplCopyWithImpl(
      _$StartSuccessImpl _value, $Res Function(_$StartSuccessImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$StartSuccessImpl implements _StartSuccess {
  const _$StartSuccessImpl();

  @override
  String toString() {
    return 'SignWithGoogleState.startSuccess()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$StartSuccessImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() startSuccess,
    required TResult Function() signSuccess,
    required TResult Function(String msg) failure,
  }) {
    return startSuccess();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? startSuccess,
    TResult? Function()? signSuccess,
    TResult? Function(String msg)? failure,
  }) {
    return startSuccess?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? startSuccess,
    TResult Function()? signSuccess,
    TResult Function(String msg)? failure,
    required TResult orElse(),
  }) {
    if (startSuccess != null) {
      return startSuccess();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_StartSuccess value) startSuccess,
    required TResult Function(_SignSuccess value) signSuccess,
    required TResult Function(_Failure value) failure,
  }) {
    return startSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_StartSuccess value)? startSuccess,
    TResult? Function(_SignSuccess value)? signSuccess,
    TResult? Function(_Failure value)? failure,
  }) {
    return startSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_StartSuccess value)? startSuccess,
    TResult Function(_SignSuccess value)? signSuccess,
    TResult Function(_Failure value)? failure,
    required TResult orElse(),
  }) {
    if (startSuccess != null) {
      return startSuccess(this);
    }
    return orElse();
  }
}

abstract class _StartSuccess implements SignWithGoogleState {
  const factory _StartSuccess() = _$StartSuccessImpl;
}

/// @nodoc
abstract class _$$SignSuccessImplCopyWith<$Res> {
  factory _$$SignSuccessImplCopyWith(
          _$SignSuccessImpl value, $Res Function(_$SignSuccessImpl) then) =
      __$$SignSuccessImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$SignSuccessImplCopyWithImpl<$Res>
    extends _$SignWithGoogleStateCopyWithImpl<$Res, _$SignSuccessImpl>
    implements _$$SignSuccessImplCopyWith<$Res> {
  __$$SignSuccessImplCopyWithImpl(
      _$SignSuccessImpl _value, $Res Function(_$SignSuccessImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$SignSuccessImpl implements _SignSuccess {
  const _$SignSuccessImpl();

  @override
  String toString() {
    return 'SignWithGoogleState.signSuccess()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$SignSuccessImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() startSuccess,
    required TResult Function() signSuccess,
    required TResult Function(String msg) failure,
  }) {
    return signSuccess();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? startSuccess,
    TResult? Function()? signSuccess,
    TResult? Function(String msg)? failure,
  }) {
    return signSuccess?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? startSuccess,
    TResult Function()? signSuccess,
    TResult Function(String msg)? failure,
    required TResult orElse(),
  }) {
    if (signSuccess != null) {
      return signSuccess();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_StartSuccess value) startSuccess,
    required TResult Function(_SignSuccess value) signSuccess,
    required TResult Function(_Failure value) failure,
  }) {
    return signSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_StartSuccess value)? startSuccess,
    TResult? Function(_SignSuccess value)? signSuccess,
    TResult? Function(_Failure value)? failure,
  }) {
    return signSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_StartSuccess value)? startSuccess,
    TResult Function(_SignSuccess value)? signSuccess,
    TResult Function(_Failure value)? failure,
    required TResult orElse(),
  }) {
    if (signSuccess != null) {
      return signSuccess(this);
    }
    return orElse();
  }
}

abstract class _SignSuccess implements SignWithGoogleState {
  const factory _SignSuccess() = _$SignSuccessImpl;
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
    extends _$SignWithGoogleStateCopyWithImpl<$Res, _$FailureImpl>
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
      null == msg
          ? _value.msg
          : msg // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$FailureImpl implements _Failure {
  const _$FailureImpl(this.msg);

  @override
  final String msg;

  @override
  String toString() {
    return 'SignWithGoogleState.failure(msg: $msg)';
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
    required TResult Function() loading,
    required TResult Function() startSuccess,
    required TResult Function() signSuccess,
    required TResult Function(String msg) failure,
  }) {
    return failure(msg);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? startSuccess,
    TResult? Function()? signSuccess,
    TResult? Function(String msg)? failure,
  }) {
    return failure?.call(msg);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? startSuccess,
    TResult Function()? signSuccess,
    TResult Function(String msg)? failure,
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
    required TResult Function(_Loading value) loading,
    required TResult Function(_StartSuccess value) startSuccess,
    required TResult Function(_SignSuccess value) signSuccess,
    required TResult Function(_Failure value) failure,
  }) {
    return failure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_StartSuccess value)? startSuccess,
    TResult? Function(_SignSuccess value)? signSuccess,
    TResult? Function(_Failure value)? failure,
  }) {
    return failure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_StartSuccess value)? startSuccess,
    TResult Function(_SignSuccess value)? signSuccess,
    TResult Function(_Failure value)? failure,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(this);
    }
    return orElse();
  }
}

abstract class _Failure implements SignWithGoogleState {
  const factory _Failure(final String msg) = _$FailureImpl;

  String get msg;
  @JsonKey(ignore: true)
  _$$FailureImplCopyWith<_$FailureImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
