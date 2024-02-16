// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'otp_forgot_password_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$OtpForgotPasswordEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() timerChange,
    required TResult Function(String code) verifyResetCode,
    required TResult Function() resendVerifyCode,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? timerChange,
    TResult? Function(String code)? verifyResetCode,
    TResult? Function()? resendVerifyCode,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? timerChange,
    TResult Function(String code)? verifyResetCode,
    TResult Function()? resendVerifyCode,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(TimerChange value) timerChange,
    required TResult Function(VerifyResetCode value) verifyResetCode,
    required TResult Function(ResendVerifyCode value) resendVerifyCode,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(TimerChange value)? timerChange,
    TResult? Function(VerifyResetCode value)? verifyResetCode,
    TResult? Function(ResendVerifyCode value)? resendVerifyCode,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(TimerChange value)? timerChange,
    TResult Function(VerifyResetCode value)? verifyResetCode,
    TResult Function(ResendVerifyCode value)? resendVerifyCode,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OtpForgotPasswordEventCopyWith<$Res> {
  factory $OtpForgotPasswordEventCopyWith(OtpForgotPasswordEvent value,
          $Res Function(OtpForgotPasswordEvent) then) =
      _$OtpForgotPasswordEventCopyWithImpl<$Res, OtpForgotPasswordEvent>;
}

/// @nodoc
class _$OtpForgotPasswordEventCopyWithImpl<$Res,
        $Val extends OtpForgotPasswordEvent>
    implements $OtpForgotPasswordEventCopyWith<$Res> {
  _$OtpForgotPasswordEventCopyWithImpl(this._value, this._then);

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
    extends _$OtpForgotPasswordEventCopyWithImpl<$Res, _$StartedImpl>
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
    return 'OtpForgotPasswordEvent.started()';
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
    required TResult Function() timerChange,
    required TResult Function(String code) verifyResetCode,
    required TResult Function() resendVerifyCode,
  }) {
    return started();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? timerChange,
    TResult? Function(String code)? verifyResetCode,
    TResult? Function()? resendVerifyCode,
  }) {
    return started?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? timerChange,
    TResult Function(String code)? verifyResetCode,
    TResult Function()? resendVerifyCode,
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
    required TResult Function(TimerChange value) timerChange,
    required TResult Function(VerifyResetCode value) verifyResetCode,
    required TResult Function(ResendVerifyCode value) resendVerifyCode,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(TimerChange value)? timerChange,
    TResult? Function(VerifyResetCode value)? verifyResetCode,
    TResult? Function(ResendVerifyCode value)? resendVerifyCode,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(TimerChange value)? timerChange,
    TResult Function(VerifyResetCode value)? verifyResetCode,
    TResult Function(ResendVerifyCode value)? resendVerifyCode,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class _Started implements OtpForgotPasswordEvent {
  const factory _Started() = _$StartedImpl;
}

/// @nodoc
abstract class _$$TimerChangeImplCopyWith<$Res> {
  factory _$$TimerChangeImplCopyWith(
          _$TimerChangeImpl value, $Res Function(_$TimerChangeImpl) then) =
      __$$TimerChangeImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$TimerChangeImplCopyWithImpl<$Res>
    extends _$OtpForgotPasswordEventCopyWithImpl<$Res, _$TimerChangeImpl>
    implements _$$TimerChangeImplCopyWith<$Res> {
  __$$TimerChangeImplCopyWithImpl(
      _$TimerChangeImpl _value, $Res Function(_$TimerChangeImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$TimerChangeImpl implements TimerChange {
  const _$TimerChangeImpl();

  @override
  String toString() {
    return 'OtpForgotPasswordEvent.timerChange()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$TimerChangeImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() timerChange,
    required TResult Function(String code) verifyResetCode,
    required TResult Function() resendVerifyCode,
  }) {
    return timerChange();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? timerChange,
    TResult? Function(String code)? verifyResetCode,
    TResult? Function()? resendVerifyCode,
  }) {
    return timerChange?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? timerChange,
    TResult Function(String code)? verifyResetCode,
    TResult Function()? resendVerifyCode,
    required TResult orElse(),
  }) {
    if (timerChange != null) {
      return timerChange();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(TimerChange value) timerChange,
    required TResult Function(VerifyResetCode value) verifyResetCode,
    required TResult Function(ResendVerifyCode value) resendVerifyCode,
  }) {
    return timerChange(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(TimerChange value)? timerChange,
    TResult? Function(VerifyResetCode value)? verifyResetCode,
    TResult? Function(ResendVerifyCode value)? resendVerifyCode,
  }) {
    return timerChange?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(TimerChange value)? timerChange,
    TResult Function(VerifyResetCode value)? verifyResetCode,
    TResult Function(ResendVerifyCode value)? resendVerifyCode,
    required TResult orElse(),
  }) {
    if (timerChange != null) {
      return timerChange(this);
    }
    return orElse();
  }
}

abstract class TimerChange implements OtpForgotPasswordEvent {
  const factory TimerChange() = _$TimerChangeImpl;
}

/// @nodoc
abstract class _$$VerifyResetCodeImplCopyWith<$Res> {
  factory _$$VerifyResetCodeImplCopyWith(_$VerifyResetCodeImpl value,
          $Res Function(_$VerifyResetCodeImpl) then) =
      __$$VerifyResetCodeImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String code});
}

