// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'notifi_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$NotifiEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(NotifiPage newPage) changePage,
    required TResult Function(String notifiId) readNotifi,
    required TResult Function(String notifiId) deleteNotifiEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(NotifiPage newPage)? changePage,
    TResult? Function(String notifiId)? readNotifi,
    TResult? Function(String notifiId)? deleteNotifiEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(NotifiPage newPage)? changePage,
    TResult Function(String notifiId)? readNotifi,
    TResult Function(String notifiId)? deleteNotifiEvent,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_ChangePage value) changePage,
    required TResult Function(_ReadNotifi value) readNotifi,
    required TResult Function(_DeleteNotifiEvent value) deleteNotifiEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_ChangePage value)? changePage,
    TResult? Function(_ReadNotifi value)? readNotifi,
    TResult? Function(_DeleteNotifiEvent value)? deleteNotifiEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_ChangePage value)? changePage,
    TResult Function(_ReadNotifi value)? readNotifi,
    TResult Function(_DeleteNotifiEvent value)? deleteNotifiEvent,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NotifiEventCopyWith<$Res> {
  factory $NotifiEventCopyWith(
          NotifiEvent value, $Res Function(NotifiEvent) then) =
      _$NotifiEventCopyWithImpl<$Res, NotifiEvent>;
}

/// @nodoc
class _$NotifiEventCopyWithImpl<$Res, $Val extends NotifiEvent>
    implements $NotifiEventCopyWith<$Res> {
  _$NotifiEventCopyWithImpl(this._value, this._then);

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
    extends _$NotifiEventCopyWithImpl<$Res, _$StartedImpl>
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
    return 'NotifiEvent.started()';
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
    required TResult Function(NotifiPage newPage) changePage,
    required TResult Function(String notifiId) readNotifi,
    required TResult Function(String notifiId) deleteNotifiEvent,
  }) {
    return started();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(NotifiPage newPage)? changePage,
    TResult? Function(String notifiId)? readNotifi,
    TResult? Function(String notifiId)? deleteNotifiEvent,
  }) {
    return started?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(NotifiPage newPage)? changePage,
    TResult Function(String notifiId)? readNotifi,
    TResult Function(String notifiId)? deleteNotifiEvent,
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
    required TResult Function(_ChangePage value) changePage,
    required TResult Function(_ReadNotifi value) readNotifi,
    required TResult Function(_DeleteNotifiEvent value) deleteNotifiEvent,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_ChangePage value)? changePage,
    TResult? Function(_ReadNotifi value)? readNotifi,
    TResult? Function(_DeleteNotifiEvent value)? deleteNotifiEvent,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_ChangePage value)? changePage,
    TResult Function(_ReadNotifi value)? readNotifi,
    TResult Function(_DeleteNotifiEvent value)? deleteNotifiEvent,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class _Started implements NotifiEvent {
  const factory _Started() = _$StartedImpl;
}

/// @nodoc
abstract class _$$ChangePageImplCopyWith<$Res> {
  factory _$$ChangePageImplCopyWith(
          _$ChangePageImpl value, $Res Function(_$ChangePageImpl) then) =
      __$$ChangePageImplCopyWithImpl<$Res>;
  @useResult
  $Res call({NotifiPage newPage});
}

/// @nodoc
class __$$ChangePageImplCopyWithImpl<$Res>
    extends _$NotifiEventCopyWithImpl<$Res, _$ChangePageImpl>
    implements _$$ChangePageImplCopyWith<$Res> {
  __$$ChangePageImplCopyWithImpl(
      _$ChangePageImpl _value, $Res Function(_$ChangePageImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? newPage = null,
  }) {
    return _then(_$ChangePageImpl(
      newPage: null == newPage
          ? _value.newPage
          : newPage // ignore: cast_nullable_to_non_nullable
              as NotifiPage,
    ));
  }
}

/// @nodoc

class _$ChangePageImpl implements _ChangePage {
  const _$ChangePageImpl({required this.newPage});

  @override
  final NotifiPage newPage;

