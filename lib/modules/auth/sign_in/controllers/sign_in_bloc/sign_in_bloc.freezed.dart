// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'sign_in_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$SignInEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() changePassIsHide,
    required TResult Function() forgotPass,
    required TResult Function() signIn,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? changePassIsHide,
    TResult? Function()? forgotPass,
    TResult? Function()? signIn,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? changePassIsHide,
    TResult Function()? forgotPass,
    TResult Function()? signIn,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(ChangePassIsHide value) changePassIsHide,
    required TResult Function(ForgotPasss value) forgotPass,
    required TResult Function(SignIn value) signIn,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(ChangePassIsHide value)? changePassIsHide,
    TResult? Function(ForgotPasss value)? forgotPass,
    TResult? Function(SignIn value)? signIn,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(ChangePassIsHide value)? changePassIsHide,
    TResult Function(ForgotPasss value)? forgotPass,
    TResult Function(SignIn value)? signIn,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SignInEventCopyWith<$Res> {
  factory $SignInEventCopyWith(
          SignInEvent value, $Res Function(SignInEvent) then) =
      _$SignInEventCopyWithImpl<$Res, SignInEvent>;
}

/// @nodoc
class _$SignInEventCopyWithImpl<$Res, $Val extends SignInEvent>
    implements $SignInEventCopyWith<$Res> {
  _$SignInEventCopyWithImpl(this._value, this._then);

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
    extends _$SignInEventCopyWithImpl<$Res, _$StartedImpl>
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
    return 'SignInEvent.started()';
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
    required TResult Function() changePassIsHide,
    required TResult Function() forgotPass,
    required TResult Function() signIn,
  }) {
    return started();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? changePassIsHide,
    TResult? Function()? forgotPass,
    TResult? Function()? signIn,
  }) {
    return started?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? changePassIsHide,
    TResult Function()? forgotPass,
    TResult Function()? signIn,
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
    required TResult Function(ChangePassIsHide value) changePassIsHide,
    required TResult Function(ForgotPasss value) forgotPass,
    required TResult Function(SignIn value) signIn,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(ChangePassIsHide value)? changePassIsHide,
    TResult? Function(ForgotPasss value)? forgotPass,
    TResult? Function(SignIn value)? signIn,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(ChangePassIsHide value)? changePassIsHide,
    TResult Function(ForgotPasss value)? forgotPass,
    TResult Function(SignIn value)? signIn,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class _Started implements SignInEvent {
  const factory _Started() = _$StartedImpl;
}

/// @nodoc
abstract class _$$ChangePassIsHideImplCopyWith<$Res> {
  factory _$$ChangePassIsHideImplCopyWith(_$ChangePassIsHideImpl value,
          $Res Function(_$ChangePassIsHideImpl) then) =
      __$$ChangePassIsHideImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ChangePassIsHideImplCopyWithImpl<$Res>
    extends _$SignInEventCopyWithImpl<$Res, _$ChangePassIsHideImpl>
    implements _$$ChangePassIsHideImplCopyWith<$Res> {
  __$$ChangePassIsHideImplCopyWithImpl(_$ChangePassIsHideImpl _value,
      $Res Function(_$ChangePassIsHideImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ChangePassIsHideImpl implements ChangePassIsHide {
  const _$ChangePassIsHideImpl();

  @override
  String toString() {
    return 'SignInEvent.changePassIsHide()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ChangePassIsHideImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() changePassIsHide,
    required TResult Function() forgotPass,
    required TResult Function() signIn,
  }) {
    return changePassIsHide();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? changePassIsHide,
    TResult? Function()? forgotPass,
    TResult? Function()? signIn,
  }) {
    return changePassIsHide?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? changePassIsHide,
    TResult Function()? forgotPass,
    TResult Function()? signIn,
    required TResult orElse(),
  }) {
    if (changePassIsHide != null) {
      return changePassIsHide();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(ChangePassIsHide value) changePassIsHide,
    required TResult Function(ForgotPasss value) forgotPass,
    required TResult Function(SignIn value) signIn,
  }) {
    return changePassIsHide(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(ChangePassIsHide value)? changePassIsHide,
    TResult? Function(ForgotPasss value)? forgotPass,
    TResult? Function(SignIn value)? signIn,
  }) {
    return changePassIsHide?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(ChangePassIsHide value)? changePassIsHide,
    TResult Function(ForgotPasss value)? forgotPass,
    TResult Function(SignIn value)? signIn,
    required TResult orElse(),
  }) {
    if (changePassIsHide != null) {
      return changePassIsHide(this);
    }
    return orElse();
  }
}

abstract class ChangePassIsHide implements SignInEvent {
  const factory ChangePassIsHide() = _$ChangePassIsHideImpl;
}

/// @nodoc
abstract class _$$ForgotPasssImplCopyWith<$Res> {
  factory _$$ForgotPasssImplCopyWith(
          _$ForgotPasssImpl value, $Res Function(_$ForgotPasssImpl) then) =
      __$$ForgotPasssImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ForgotPasssImplCopyWithImpl<$Res>
    extends _$SignInEventCopyWithImpl<$Res, _$ForgotPasssImpl>
    implements _$$ForgotPasssImplCopyWith<$Res> {
  __$$ForgotPasssImplCopyWithImpl(
      _$ForgotPasssImpl _value, $Res Function(_$ForgotPasssImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ForgotPasssImpl implements ForgotPasss {
  const _$ForgotPasssImpl();

  @override
  String toString() {
    return 'SignInEvent.forgotPass()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ForgotPasssImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() changePassIsHide,
    required TResult Function() forgotPass,
    required TResult Function() signIn,
  }) {
    return forgotPass();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? changePassIsHide,
    TResult? Function()? forgotPass,
    TResult? Function()? signIn,
  }) {
    return forgotPass?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? changePassIsHide,
    TResult Function()? forgotPass,
    TResult Function()? signIn,
    required TResult orElse(),
  }) {
    if (forgotPass != null) {
      return forgotPass();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(ChangePassIsHide value) changePassIsHide,
    required TResult Function(ForgotPasss value) forgotPass,
    required TResult Function(SignIn value) signIn,
  }) {
    return forgotPass(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(ChangePassIsHide value)? changePassIsHide,
    TResult? Function(ForgotPasss value)? forgotPass,
    TResult? Function(SignIn value)? signIn,
  }) {
    return forgotPass?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(ChangePassIsHide value)? changePassIsHide,
    TResult Function(ForgotPasss value)? forgotPass,
    TResult Function(SignIn value)? signIn,
    required TResult orElse(),
  }) {
    if (forgotPass != null) {
      return forgotPass(this);
    }
    return orElse();
  }
}

abstract class ForgotPasss implements SignInEvent {
  const factory ForgotPasss() = _$ForgotPasssImpl;
}

/// @nodoc
abstract class _$$SignInImplCopyWith<$Res> {
  factory _$$SignInImplCopyWith(
          _$SignInImpl value, $Res Function(_$SignInImpl) then) =
      __$$SignInImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$SignInImplCopyWithImpl<$Res>
    extends _$SignInEventCopyWithImpl<$Res, _$SignInImpl>
    implements _$$SignInImplCopyWith<$Res> {
  __$$SignInImplCopyWithImpl(
      _$SignInImpl _value, $Res Function(_$SignInImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$SignInImpl implements SignIn {
  const _$SignInImpl();

  @override
  String toString() {
    return 'SignInEvent.signIn()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$SignInImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() changePassIsHide,
    required TResult Function() forgotPass,
    required TResult Function() signIn,
  }) {
    return signIn();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? changePassIsHide,
    TResult? Function()? forgotPass,
    TResult? Function()? signIn,
  }) {
    return signIn?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? changePassIsHide,
    TResult Function()? forgotPass,
    TResult Function()? signIn,
    required TResult orElse(),
  }) {
    if (signIn != null) {
      return signIn();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(ChangePassIsHide value) changePassIsHide,
    required TResult Function(ForgotPasss value) forgotPass,
    required TResult Function(SignIn value) signIn,
  }) {
    return signIn(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(ChangePassIsHide value)? changePassIsHide,
    TResult? Function(ForgotPasss value)? forgotPass,
    TResult? Function(SignIn value)? signIn,
  }) {
    return signIn?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(ChangePassIsHide value)? changePassIsHide,
    TResult Function(ForgotPasss value)? forgotPass,
    TResult Function(SignIn value)? signIn,
    required TResult orElse(),
  }) {
    if (signIn != null) {
      return signIn(this);
    }
    return orElse();
  }
}

abstract class SignIn implements SignInEvent {
  const factory SignIn() = _$SignInImpl;
}

/// @nodoc
mixin _$SignInState<T> {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(bool isHide) passIsHide,
    required TResult Function() pLoading,
    required TResult Function(T data) userNotActive,
    required TResult Function(T data) successSignIn,
    required TResult Function(T data) successForgotPass,
    required TResult Function(String error) failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(bool isHide)? passIsHide,
    TResult? Function()? pLoading,
    TResult? Function(T data)? userNotActive,
    TResult? Function(T data)? successSignIn,
    TResult? Function(T data)? successForgotPass,
    TResult? Function(String error)? failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(bool isHide)? passIsHide,
    TResult Function()? pLoading,
    TResult Function(T data)? userNotActive,
    TResult Function(T data)? successSignIn,
    TResult Function(T data)? successForgotPass,
    TResult Function(String error)? failure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial<T> value) initial,
    required TResult Function(PassIsHide<T> value) passIsHide,
    required TResult Function(PLoading<T> value) pLoading,
    required TResult Function(UserNotActive<T> value) userNotActive,
    required TResult Function(SuccessSignIn<T> value) successSignIn,
    required TResult Function(SuccessForgotPass<T> value) successForgotPass,
    required TResult Function(Failure<T> value) failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial<T> value)? initial,
    TResult? Function(PassIsHide<T> value)? passIsHide,
    TResult? Function(PLoading<T> value)? pLoading,
    TResult? Function(UserNotActive<T> value)? userNotActive,
    TResult? Function(SuccessSignIn<T> value)? successSignIn,
    TResult? Function(SuccessForgotPass<T> value)? successForgotPass,
    TResult? Function(Failure<T> value)? failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial<T> value)? initial,
    TResult Function(PassIsHide<T> value)? passIsHide,
    TResult Function(PLoading<T> value)? pLoading,
    TResult Function(UserNotActive<T> value)? userNotActive,
    TResult Function(SuccessSignIn<T> value)? successSignIn,
    TResult Function(SuccessForgotPass<T> value)? successForgotPass,
    TResult Function(Failure<T> value)? failure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SignInStateCopyWith<T, $Res> {
  factory $SignInStateCopyWith(
          SignInState<T> value, $Res Function(SignInState<T>) then) =
      _$SignInStateCopyWithImpl<T, $Res, SignInState<T>>;
}