/// @nodoc
class __$$VerifyResetCodeImplCopyWithImpl<$Res>
    extends _$OtpForgotPasswordEventCopyWithImpl<$Res, _$VerifyResetCodeImpl>
    implements _$$VerifyResetCodeImplCopyWith<$Res> {
  __$$VerifyResetCodeImplCopyWithImpl(
      _$VerifyResetCodeImpl _value, $Res Function(_$VerifyResetCodeImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = null,
  }) {
    return _then(_$VerifyResetCodeImpl(
      null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$VerifyResetCodeImpl implements VerifyResetCode {
  const _$VerifyResetCodeImpl(this.code);

  @override
  final String code;

  @override
  String toString() {
    return 'OtpForgotPasswordEvent.verifyResetCode(code: $code)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$VerifyResetCodeImpl &&
            (identical(other.code, code) || other.code == code));
  }

  @override
  int get hashCode => Object.hash(runtimeType, code);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$VerifyResetCodeImplCopyWith<_$VerifyResetCodeImpl> get copyWith =>
      __$$VerifyResetCodeImplCopyWithImpl<_$VerifyResetCodeImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() timerChange,
    required TResult Function(String code) verifyResetCode,
    required TResult Function() resendVerifyCode,
  }) {
    return verifyResetCode(code);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? timerChange,
    TResult? Function(String code)? verifyResetCode,
    TResult? Function()? resendVerifyCode,
  }) {
    return verifyResetCode?.call(code);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? timerChange,
    TResult Function(String code)? verifyResetCode,
    TResult Function()? resendVerifyCode,
    required TResult orElse(),
  }) {
    if (verifyResetCode != null) {
      return verifyResetCode(code);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(TimerChange value) timerChange,
    required TResult Function(VerifyResetCode value) verifyResetCode,
    required TResult Function(ResendVerifyCode value) resendVerifyCode,
  }) {
    return verifyResetCode(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(TimerChange value)? timerChange,
    TResult? Function(VerifyResetCode value)? verifyResetCode,
    TResult? Function(ResendVerifyCode value)? resendVerifyCode,
  }) {
    return verifyResetCode?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(TimerChange value)? timerChange,
    TResult Function(VerifyResetCode value)? verifyResetCode,
    TResult Function(ResendVerifyCode value)? resendVerifyCode,
    required TResult orElse(),
  }) {
    if (verifyResetCode != null) {
      return verifyResetCode(this);
    }
    return orElse();
  }
}

abstract class VerifyResetCode implements OtpForgotPasswordEvent {
  const factory VerifyResetCode(final String code) = _$VerifyResetCodeImpl;