  @override
  String toString() {
    return 'NotifiEvent.changePage(newPage: $newPage)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChangePageImpl &&
            (identical(other.newPage, newPage) || other.newPage == newPage));
  }

  @override
  int get hashCode => Object.hash(runtimeType, newPage);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ChangePageImplCopyWith<_$ChangePageImpl> get copyWith =>
      __$$ChangePageImplCopyWithImpl<_$ChangePageImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(NotifiPage newPage) changePage,
    required TResult Function(String notifiId) readNotifi,
    required TResult Function(String notifiId) deleteNotifiEvent,
  }) {
    return changePage(newPage);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(NotifiPage newPage)? changePage,
    TResult? Function(String notifiId)? readNotifi,
    TResult? Function(String notifiId)? deleteNotifiEvent,
  }) {
    return changePage?.call(newPage);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(NotifiPage newPage)? changePage,
    TResult Function(String notifiId)? readNotifi,
    TResult Function(String notifiId)? deleteNotifiEvent,
    required TResult orElse(),
  }) {
    if (changePage != null) {
      return changePage(newPage);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_ChangePage value) changePage,
    required TResult Function(_ReadNotifi value) readNotifi,
    required TResult Function(_DeleteNotifiEvent value) deleteNotifiEvent,
  }) {
    return changePage(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_ChangePage value)? changePage,
    TResult? Function(_ReadNotifi value)? readNotifi,
    TResult? Function(_DeleteNotifiEvent value)? deleteNotifiEvent,
  }) {
    return changePage?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_ChangePage value)? changePage,
    TResult Function(_ReadNotifi value)? readNotifi,
    TResult Function(_DeleteNotifiEvent value)? deleteNotifiEvent,
    required TResult orElse(),
  }) {
    if (changePage != null) {
      return changePage(this);
    }
    return orElse();
  }
}

abstract class _ChangePage implements NotifiEvent {
  const factory _ChangePage({required final NotifiPage newPage}) =
      _$ChangePageImpl;

  NotifiPage get newPage;
  @JsonKey(ignore: true)
  _$$ChangePageImplCopyWith<_$ChangePageImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ReadNotifiImplCopyWith<$Res> {
  factory _$$ReadNotifiImplCopyWith(
          _$ReadNotifiImpl value, $Res Function(_$ReadNotifiImpl) then) =
      __$$ReadNotifiImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String notifiId});
}

/// @nodoc
class __$$ReadNotifiImplCopyWithImpl<$Res>
    extends _$NotifiEventCopyWithImpl<$Res, _$ReadNotifiImpl>
    implements _$$ReadNotifiImplCopyWith<$Res> {
  __$$ReadNotifiImplCopyWithImpl(
      _$ReadNotifiImpl _value, $Res Function(_$ReadNotifiImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? notifiId = null,
  }) {
    return _then(_$ReadNotifiImpl(
      notifiId: null == notifiId
          ? _value.notifiId
          : notifiId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ReadNotifiImpl implements _ReadNotifi {
  const _$ReadNotifiImpl({required this.notifiId});

  @override
  final String notifiId;

  @override
  String toString() {
    return 'NotifiEvent.readNotifi(notifiId: $notifiId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ReadNotifiImpl &&
            (identical(other.notifiId, notifiId) ||
                other.notifiId == notifiId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, notifiId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ReadNotifiImplCopyWith<_$ReadNotifiImpl> get copyWith =>
      __$$ReadNotifiImplCopyWithImpl<_$ReadNotifiImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(NotifiPage newPage) changePage,
    required TResult Function(String notifiId) readNotifi,
    required TResult Function(String notifiId) deleteNotifiEvent,
  }) {
    return readNotifi(notifiId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(NotifiPage newPage)? changePage,
    TResult? Function(String notifiId)? readNotifi,
    TResult? Function(String notifiId)? deleteNotifiEvent,
  }) {
    return readNotifi?.call(notifiId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(NotifiPage newPage)? changePage,
    TResult Function(String notifiId)? readNotifi,
    TResult Function(String notifiId)? deleteNotifiEvent,
    required TResult orElse(),
  }) {
    if (readNotifi != null) {
      return readNotifi(notifiId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_ChangePage value) changePage,
    required TResult Function(_ReadNotifi value) readNotifi,
    required TResult Function(_DeleteNotifiEvent value) deleteNotifiEvent,
  }) {
    return readNotifi(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_ChangePage value)? changePage,
    TResult? Function(_ReadNotifi value)? readNotifi,
    TResult? Function(_DeleteNotifiEvent value)? deleteNotifiEvent,
  }) {
    return readNotifi?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_ChangePage value)? changePage,
    TResult Function(_ReadNotifi value)? readNotifi,
    TResult Function(_DeleteNotifiEvent value)? deleteNotifiEvent,
    required TResult orElse(),
  }) {
    if (readNotifi != null) {
      return readNotifi(this);
    }
    return orElse();
  }
}

abstract class _ReadNotifi implements NotifiEvent {
  const factory _ReadNotifi({required final String notifiId}) =
      _$ReadNotifiImpl;

  String get notifiId;
  @JsonKey(ignore: true)
  _$$ReadNotifiImplCopyWith<_$ReadNotifiImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$DeleteNotifiEventImplCopyWith<$Res> {
  factory _$$DeleteNotifiEventImplCopyWith(_$DeleteNotifiEventImpl value,
          $Res Function(_$DeleteNotifiEventImpl) then) =
      __$$DeleteNotifiEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String notifiId});
}