/// @nodoc
class _$SignInStateCopyWithImpl<T, $Res, $Val extends SignInState<T>>
    implements $SignInStateCopyWith<T, $Res> {
  _$SignInStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$InitialImplCopyWith<T, $Res> {
  factory _$$InitialImplCopyWith(
          _$InitialImpl<T> value, $Res Function(_$InitialImpl<T>) then) =
      __$$InitialImplCopyWithImpl<T, $Res>;
}

/// @nodoc
class __$$InitialImplCopyWithImpl<T, $Res>
    extends _$SignInStateCopyWithImpl<T, $Res, _$InitialImpl<T>>
    implements _$$InitialImplCopyWith<T, $Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl<T> _value, $Res Function(_$InitialImpl<T>) _then)
      : super(_value, _then);
}

/// @nodoc

class _$InitialImpl<T> implements _Initial<T> {
  const _$InitialImpl();

  @override
  String toString() {
    return 'SignInState<$T>.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$InitialImpl<T>);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(bool isHide) passIsHide,
    required TResult Function() pLoading,
    required TResult Function(T data) userNotActive,
    required TResult Function(T data) successSignIn,
    required TResult Function(T data) successForgotPass,
    required TResult Function(String error) failure,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(bool isHide)? passIsHide,
    TResult? Function()? pLoading,
    TResult? Function(T data)? userNotActive,
    TResult? Function(T data)? successSignIn,
    TResult? Function(T data)? successForgotPass,
    TResult? Function(String error)? failure,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(bool isHide)? passIsHide,
    TResult Function()? pLoading,
    TResult Function(T data)? userNotActive,
    TResult Function(T data)? successSignIn,
    TResult Function(T data)? successForgotPass,
    TResult Function(String error)? failure,
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
    required TResult Function(_Initial<T> value) initial,
    required TResult Function(PassIsHide<T> value) passIsHide,
    required TResult Function(PLoading<T> value) pLoading,
    required TResult Function(UserNotActive<T> value) userNotActive,
    required TResult Function(SuccessSignIn<T> value) successSignIn,
    required TResult Function(SuccessForgotPass<T> value) successForgotPass,
    required TResult Function(Failure<T> value) failure,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial<T> value)? initial,
    TResult? Function(PassIsHide<T> value)? passIsHide,
    TResult? Function(PLoading<T> value)? pLoading,
    TResult? Function(UserNotActive<T> value)? userNotActive,
    TResult? Function(SuccessSignIn<T> value)? successSignIn,
    TResult? Function(SuccessForgotPass<T> value)? successForgotPass,
    TResult? Function(Failure<T> value)? failure,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial<T> value)? initial,
    TResult Function(PassIsHide<T> value)? passIsHide,
    TResult Function(PLoading<T> value)? pLoading,
    TResult Function(UserNotActive<T> value)? userNotActive,
    TResult Function(SuccessSignIn<T> value)? successSignIn,
    TResult Function(SuccessForgotPass<T> value)? successForgotPass,
    TResult Function(Failure<T> value)? failure,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial<T> implements SignInState<T> {
  const factory _Initial() = _$InitialImpl<T>;
}