  String get code;
  @JsonKey(ignore: true)
  _$$VerifyResetCodeImplCopyWith<_$VerifyResetCodeImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ResendVerifyCodeImplCopyWith<$Res> {
  factory _$$ResendVerifyCodeImplCopyWith(_$ResendVerifyCodeImpl value,
          $Res Function(_$ResendVerifyCodeImpl) then) =
      __$$ResendVerifyCodeImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ResendVerifyCodeImplCopyWithImpl<$Res>
    extends _$OtpForgotPasswordEventCopyWithImpl<$Res, _$ResendVerifyCodeImpl>
    implements _$$ResendVerifyCodeImplCopyWith<$Res> {
  __$$ResendVerifyCodeImplCopyWithImpl(_$ResendVerifyCodeImpl _value,
      $Res Function(_$ResendVerifyCodeImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ResendVerifyCodeImpl implements ResendVerifyCode {
  const _$ResendVerifyCodeImpl();

  @override
  String toString() {
    return 'OtpForgotPasswordEvent.resendVerifyCode()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ResendVerifyCodeImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() timerChange,
    required TResult Function(String code) verifyResetCode,
    required TResult Function() resendVerifyCode,
  }) {
    return resendVerifyCode();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? timerChange,
    TResult? Function(String code)? verifyResetCode,
    TResult? Function()? resendVerifyCode,
  }) {
    return resendVerifyCode?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? timerChange,
    TResult Function(String code)? verifyResetCode,
    TResult Function()? resendVerifyCode,
    required TResult orElse(),
  }) {
    if (resendVerifyCode != null) {
      return resendVerifyCode();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(TimerChange value) timerChange,
    required TResult Function(VerifyResetCode value) verifyResetCode,
    required TResult Function(ResendVerifyCode value) resendVerifyCode,
  }) {
    return resendVerifyCode(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(TimerChange value)? timerChange,
    TResult? Function(VerifyResetCode value)? verifyResetCode,
    TResult? Function(ResendVerifyCode value)? resendVerifyCode,
  }) {
    return resendVerifyCode?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(TimerChange value)? timerChange,
    TResult Function(VerifyResetCode value)? verifyResetCode,
    TResult Function(ResendVerifyCode value)? resendVerifyCode,
    required TResult orElse(),
  }) {
    if (resendVerifyCode != null) {
      return resendVerifyCode(this);
    }
    return orElse();
  }
}

abstract class ResendVerifyCode implements OtpForgotPasswordEvent {
  const factory ResendVerifyCode() = _$ResendVerifyCodeImpl;
}

/// @nodoc
mixin _$OtpForgotPasswordState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(int time) refresh,
    required TResult Function() pLoading,
    required TResult Function() successVerifyCode,
    required TResult Function() successSendCode,
    required TResult Function(String error) failure,
    required TResult Function(int id) outTime,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(int time)? refresh,
    TResult? Function()? pLoading,
    TResult? Function()? successVerifyCode,
    TResult? Function()? successSendCode,
    TResult? Function(String error)? failure,
    TResult? Function(int id)? outTime,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(int time)? refresh,
    TResult Function()? pLoading,
    TResult Function()? successVerifyCode,
    TResult Function()? successSendCode,
    TResult Function(String error)? failure,
    TResult Function(int id)? outTime,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(Refresh value) refresh,
    required TResult Function(PLoading value) pLoading,
    required TResult Function(SuccessVerifyCode value) successVerifyCode,
    required TResult Function(SuccessSendCode value) successSendCode,
    required TResult Function(Failure value) failure,
    required TResult Function(OutTime value) outTime,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(Refresh value)? refresh,
    TResult? Function(PLoading value)? pLoading,
    TResult? Function(SuccessVerifyCode value)? successVerifyCode,
    TResult? Function(SuccessSendCode value)? successSendCode,
    TResult? Function(Failure value)? failure,
    TResult? Function(OutTime value)? outTime,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(Refresh value)? refresh,
    TResult Function(PLoading value)? pLoading,
    TResult Function(SuccessVerifyCode value)? successVerifyCode,
    TResult Function(SuccessSendCode value)? successSendCode,
    TResult Function(Failure value)? failure,
    TResult Function(OutTime value)? outTime,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OtpForgotPasswordStateCopyWith<$Res> {
  factory $OtpForgotPasswordStateCopyWith(OtpForgotPasswordState value,
          $Res Function(OtpForgotPasswordState) then) =
      _$OtpForgotPasswordStateCopyWithImpl<$Res, OtpForgotPasswordState>;
}

/// @nodoc
class _$OtpForgotPasswordStateCopyWithImpl<$Res,
        $Val extends OtpForgotPasswordState>
    implements $OtpForgotPasswordStateCopyWith<$Res> {
  _$OtpForgotPasswordStateCopyWithImpl(this._value, this._then);

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
    extends _$OtpForgotPasswordStateCopyWithImpl<$Res, _$InitialImpl>
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
    return 'OtpForgotPasswordState.initial()';
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
    required TResult Function(int time) refresh,
    required TResult Function() pLoading,
    required TResult Function() successVerifyCode,
    required TResult Function() successSendCode,
    required TResult Function(String error) failure,
    required TResult Function(int id) outTime,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(int time)? refresh,
    TResult? Function()? pLoading,
    TResult? Function()? successVerifyCode,
    TResult? Function()? successSendCode,
    TResult? Function(String error)? failure,
    TResult? Function(int id)? outTime,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(int time)? refresh,
    TResult Function()? pLoading,
    TResult Function()? successVerifyCode,
    TResult Function()? successSendCode,
    TResult Function(String error)? failure,
    TResult Function(int id)? outTime,
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
    required TResult Function(PLoading value) pLoading,
    required TResult Function(SuccessVerifyCode value) successVerifyCode,
    required TResult Function(SuccessSendCode value) successSendCode,
    required TResult Function(Failure value) failure,
    required TResult Function(OutTime value) outTime,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(Refresh value)? refresh,
    TResult? Function(PLoading value)? pLoading,
    TResult? Function(SuccessVerifyCode value)? successVerifyCode,
    TResult? Function(SuccessSendCode value)? successSendCode,
    TResult? Function(Failure value)? failure,
    TResult? Function(OutTime value)? outTime,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(Refresh value)? refresh,
    TResult Function(PLoading value)? pLoading,
    TResult Function(SuccessVerifyCode value)? successVerifyCode,
    TResult Function(SuccessSendCode value)? successSendCode,
    TResult Function(Failure value)? failure,
    TResult Function(OutTime value)? outTime,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements OtpForgotPasswordState {
  const factory _Initial() = _$InitialImpl;
}

/// @nodoc
abstract class _$$RefreshImplCopyWith<$Res> {
  factory _$$RefreshImplCopyWith(
          _$RefreshImpl value, $Res Function(_$RefreshImpl) then) =
      __$$RefreshImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int time});
}