/// @nodoc
class __$$DeleteNotifiEventImplCopyWithImpl<$Res>
    extends _$NotifiEventCopyWithImpl<$Res, _$DeleteNotifiEventImpl>
    implements _$$DeleteNotifiEventImplCopyWith<$Res> {
  __$$DeleteNotifiEventImplCopyWithImpl(_$DeleteNotifiEventImpl _value,
      $Res Function(_$DeleteNotifiEventImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? notifiId = null,
  }) {
    return _then(_$DeleteNotifiEventImpl(
      notifiId: null == notifiId
          ? _value.notifiId
          : notifiId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$DeleteNotifiEventImpl implements _DeleteNotifiEvent {
  const _$DeleteNotifiEventImpl({required this.notifiId});

  @override
  final String notifiId;

  @override
  String toString() {
    return 'NotifiEvent.deleteNotifiEvent(notifiId: $notifiId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DeleteNotifiEventImpl &&
            (identical(other.notifiId, notifiId) ||
                other.notifiId == notifiId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, notifiId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DeleteNotifiEventImplCopyWith<_$DeleteNotifiEventImpl> get copyWith =>
      __$$DeleteNotifiEventImplCopyWithImpl<_$DeleteNotifiEventImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(NotifiPage newPage) changePage,
    required TResult Function(String notifiId) readNotifi,
    required TResult Function(String notifiId) deleteNotifiEvent,
  }) {
    return deleteNotifiEvent(notifiId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(NotifiPage newPage)? changePage,
    TResult? Function(String notifiId)? readNotifi,
    TResult? Function(String notifiId)? deleteNotifiEvent,
  }) {
    return deleteNotifiEvent?.call(notifiId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(NotifiPage newPage)? changePage,
    TResult Function(String notifiId)? readNotifi,
    TResult Function(String notifiId)? deleteNotifiEvent,
    required TResult orElse(),
  }) {
    if (deleteNotifiEvent != null) {
      return deleteNotifiEvent(notifiId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_ChangePage value) changePage,
    required TResult Function(_ReadNotifi value) readNotifi,
    required TResult Function(_DeleteNotifiEvent value) deleteNotifiEvent,
  }) {
    return deleteNotifiEvent(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_ChangePage value)? changePage,
    TResult? Function(_ReadNotifi value)? readNotifi,
    TResult? Function(_DeleteNotifiEvent value)? deleteNotifiEvent,
  }) {
    return deleteNotifiEvent?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_ChangePage value)? changePage,
    TResult Function(_ReadNotifi value)? readNotifi,
    TResult Function(_DeleteNotifiEvent value)? deleteNotifiEvent,
    required TResult orElse(),
  }) {
    if (deleteNotifiEvent != null) {
      return deleteNotifiEvent(this);
    }
    return orElse();
  }
}

abstract class _DeleteNotifiEvent implements NotifiEvent {
  const factory _DeleteNotifiEvent({required final String notifiId}) =
      _$DeleteNotifiEventImpl;

  String get notifiId;
  @JsonKey(ignore: true)
  _$$DeleteNotifiEventImplCopyWith<_$DeleteNotifiEventImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$NotifiState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(
            NotifiPage newPage, List<NotifiResponseModel> notifis)
        success,
    required TResult Function() empty,
    required TResult Function() failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(NotifiPage newPage, List<NotifiResponseModel> notifis)?
        success,
    TResult? Function()? empty,
    TResult? Function()? failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(NotifiPage newPage, List<NotifiResponseModel> notifis)?
        success,
    TResult Function()? empty,
    TResult Function()? failure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Success value) success,
    required TResult Function(_Empty value) empty,
    required TResult Function(_Failure value) failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Success value)? success,
    TResult? Function(_Empty value)? empty,
    TResult? Function(_Failure value)? failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Success value)? success,
    TResult Function(_Empty value)? empty,
    TResult Function(_Failure value)? failure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NotifiStateCopyWith<$Res> {
  factory $NotifiStateCopyWith(
          NotifiState value, $Res Function(NotifiState) then) =
      _$NotifiStateCopyWithImpl<$Res, NotifiState>;
}