/// @nodoc
abstract class _$$PassIsHideImplCopyWith<T, $Res> {
  factory _$$PassIsHideImplCopyWith(
          _$PassIsHideImpl<T> value, $Res Function(_$PassIsHideImpl<T>) then) =
      __$$PassIsHideImplCopyWithImpl<T, $Res>;
  @useResult
  $Res call({bool isHide});
}

/// @nodoc
class __$$PassIsHideImplCopyWithImpl<T, $Res>
    extends _$SignInStateCopyWithImpl<T, $Res, _$PassIsHideImpl<T>>
    implements _$$PassIsHideImplCopyWith<T, $Res> {
  __$$PassIsHideImplCopyWithImpl(
      _$PassIsHideImpl<T> _value, $Res Function(_$PassIsHideImpl<T>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isHide = null,
  }) {
    return _then(_$PassIsHideImpl<T>(
      null == isHide
          ? _value.isHide
          : isHide // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$PassIsHideImpl<T> implements PassIsHide<T> {
  const _$PassIsHideImpl(this.isHide);

  @override
  final bool isHide;

  @override
  String toString() {
    return 'SignInState<$T>.passIsHide(isHide: $isHide)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PassIsHideImpl<T> &&
            (identical(other.isHide, isHide) || other.isHide == isHide));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isHide);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PassIsHideImplCopyWith<T, _$PassIsHideImpl<T>> get copyWith =>
      __$$PassIsHideImplCopyWithImpl<T, _$PassIsHideImpl<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(bool isHide) passIsHide,
    required TResult Function() pLoading,
    required TResult Function(T data) userNotActive,
    required TResult Function(T data) successSignIn,
    required TResult Function(T data) successForgotPass,
    required TResult Function(String error) failure,
  }) {
    return passIsHide(isHide);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(bool isHide)? passIsHide,
    TResult? Function()? pLoading,
    TResult? Function(T data)? userNotActive,
    TResult? Function(T data)? successSignIn,
    TResult? Function(T data)? successForgotPass,
    TResult? Function(String error)? failure,
  }) {
    return passIsHide?.call(isHide);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(bool isHide)? passIsHide,
    TResult Function()? pLoading,
    TResult Function(T data)? userNotActive,
    TResult Function(T data)? successSignIn,
    TResult Function(T data)? successForgotPass,
    TResult Function(String error)? failure,
    required TResult orElse(),
  }) {
    if (passIsHide != null) {
      return passIsHide(isHide);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial<T> value) initial,
    required TResult Function(PassIsHide<T> value) passIsHide,
    required TResult Function(PLoading<T> value) pLoading,
    required TResult Function(UserNotActive<T> value) userNotActive,
    required TResult Function(SuccessSignIn<T> value) successSignIn,
    required TResult Function(SuccessForgotPass<T> value) successForgotPass,
    required TResult Function(Failure<T> value) failure,
  }) {
    return passIsHide(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial<T> value)? initial,
    TResult? Function(PassIsHide<T> value)? passIsHide,
    TResult? Function(PLoading<T> value)? pLoading,
    TResult? Function(UserNotActive<T> value)? userNotActive,
    TResult? Function(SuccessSignIn<T> value)? successSignIn,
    TResult? Function(SuccessForgotPass<T> value)? successForgotPass,
    TResult? Function(Failure<T> value)? failure,
  }) {
    return passIsHide?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial<T> value)? initial,
    TResult Function(PassIsHide<T> value)? passIsHide,
    TResult Function(PLoading<T> value)? pLoading,
    TResult Function(UserNotActive<T> value)? userNotActive,
    TResult Function(SuccessSignIn<T> value)? successSignIn,
    TResult Function(SuccessForgotPass<T> value)? successForgotPass,
    TResult Function(Failure<T> value)? failure,
    required TResult orElse(),
  }) {
    if (passIsHide != null) {
      return passIsHide(this);
    }
    return orElse();
  }
}