/// @nodoc
class __$$RefreshImplCopyWithImpl<$Res>
    extends _$OtpForgotPasswordStateCopyWithImpl<$Res, _$RefreshImpl>
    implements _$$RefreshImplCopyWith<$Res> {
  __$$RefreshImplCopyWithImpl(
      _$RefreshImpl _value, $Res Function(_$RefreshImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? time = null,
  }) {
    return _then(_$RefreshImpl(
      null == time
          ? _value.time
          : time // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$RefreshImpl implements Refresh {
  const _$RefreshImpl(this.time);

  @override
  final int time;

  @override
  String toString() {
    return 'OtpForgotPasswordState.refresh(time: $time)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RefreshImpl &&
            (identical(other.time, time) || other.time == time));
  }

  @override
  int get hashCode => Object.hash(runtimeType, time);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RefreshImplCopyWith<_$RefreshImpl> get copyWith =>
      __$$RefreshImplCopyWithImpl<_$RefreshImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(int time) refresh,
    required TResult Function() pLoading,
    required TResult Function() successVerifyCode,
    required TResult Function() successSendCode,
    required TResult Function(String error) failure,
    required TResult Function(int id) outTime,
  }) {
    return refresh(time);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(int time)? refresh,
    TResult? Function()? pLoading,
    TResult? Function()? successVerifyCode,
    TResult? Function()? successSendCode,
    TResult? Function(String error)? failure,
    TResult? Function(int id)? outTime,
  }) {
    return refresh?.call(time);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(int time)? refresh,
    TResult Function()? pLoading,
    TResult Function()? successVerifyCode,
    TResult Function()? successSendCode,
    TResult Function(String error)? failure,
    TResult Function(int id)? outTime,
    required TResult orElse(),
  }) {
    if (refresh != null) {
      return refresh(time);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(Refresh value) refresh,
    required TResult Function(PLoading value) pLoading,
    required TResult Function(SuccessVerifyCode value) successVerifyCode,
    required TResult Function(SuccessSendCode value) successSendCode,
    required TResult Function(Failure value) failure,
    required TResult Function(OutTime value) outTime,
  }) {
    return refresh(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(Refresh value)? refresh,
    TResult? Function(PLoading value)? pLoading,
    TResult? Function(SuccessVerifyCode value)? successVerifyCode,
    TResult? Function(SuccessSendCode value)? successSendCode,
    TResult? Function(Failure value)? failure,
    TResult? Function(OutTime value)? outTime,
  }) {
    return refresh?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(Refresh value)? refresh,
    TResult Function(PLoading value)? pLoading,
    TResult Function(SuccessVerifyCode value)? successVerifyCode,
    TResult Function(SuccessSendCode value)? successSendCode,
    TResult Function(Failure value)? failure,
    TResult Function(OutTime value)? outTime,
    required TResult orElse(),
  }) {
    if (refresh != null) {
      return refresh(this);
    }
    return orElse();
  }
}