/// @nodoc
class _$NotifiStateCopyWithImpl<$Res, $Val extends NotifiState>
    implements $NotifiStateCopyWith<$Res> {
  _$NotifiStateCopyWithImpl(this._value, this._then);

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
    extends _$NotifiStateCopyWithImpl<$Res, _$InitialImpl>
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
    return 'NotifiState.initial()';
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
    required TResult Function(
            NotifiPage newPage, List<NotifiResponseModel> notifis)
        success,
    required TResult Function() empty,
    required TResult Function() failure,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(NotifiPage newPage, List<NotifiResponseModel> notifis)?
        success,
    TResult? Function()? empty,
    TResult? Function()? failure,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(NotifiPage newPage, List<NotifiResponseModel> notifis)?
        success,
    TResult Function()? empty,
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
    required TResult Function(_Empty value) empty,
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
    TResult? Function(_Empty value)? empty,
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
    TResult Function(_Empty value)? empty,
    TResult Function(_Failure value)? failure,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements NotifiState {
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
    extends _$NotifiStateCopyWithImpl<$Res, _$LoadingImpl>
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
    return 'NotifiState.loading()';
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
    required TResult Function(
            NotifiPage newPage, List<NotifiResponseModel> notifis)
        success,
    required TResult Function() empty,
    required TResult Function() failure,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(NotifiPage newPage, List<NotifiResponseModel> notifis)?
        success,
    TResult? Function()? empty,
    TResult? Function()? failure,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(NotifiPage newPage, List<NotifiResponseModel> notifis)?
        success,
    TResult Function()? empty,
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
    required TResult Function(_Empty value) empty,
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
    TResult? Function(_Empty value)? empty,
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
    TResult Function(_Empty value)? empty,
    TResult Function(_Failure value)? failure,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _Loading implements NotifiState {
  const factory _Loading() = _$LoadingImpl;
}

/// @nodoc
abstract class _$$SuccessImplCopyWith<$Res> {
  factory _$$SuccessImplCopyWith(
          _$SuccessImpl value, $Res Function(_$SuccessImpl) then) =
      __$$SuccessImplCopyWithImpl<$Res>;
  @useResult
  $Res call({NotifiPage newPage, List<NotifiResponseModel> notifis});
}

/// @nodoc
class __$$SuccessImplCopyWithImpl<$Res>
    extends _$NotifiStateCopyWithImpl<$Res, _$SuccessImpl>
    implements _$$SuccessImplCopyWith<$Res> {
  __$$SuccessImplCopyWithImpl(
      _$SuccessImpl _value, $Res Function(_$SuccessImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? newPage = null,
    Object? notifis = null,
  }) {
    return _then(_$SuccessImpl(
      newPage: null == newPage
          ? _value.newPage
          : newPage // ignore: cast_nullable_to_non_nullable
              as NotifiPage,
      notifis: null == notifis
          ? _value._notifis
          : notifis // ignore: cast_nullable_to_non_nullable
              as List<NotifiResponseModel>,
    ));
  }
}

/// @nodoc

class _$SuccessImpl implements _Success {
  const _$SuccessImpl(
      {required this.newPage, required final List<NotifiResponseModel> notifis})
      : _notifis = notifis;

  @override
  final NotifiPage newPage;
  final List<NotifiResponseModel> _notifis;
  @override
  List<NotifiResponseModel> get notifis {
    if (_notifis is EqualUnmodifiableListView) return _notifis;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_notifis);
  }

  @override
  String toString() {
    return 'NotifiState.success(newPage: $newPage, notifis: $notifis)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SuccessImpl &&
            (identical(other.newPage, newPage) || other.newPage == newPage) &&
            const DeepCollectionEquality().equals(other._notifis, _notifis));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, newPage, const DeepCollectionEquality().hash(_notifis));

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
    required TResult Function(
            NotifiPage newPage, List<NotifiResponseModel> notifis)
        success,
    required TResult Function() empty,
    required TResult Function() failure,
  }) {
    return success(newPage, notifis);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(NotifiPage newPage, List<NotifiResponseModel> notifis)?
        success,
    TResult? Function()? empty,
    TResult? Function()? failure,
  }) {
    return success?.call(newPage, notifis);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(NotifiPage newPage, List<NotifiResponseModel> notifis)?
        success,
    TResult Function()? empty,
    TResult Function()? failure,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(newPage, notifis);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Success value) success,
    required TResult Function(_Empty value) empty,
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
    TResult? Function(_Empty value)? empty,
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
    TResult Function(_Empty value)? empty,
    TResult Function(_Failure value)? failure,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class _Success implements NotifiState {
  const factory _Success(
      {required final NotifiPage newPage,
      required final List<NotifiResponseModel> notifis}) = _$SuccessImpl;

  NotifiPage get newPage;
  List<NotifiResponseModel> get notifis;
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
    extends _$NotifiStateCopyWithImpl<$Res, _$EmptyImpl>
    implements _$$EmptyImplCopyWith<$Res> {
  __$$EmptyImplCopyWithImpl(
      _$EmptyImpl _value, $Res Function(_$EmptyImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$EmptyImpl implements _Empty {
  const _$EmptyImpl();

  @override
  String toString() {
    return 'NotifiState.empty()';
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
    required TResult Function(
            NotifiPage newPage, List<NotifiResponseModel> notifis)
        success,
    required TResult Function() empty,
    required TResult Function() failure,
  }) {
    return empty();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(NotifiPage newPage, List<NotifiResponseModel> notifis)?
        success,
    TResult? Function()? empty,
    TResult? Function()? failure,
  }) {
    return empty?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(NotifiPage newPage, List<NotifiResponseModel> notifis)?
        success,
    TResult Function()? empty,
    TResult Function()? failure,
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
    required TResult Function(_Loading value) loading,
    required TResult Function(_Success value) success,
    required TResult Function(_Empty value) empty,
    required TResult Function(_Failure value) failure,
  }) {
    return empty(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Success value)? success,
    TResult? Function(_Empty value)? empty,
    TResult? Function(_Failure value)? failure,
  }) {
    return empty?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Success value)? success,
    TResult Function(_Empty value)? empty,
    TResult Function(_Failure value)? failure,
    required TResult orElse(),
  }) {
    if (empty != null) {
      return empty(this);
    }
    return orElse();
  }
}