abstract class PassIsHide<T> implements SignInState<T> {
  const factory PassIsHide(final bool isHide) = _$PassIsHideImpl<T>;

  bool get isHide;
  @JsonKey(ignore: true)
  _$$PassIsHideImplCopyWith<T, _$PassIsHideImpl<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$PLoadingImplCopyWith<T, $Res> {
  factory _$$PLoadingImplCopyWith(
          _$PLoadingImpl<T> value, $Res Function(_$PLoadingImpl<T>) then) =
      __$$PLoadingImplCopyWithImpl<T, $Res>;
}

/// @nodoc
class __$$PLoadingImplCopyWithImpl<T, $Res>
    extends _$SignInStateCopyWithImpl<T, $Res, _$PLoadingImpl<T>>
    implements _$$PLoadingImplCopyWith<T, $Res> {
  __$$PLoadingImplCopyWithImpl(
      _$PLoadingImpl<T> _value, $Res Function(_$PLoadingImpl<T>) _then)
      : super(_value, _then);
}

/// @nodoc

class _$PLoadingImpl<T> implements PLoading<T> {
  const _$PLoadingImpl();

  @override
  String toString() {
    return 'SignInState<$T>.pLoading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$PLoadingImpl<T>);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(bool isHide) passIsHide,
    required TResult Function() pLoading,
    required TResult Function(T data) userNotActive,
    required TResult Function(T data) successSignIn,
    required TResult Function(T data) successForgotPass,
    required TResult Function(String error) failure,
  }) {
    return pLoading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(bool isHide)? passIsHide,
    TResult? Function()? pLoading,
    TResult? Function(T data)? userNotActive,
    TResult? Function(T data)? successSignIn,
    TResult? Function(T data)? successForgotPass,
    TResult? Function(String error)? failure,
  }) {
    return pLoading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(bool isHide)? passIsHide,
    TResult Function()? pLoading,
    TResult Function(T data)? userNotActive,
    TResult Function(T data)? successSignIn,
    TResult Function(T data)? successForgotPass,
    TResult Function(String error)? failure,
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
    required TResult Function(_Initial<T> value) initial,
    required TResult Function(PassIsHide<T> value) passIsHide,
    required TResult Function(PLoading<T> value) pLoading,
    required TResult Function(UserNotActive<T> value) userNotActive,
    required TResult Function(SuccessSignIn<T> value) successSignIn,
    required TResult Function(SuccessForgotPass<T> value) successForgotPass,
    required TResult Function(Failure<T> value) failure,
  }) {
    return pLoading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial<T> value)? initial,
    TResult? Function(PassIsHide<T> value)? passIsHide,
    TResult? Function(PLoading<T> value)? pLoading,
    TResult? Function(UserNotActive<T> value)? userNotActive,
    TResult? Function(SuccessSignIn<T> value)? successSignIn,
    TResult? Function(SuccessForgotPass<T> value)? successForgotPass,
    TResult? Function(Failure<T> value)? failure,
  }) {
    return pLoading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial<T> value)? initial,
    TResult Function(PassIsHide<T> value)? passIsHide,
    TResult Function(PLoading<T> value)? pLoading,
    TResult Function(UserNotActive<T> value)? userNotActive,
    TResult Function(SuccessSignIn<T> value)? successSignIn,
    TResult Function(SuccessForgotPass<T> value)? successForgotPass,
    TResult Function(Failure<T> value)? failure,
    required TResult orElse(),
  }) {
    if (pLoading != null) {
      return pLoading(this);
    }
    return orElse();
  }
}