abstract class Refresh implements OtpForgotPasswordState {
  const factory Refresh(final int time) = _$RefreshImpl;

  int get time;
  @JsonKey(ignore: true)
  _$$RefreshImplCopyWith<_$RefreshImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$PLoadingImplCopyWith<$Res> {
  factory _$$PLoadingImplCopyWith(
          _$PLoadingImpl value, $Res Function(_$PLoadingImpl) then) =
      __$$PLoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$PLoadingImplCopyWithImpl<$Res>
    extends _$OtpForgotPasswordStateCopyWithImpl<$Res, _$PLoadingImpl>
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
    return 'OtpForgotPasswordState.pLoading()';
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
    required TResult Function(int time) refresh,
    required TResult Function() pLoading,
    required TResult Function() successVerifyCode,
    required TResult Function() successSendCode,
    required TResult Function(String error) failure,
    required TResult Function(int id) outTime,
  }) {
    return pLoading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(int time)? refresh,
    TResult? Function()? pLoading,
    TResult? Function()? successVerifyCode,
    TResult? Function()? successSendCode,
    TResult? Function(String error)? failure,
    TResult? Function(int id)? outTime,
  }) {
    return pLoading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(int time)? refresh,
    TResult Function()? pLoading,
    TResult Function()? successVerifyCode,
    TResult Function()? successSendCode,
    TResult Function(String error)? failure,
    TResult Function(int id)? outTime,
    required TResult orElse(),
  }) {
    if (pLoading != null) {
      return pLoading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(Refresh value) refresh,
    required TResult Function(PLoading value) pLoading,
    required TResult Function(SuccessVerifyCode value) successVerifyCode,
    required TResult Function(SuccessSendCode value) successSendCode,
    required TResult Function(Failure value) failure,
    required TResult Function(OutTime value) outTime,
  }) {
    return pLoading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(Refresh value)? refresh,
    TResult? Function(PLoading value)? pLoading,
    TResult? Function(SuccessVerifyCode value)? successVerifyCode,
    TResult? Function(SuccessSendCode value)? successSendCode,
    TResult? Function(Failure value)? failure,
    TResult? Function(OutTime value)? outTime,
  }) {
    return pLoading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(Refresh value)? refresh,
    TResult Function(PLoading value)? pLoading,
    TResult Function(SuccessVerifyCode value)? successVerifyCode,
    TResult Function(SuccessSendCode value)? successSendCode,
    TResult Function(Failure value)? failure,
    TResult Function(OutTime value)? outTime,
    required TResult orElse(),
  }) {
    if (pLoading != null) {
      return pLoading(this);
    }
    return orElse();
  }
}

abstract class PLoading implements OtpForgotPasswordState {
  const factory PLoading() = _$PLoadingImpl;
}