abstract class _Empty implements NotifiState {
  const factory _Empty() = _$EmptyImpl;
}

/// @nodoc
abstract class _$$FailureImplCopyWith<$Res> {
  factory _$$FailureImplCopyWith(
          _$FailureImpl value, $Res Function(_$FailureImpl) then) =
      __$$FailureImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$FailureImplCopyWithImpl<$Res>
    extends _$NotifiStateCopyWithImpl<$Res, _$FailureImpl>
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
    return 'NotifiState.failure()';
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
    required TResult Function(
            NotifiPage newPage, List<NotifiResponseModel> notifis)
        success,
    required TResult Function() empty,
    required TResult Function() failure,
  }) {
    return failure();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(NotifiPage newPage, List<NotifiResponseModel> notifis)?
        success,
    TResult? Function()? empty,
    TResult? Function()? failure,
  }) {
    return failure?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(NotifiPage newPage, List<NotifiResponseModel> notifis)?
        success,
    TResult Function()? empty,
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
    required TResult Function(_Empty value) empty,
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
    TResult? Function(_Empty value)? empty,
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
    TResult Function(_Empty value)? empty,
    TResult Function(_Failure value)? failure,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(this);
    }
    return orElse();
  }
}

abstract class _Failure implements NotifiState {
  const factory _Failure() = _$FailureImpl;
}