abstract class PLoading<T> implements SignInState<T> {
  const factory PLoading() = _$PLoadingImpl<T>;
}

/// @nodoc
abstract class _$$UserNotActiveImplCopyWith<T, $Res> {
  factory _$$UserNotActiveImplCopyWith(_$UserNotActiveImpl<T> value,
          $Res Function(_$UserNotActiveImpl<T>) then) =
      __$$UserNotActiveImplCopyWithImpl<T, $Res>;
  @useResult
  $Res call({T data});
}

/// @nodoc
class __$$UserNotActiveImplCopyWithImpl<T, $Res>
    extends _$SignInStateCopyWithImpl<T, $Res, _$UserNotActiveImpl<T>>
    implements _$$UserNotActiveImplCopyWith<T, $Res> {
  __$$UserNotActiveImplCopyWithImpl(_$UserNotActiveImpl<T> _value,
      $Res Function(_$UserNotActiveImpl<T>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(_$UserNotActiveImpl<T>(
      freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as T,
    ));
  }
}

/// @nodoc

class _$UserNotActiveImpl<T> implements UserNotActive<T> {
  const _$UserNotActiveImpl(this.data);

  @override
  final T data;

  @override
  String toString() {
    return 'SignInState<$T>.userNotActive(data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserNotActiveImpl<T> &&
            const DeepCollectionEquality().equals(other.data, data));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(data));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UserNotActiveImplCopyWith<T, _$UserNotActiveImpl<T>> get copyWith =>
      __$$UserNotActiveImplCopyWithImpl<T, _$UserNotActiveImpl<T>>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(bool isHide) passIsHide,
    required TResult Function() pLoading,
    required TResult Function(T data) userNotActive,
    required TResult Function(T data) successSignIn,
    required TResult Function(T data) successForgotPass,
    required TResult Function(String error) failure,
  }) {
    return userNotActive(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(bool isHide)? passIsHide,
    TResult? Function()? pLoading,
    TResult? Function(T data)? userNotActive,
    TResult? Function(T data)? successSignIn,
    TResult? Function(T data)? successForgotPass,
    TResult? Function(String error)? failure,
  }) {
    return userNotActive?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(bool isHide)? passIsHide,
    TResult Function()? pLoading,
    TResult Function(T data)? userNotActive,
    TResult Function(T data)? successSignIn,
    TResult Function(T data)? successForgotPass,
    TResult Function(String error)? failure,
    required TResult orElse(),
  }) {
    if (userNotActive != null) {
      return userNotActive(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial<T> value) initial,
    required TResult Function(PassIsHide<T> value) passIsHide,
    required TResult Function(PLoading<T> value) pLoading,
    required TResult Function(UserNotActive<T> value) userNotActive,
    required TResult Function(SuccessSignIn<T> value) successSignIn,
    required TResult Function(SuccessForgotPass<T> value) successForgotPass,
    required TResult Function(Failure<T> value) failure,
  }) {
    return userNotActive(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial<T> value)? initial,
    TResult? Function(PassIsHide<T> value)? passIsHide,
    TResult? Function(PLoading<T> value)? pLoading,
    TResult? Function(UserNotActive<T> value)? userNotActive,
    TResult? Function(SuccessSignIn<T> value)? successSignIn,
    TResult? Function(SuccessForgotPass<T> value)? successForgotPass,
    TResult? Function(Failure<T> value)? failure,
  }) {
    return userNotActive?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial<T> value)? initial,
    TResult Function(PassIsHide<T> value)? passIsHide,
    TResult Function(PLoading<T> value)? pLoading,
    TResult Function(UserNotActive<T> value)? userNotActive,
    TResult Function(SuccessSignIn<T> value)? successSignIn,
    TResult Function(SuccessForgotPass<T> value)? successForgotPass,
    TResult Function(Failure<T> value)? failure,
    required TResult orElse(),
  }) {
    if (userNotActive != null) {
      return userNotActive(this);
    }
    return orElse();
  }
}