/// @nodoc
abstract class _$$SuccessVerifyCodeImplCopyWith<$Res> {
  factory _$$SuccessVerifyCodeImplCopyWith(_$SuccessVerifyCodeImpl value,
          $Res Function(_$SuccessVerifyCodeImpl) then) =
      __$$SuccessVerifyCodeImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$SuccessVerifyCodeImplCopyWithImpl<$Res>
    extends _$OtpForgotPasswordStateCopyWithImpl<$Res, _$SuccessVerifyCodeImpl>
    implements _$$SuccessVerifyCodeImplCopyWith<$Res> {
  __$$SuccessVerifyCodeImplCopyWithImpl(_$SuccessVerifyCodeImpl _value,
      $Res Function(_$SuccessVerifyCodeImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$SuccessVerifyCodeImpl implements SuccessVerifyCode {
  const _$SuccessVerifyCodeImpl();

  @override
  String toString() {
    return 'OtpForgotPasswordState.successVerifyCode()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$SuccessVerifyCodeImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(int time) refresh,
    required TResult Function() pLoading,
    required TResult Function() successVerifyCode,
    required TResult Function() successSendCode,
    required TResult Function(String error) failure,
    required TResult Function(int id) outTime,
  }) {
    return successVerifyCode();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(int time)? refresh,
    TResult? Function()? pLoading,
    TResult? Function()? successVerifyCode,
    TResult? Function()? successSendCode,
    TResult? Function(String error)? failure,
    TResult? Function(int id)? outTime,
  }) {
    return successVerifyCode?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(int time)? refresh,
    TResult Function()? pLoading,
    TResult Function()? successVerifyCode,
    TResult Function()? successSendCode,
    TResult Function(String error)? failure,
    TResult Function(int id)? outTime,
    required TResult orElse(),
  }) {
    if (successVerifyCode != null) {
      return successVerifyCode();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(Refresh value) refresh,
    required TResult Function(PLoading value) pLoading,
    required TResult Function(SuccessVerifyCode value) successVerifyCode,
    required TResult Function(SuccessSendCode value) successSendCode,
    required TResult Function(Failure value) failure,
    required TResult Function(OutTime value) outTime,
  }) {
    return successVerifyCode(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(Refresh value)? refresh,
    TResult? Function(PLoading value)? pLoading,
    TResult? Function(SuccessVerifyCode value)? successVerifyCode,
    TResult? Function(SuccessSendCode value)? successSendCode,
    TResult? Function(Failure value)? failure,
    TResult? Function(OutTime value)? outTime,
  }) {
    return successVerifyCode?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(Refresh value)? refresh,
    TResult Function(PLoading value)? pLoading,
    TResult Function(SuccessVerifyCode value)? successVerifyCode,
    TResult Function(SuccessSendCode value)? successSendCode,
    TResult Function(Failure value)? failure,
    TResult Function(OutTime value)? outTime,
    required TResult orElse(),
  }) {
    if (successVerifyCode != null) {
      return successVerifyCode(this);
    }
    return orElse();
  }
}

abstract class SuccessVerifyCode implements OtpForgotPasswordState {
  const factory SuccessVerifyCode() = _$SuccessVerifyCodeImpl;
}

/// @nodoc
abstract class _$$SuccessSendCodeImplCopyWith<$Res> {
  factory _$$SuccessSendCodeImplCopyWith(_$SuccessSendCodeImpl value,
          $Res Function(_$SuccessSendCodeImpl) then) =
      __$$SuccessSendCodeImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$SuccessSendCodeImplCopyWithImpl<$Res>
    extends _$OtpForgotPasswordStateCopyWithImpl<$Res, _$SuccessSendCodeImpl>
    implements _$$SuccessSendCodeImplCopyWith<$Res> {
  __$$SuccessSendCodeImplCopyWithImpl(
      _$SuccessSendCodeImpl _value, $Res Function(_$SuccessSendCodeImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$SuccessSendCodeImpl implements SuccessSendCode {
  const _$SuccessSendCodeImpl();

  @override
  String toString() {
    return 'OtpForgotPasswordState.successSendCode()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$SuccessSendCodeImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(int time) refresh,
    required TResult Function() pLoading,
    required TResult Function() successVerifyCode,
    required TResult Function() successSendCode,
    required TResult Function(String error) failure,
    required TResult Function(int id) outTime,
  }) {
    return successSendCode();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(int time)? refresh,
    TResult? Function()? pLoading,
    TResult? Function()? successVerifyCode,
    TResult? Function()? successSendCode,
    TResult? Function(String error)? failure,
    TResult? Function(int id)? outTime,
  }) {
    return successSendCode?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(int time)? refresh,
    TResult Function()? pLoading,
    TResult Function()? successVerifyCode,
    TResult Function()? successSendCode,
    TResult Function(String error)? failure,
    TResult Function(int id)? outTime,
    required TResult orElse(),
  }) {
    if (successSendCode != null) {
      return successSendCode();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(Refresh value) refresh,
    required TResult Function(PLoading value) pLoading,
    required TResult Function(SuccessVerifyCode value) successVerifyCode,
    required TResult Function(SuccessSendCode value) successSendCode,
    required TResult Function(Failure value) failure,
    required TResult Function(OutTime value) outTime,
  }) {
    return successSendCode(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(Refresh value)? refresh,
    TResult? Function(PLoading value)? pLoading,
    TResult? Function(SuccessVerifyCode value)? successVerifyCode,
    TResult? Function(SuccessSendCode value)? successSendCode,
    TResult? Function(Failure value)? failure,
    TResult? Function(OutTime value)? outTime,
  }) {
    return successSendCode?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(Refresh value)? refresh,
    TResult Function(PLoading value)? pLoading,
    TResult Function(SuccessVerifyCode value)? successVerifyCode,
    TResult Function(SuccessSendCode value)? successSendCode,
    TResult Function(Failure value)? failure,
    TResult Function(OutTime value)? outTime,
    required TResult orElse(),
  }) {
    if (successSendCode != null) {
      return successSendCode(this);
    }
    return orElse();
  }
}

abstract class SuccessSendCode implements OtpForgotPasswordState {
  const factory SuccessSendCode() = _$SuccessSendCodeImpl;
}

/// @nodoc
abstract class _$$FailureImplCopyWith<$Res> {
  factory _$$FailureImplCopyWith(
          _$FailureImpl value, $Res Function(_$FailureImpl) then) =
      __$$FailureImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String error});
}

/// @nodoc
class __$$FailureImplCopyWithImpl<$Res>
    extends _$OtpForgotPasswordStateCopyWithImpl<$Res, _$FailureImpl>
    implements _$$FailureImplCopyWith<$Res> {
  __$$FailureImplCopyWithImpl(
      _$FailureImpl _value, $Res Function(_$FailureImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
  }) {
    return _then(_$FailureImpl(
      null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$FailureImpl implements Failure {
  const _$FailureImpl(this.error);

  @override
  final String error;

  @override
  String toString() {
    return 'OtpForgotPasswordState.failure(error: $error)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FailureImpl &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, error);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FailureImplCopyWith<_$FailureImpl> get copyWith =>
      __$$FailureImplCopyWithImpl<_$FailureImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(int time) refresh,
    required TResult Function() pLoading,
    required TResult Function() successVerifyCode,
    required TResult Function() successSendCode,
    required TResult Function(String error) failure,
    required TResult Function(int id) outTime,
  }) {
    return failure(error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(int time)? refresh,
    TResult? Function()? pLoading,
    TResult? Function()? successVerifyCode,
    TResult? Function()? successSendCode,
    TResult? Function(String error)? failure,
    TResult? Function(int id)? outTime,
  }) {
    return failure?.call(error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(int time)? refresh,
    TResult Function()? pLoading,
    TResult Function()? successVerifyCode,
    TResult Function()? successSendCode,
    TResult Function(String error)? failure,
    TResult Function(int id)? outTime,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(Refresh value) refresh,
    required TResult Function(PLoading value) pLoading,
    required TResult Function(SuccessVerifyCode value) successVerifyCode,
    required TResult Function(SuccessSendCode value) successSendCode,
    required TResult Function(Failure value) failure,
    required TResult Function(OutTime value) outTime,
  }) {
    return failure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(Refresh value)? refresh,
    TResult? Function(PLoading value)? pLoading,
    TResult? Function(SuccessVerifyCode value)? successVerifyCode,
    TResult? Function(SuccessSendCode value)? successSendCode,
    TResult? Function(Failure value)? failure,
    TResult? Function(OutTime value)? outTime,
  }) {
    return failure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(Refresh value)? refresh,
    TResult Function(PLoading value)? pLoading,
    TResult Function(SuccessVerifyCode value)? successVerifyCode,
    TResult Function(SuccessSendCode value)? successSendCode,
    TResult Function(Failure value)? failure,
    TResult Function(OutTime value)? outTime,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(this);
    }
    return orElse();
  }
}

abstract class Failure implements OtpForgotPasswordState {
  const factory Failure(final String error) = _$FailureImpl;

  String get error;
  @JsonKey(ignore: true)
  _$$FailureImplCopyWith<_$FailureImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$OutTimeImplCopyWith<$Res> {
  factory _$$OutTimeImplCopyWith(
          _$OutTimeImpl value, $Res Function(_$OutTimeImpl) then) =
      __$$OutTimeImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int id});
}