abstract class UserNotActive<T> implements SignInState<T> {
  const factory UserNotActive(final T data) = _$UserNotActiveImpl<T>;

  T get data;
  @JsonKey(ignore: true)
  _$$UserNotActiveImplCopyWith<T, _$UserNotActiveImpl<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SuccessSignInImplCopyWith<T, $Res> {
  factory _$$SuccessSignInImplCopyWith(_$SuccessSignInImpl<T> value,
          $Res Function(_$SuccessSignInImpl<T>) then) =
      __$$SuccessSignInImplCopyWithImpl<T, $Res>;
  @useResult
  $Res call({T data});
}

/// @nodoc
class __$$SuccessSignInImplCopyWithImpl<T, $Res>
    extends _$SignInStateCopyWithImpl<T, $Res, _$SuccessSignInImpl<T>>
    implements _$$SuccessSignInImplCopyWith<T, $Res> {
  __$$SuccessSignInImplCopyWithImpl(_$SuccessSignInImpl<T> _value,
      $Res Function(_$SuccessSignInImpl<T>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(_$SuccessSignInImpl<T>(
      freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as T,
    ));
  }
}

/// @nodoc

class _$SuccessSignInImpl<T> implements SuccessSignIn<T> {
  const _$SuccessSignInImpl(this.data);

  @override
  final T data;

  @override
  String toString() {
    return 'SignInState<$T>.successSignIn(data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SuccessSignInImpl<T> &&
            const DeepCollectionEquality().equals(other.data, data));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(data));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SuccessSignInImplCopyWith<T, _$SuccessSignInImpl<T>> get copyWith =>
      __$$SuccessSignInImplCopyWithImpl<T, _$SuccessSignInImpl<T>>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(bool isHide) passIsHide,
    required TResult Function() pLoading,
    required TResult Function(T data) userNotActive,
    required TResult Function(T data) successSignIn,
    required TResult Function(T data) successForgotPass,
    required TResult Function(String error) failure,
  }) {
    return successSignIn(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(bool isHide)? passIsHide,
    TResult? Function()? pLoading,
    TResult? Function(T data)? userNotActive,
    TResult? Function(T data)? successSignIn,
    TResult? Function(T data)? successForgotPass,
    TResult? Function(String error)? failure,
  }) {
    return successSignIn?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(bool isHide)? passIsHide,
    TResult Function()? pLoading,
    TResult Function(T data)? userNotActive,
    TResult Function(T data)? successSignIn,
    TResult Function(T data)? successForgotPass,
    TResult Function(String error)? failure,
    required TResult orElse(),
  }) {
    if (successSignIn != null) {
      return successSignIn(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial<T> value) initial,
    required TResult Function(PassIsHide<T> value) passIsHide,
    required TResult Function(PLoading<T> value) pLoading,
    required TResult Function(UserNotActive<T> value) userNotActive,
    required TResult Function(SuccessSignIn<T> value) successSignIn,
    required TResult Function(SuccessForgotPass<T> value) successForgotPass,
    required TResult Function(Failure<T> value) failure,
  }) {
    return successSignIn(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial<T> value)? initial,
    TResult? Function(PassIsHide<T> value)? passIsHide,
    TResult? Function(PLoading<T> value)? pLoading,
    TResult? Function(UserNotActive<T> value)? userNotActive,
    TResult? Function(SuccessSignIn<T> value)? successSignIn,
    TResult? Function(SuccessForgotPass<T> value)? successForgotPass,
    TResult? Function(Failure<T> value)? failure,
  }) {
    return successSignIn?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial<T> value)? initial,
    TResult Function(PassIsHide<T> value)? passIsHide,
    TResult Function(PLoading<T> value)? pLoading,
    TResult Function(UserNotActive<T> value)? userNotActive,
    TResult Function(SuccessSignIn<T> value)? successSignIn,
    TResult Function(SuccessForgotPass<T> value)? successForgotPass,
    TResult Function(Failure<T> value)? failure,
    required TResult orElse(),
  }) {
    if (successSignIn != null) {
      return successSignIn(this);
    }
    return orElse();
  }
}