/// @nodoc
class __$$OutTimeImplCopyWithImpl<$Res>
    extends _$OtpForgotPasswordStateCopyWithImpl<$Res, _$OutTimeImpl>
    implements _$$OutTimeImplCopyWith<$Res> {
  __$$OutTimeImplCopyWithImpl(
      _$OutTimeImpl _value, $Res Function(_$OutTimeImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
  }) {
    return _then(_$OutTimeImpl(
      null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$OutTimeImpl implements OutTime {
  const _$OutTimeImpl(this.id);

  @override
  final int id;

  @override
  String toString() {
    return 'OtpForgotPasswordState.outTime(id: $id)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OutTimeImpl &&
            (identical(other.id, id) || other.id == id));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$OutTimeImplCopyWith<_$OutTimeImpl> get copyWith =>
      __$$OutTimeImplCopyWithImpl<_$OutTimeImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(int time) refresh,
    required TResult Function() pLoading,
    required TResult Function() successVerifyCode,
    required TResult Function() successSendCode,
    required TResult Function(String error) failure,
    required TResult Function(int id) outTime,
  }) {
    return outTime(id);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(int time)? refresh,
    TResult? Function()? pLoading,
    TResult? Function()? successVerifyCode,
    TResult? Function()? successSendCode,
    TResult? Function(String error)? failure,
    TResult? Function(int id)? outTime,
  }) {
    return outTime?.call(id);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(int time)? refresh,
    TResult Function()? pLoading,
    TResult Function()? successVerifyCode,
    TResult Function()? successSendCode,
    TResult Function(String error)? failure,
    TResult Function(int id)? outTime,
    required TResult orElse(),
  }) {
    if (outTime != null) {
      return outTime(id);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(Refresh value) refresh,
    required TResult Function(PLoading value) pLoading,
    required TResult Function(SuccessVerifyCode value) successVerifyCode,
    required TResult Function(SuccessSendCode value) successSendCode,
    required TResult Function(Failure value) failure,
    required TResult Function(OutTime value) outTime,
  }) {
    return outTime(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(Refresh value)? refresh,
    TResult? Function(PLoading value)? pLoading,
    TResult? Function(SuccessVerifyCode value)? successVerifyCode,
    TResult? Function(SuccessSendCode value)? successSendCode,
    TResult? Function(Failure value)? failure,
    TResult? Function(OutTime value)? outTime,
  }) {
    return outTime?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(Refresh value)? refresh,
    TResult Function(PLoading value)? pLoading,
    TResult Function(SuccessVerifyCode value)? successVerifyCode,
    TResult Function(SuccessSendCode value)? successSendCode,
    TResult Function(Failure value)? failure,
    TResult Function(OutTime value)? outTime,
    required TResult orElse(),
  }) {
    if (outTime != null) {
      return outTime(this);
    }
    return orElse();
  }
}

abstract class OutTime implements OtpForgotPasswordState {
  const factory OutTime(final int id) = _$OutTimeImpl;

  int get id;
  @JsonKey(ignore: true)
  _$$OutTimeImplCopyWith<_$OutTimeImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