abstract class SuccessSignIn<T> implements SignInState<T> {
  const factory SuccessSignIn(final T data) = _$SuccessSignInImpl<T>;

  T get data;
  @JsonKey(ignore: true)
  _$$SuccessSignInImplCopyWith<T, _$SuccessSignInImpl<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SuccessForgotPassImplCopyWith<T, $Res> {
  factory _$$SuccessForgotPassImplCopyWith(_$SuccessForgotPassImpl<T> value,
          $Res Function(_$SuccessForgotPassImpl<T>) then) =
      __$$SuccessForgotPassImplCopyWithImpl<T, $Res>;
  @useResult
  $Res call({T data});
}

/// @nodoc
class __$$SuccessForgotPassImplCopyWithImpl<T, $Res>
    extends _$SignInStateCopyWithImpl<T, $Res, _$SuccessForgotPassImpl<T>>
    implements _$$SuccessForgotPassImplCopyWith<T, $Res> {
  __$$SuccessForgotPassImplCopyWithImpl(_$SuccessForgotPassImpl<T> _value,
      $Res Function(_$SuccessForgotPassImpl<T>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(_$SuccessForgotPassImpl<T>(
      freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as T,
    ));
  }
}

/// @nodoc

class _$SuccessForgotPassImpl<T> implements SuccessForgotPass<T> {
  const _$SuccessForgotPassImpl(this.data);

  @override
  final T data;

  @override
  String toString() {
    return 'SignInState<$T>.successForgotPass(data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SuccessForgotPassImpl<T> &&
            const DeepCollectionEquality().equals(other.data, data));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(data));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SuccessForgotPassImplCopyWith<T, _$SuccessForgotPassImpl<T>>
      get copyWith =>
          __$$SuccessForgotPassImplCopyWithImpl<T, _$SuccessForgotPassImpl<T>>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(bool isHide) passIsHide,
    required TResult Function() pLoading,
    required TResult Function(T data) userNotActive,
    required TResult Function(T data) successSignIn,
    required TResult Function(T data) successForgotPass,
    required TResult Function(String error) failure,
  }) {
    return successForgotPass(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(bool isHide)? passIsHide,
    TResult? Function()? pLoading,
    TResult? Function(T data)? userNotActive,
    TResult? Function(T data)? successSignIn,
    TResult? Function(T data)? successForgotPass,
    TResult? Function(String error)? failure,
  }) {
    return successForgotPass?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(bool isHide)? passIsHide,
    TResult Function()? pLoading,
    TResult Function(T data)? userNotActive,
    TResult Function(T data)? successSignIn,
    TResult Function(T data)? successForgotPass,
    TResult Function(String error)? failure,
    required TResult orElse(),
  }) {
    if (successForgotPass != null) {
      return successForgotPass(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial<T> value) initial,
    required TResult Function(PassIsHide<T> value) passIsHide,
    required TResult Function(PLoading<T> value) pLoading,
    required TResult Function(UserNotActive<T> value) userNotActive,
    required TResult Function(SuccessSignIn<T> value) successSignIn,
    required TResult Function(SuccessForgotPass<T> value) successForgotPass,
    required TResult Function(Failure<T> value) failure,
  }) {
    return successForgotPass(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial<T> value)? initial,
    TResult? Function(PassIsHide<T> value)? passIsHide,
    TResult? Function(PLoading<T> value)? pLoading,
    TResult? Function(UserNotActive<T> value)? userNotActive,
    TResult? Function(SuccessSignIn<T> value)? successSignIn,
    TResult? Function(SuccessForgotPass<T> value)? successForgotPass,
    TResult? Function(Failure<T> value)? failure,
  }) {
    return successForgotPass?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial<T> value)? initial,
    TResult Function(PassIsHide<T> value)? passIsHide,
    TResult Function(PLoading<T> value)? pLoading,
    TResult Function(UserNotActive<T> value)? userNotActive,
    TResult Function(SuccessSignIn<T> value)? successSignIn,
    TResult Function(SuccessForgotPass<T> value)? successForgotPass,
    TResult Function(Failure<T> value)? failure,
    required TResult orElse(),
  }) {
    if (successForgotPass != null) {
      return successForgotPass(this);
    }
    return orElse();
  }
}

abstract class SuccessForgotPass<T> implements SignInState<T> {
  const factory SuccessForgotPass(final T data) = _$SuccessForgotPassImpl<T>;

  T get data;
  @JsonKey(ignore: true)
  _$$SuccessForgotPassImplCopyWith<T, _$SuccessForgotPassImpl<T>>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$FailureImplCopyWith<T, $Res> {
  factory _$$FailureImplCopyWith(
          _$FailureImpl<T> value, $Res Function(_$FailureImpl<T>) then) =
      __$$FailureImplCopyWithImpl<T, $Res>;
  @useResult
  $Res call({String error});
}

/// @nodoc
class __$$FailureImplCopyWithImpl<T, $Res>
    extends _$SignInStateCopyWithImpl<T, $Res, _$FailureImpl<T>>
    implements _$$FailureImplCopyWith<T, $Res> {
  __$$FailureImplCopyWithImpl(
      _$FailureImpl<T> _value, $Res Function(_$FailureImpl<T>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
  }) {
    return _then(_$FailureImpl<T>(
      null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$FailureImpl<T> implements Failure<T> {
  const _$FailureImpl(this.error);

  @override
  final String error;

  @override
  String toString() {
    return 'SignInState<$T>.failure(error: $error)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FailureImpl<T> &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, error);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FailureImplCopyWith<T, _$FailureImpl<T>> get copyWith =>
      __$$FailureImplCopyWithImpl<T, _$FailureImpl<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(bool isHide) passIsHide,
    required TResult Function() pLoading,
    required TResult Function(T data) userNotActive,
    required TResult Function(T data) successSignIn,
    required TResult Function(T data) successForgotPass,
    required TResult Function(String error) failure,
  }) {
    return failure(error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(bool isHide)? passIsHide,
    TResult? Function()? pLoading,
    TResult? Function(T data)? userNotActive,
    TResult? Function(T data)? successSignIn,
    TResult? Function(T data)? successForgotPass,
    TResult? Function(String error)? failure,
  }) {
    return failure?.call(error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(bool isHide)? passIsHide,
    TResult Function()? pLoading,
    TResult Function(T data)? userNotActive,
    TResult Function(T data)? successSignIn,
    TResult Function(T data)? successForgotPass,
    TResult Function(String error)? failure,
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
    required TResult Function(_Initial<T> value) initial,
    required TResult Function(PassIsHide<T> value) passIsHide,
    required TResult Function(PLoading<T> value) pLoading,
    required TResult Function(UserNotActive<T> value) userNotActive,
    required TResult Function(SuccessSignIn<T> value) successSignIn,
    required TResult Function(SuccessForgotPass<T> value) successForgotPass,
    required TResult Function(Failure<T> value) failure,
  }) {
    return failure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial<T> value)? initial,
    TResult? Function(PassIsHide<T> value)? passIsHide,
    TResult? Function(PLoading<T> value)? pLoading,
    TResult? Function(UserNotActive<T> value)? userNotActive,
    TResult? Function(SuccessSignIn<T> value)? successSignIn,
    TResult? Function(SuccessForgotPass<T> value)? successForgotPass,
    TResult? Function(Failure<T> value)? failure,
  }) {
    return failure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial<T> value)? initial,
    TResult Function(PassIsHide<T> value)? passIsHide,
    TResult Function(PLoading<T> value)? pLoading,
    TResult Function(UserNotActive<T> value)? userNotActive,
    TResult Function(SuccessSignIn<T> value)? successSignIn,
    TResult Function(SuccessForgotPass<T> value)? successForgotPass,
    TResult Function(Failure<T> value)? failure,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(this);
    }
    return orElse();
  }
}

abstract class Failure<T> implements SignInState<T> {
  const factory Failure(final String error) = _$FailureImpl<T>;

  String get error;
  @JsonKey(ignore: true)
  _$$FailureImplCopyWith<T, _$FailureImpl<T>> get copyWith =>
      throw _privateConstructorUsedError;
}
