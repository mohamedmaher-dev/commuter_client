// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'chat_room_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ChatRoomEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String friendId) started,
    required TResult Function() onConnect,
    required TResult Function(String error) onError,
    required TResult Function(dynamic data) onLoadMessages,
    required TResult Function() onSendMessage,
    required TResult Function(dynamic data) onMessage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String friendId)? started,
    TResult? Function()? onConnect,
    TResult? Function(String error)? onError,
    TResult? Function(dynamic data)? onLoadMessages,
    TResult? Function()? onSendMessage,
    TResult? Function(dynamic data)? onMessage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String friendId)? started,
    TResult Function()? onConnect,
    TResult Function(String error)? onError,
    TResult Function(dynamic data)? onLoadMessages,
    TResult Function()? onSendMessage,
    TResult Function(dynamic data)? onMessage,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_ChatRoomOnConnect value) onConnect,
    required TResult Function(_ChatRoomErrorEvent value) onError,
    required TResult Function(_ChatRoomLoadMessages value) onLoadMessages,
    required TResult Function(_ChatRoomSendMessage value) onSendMessage,
    required TResult Function(_OnMessageSent value) onMessage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_ChatRoomOnConnect value)? onConnect,
    TResult? Function(_ChatRoomErrorEvent value)? onError,
    TResult? Function(_ChatRoomLoadMessages value)? onLoadMessages,
    TResult? Function(_ChatRoomSendMessage value)? onSendMessage,
    TResult? Function(_OnMessageSent value)? onMessage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_ChatRoomOnConnect value)? onConnect,
    TResult Function(_ChatRoomErrorEvent value)? onError,
    TResult Function(_ChatRoomLoadMessages value)? onLoadMessages,
    TResult Function(_ChatRoomSendMessage value)? onSendMessage,
    TResult Function(_OnMessageSent value)? onMessage,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChatRoomEventCopyWith<$Res> {
  factory $ChatRoomEventCopyWith(
          ChatRoomEvent value, $Res Function(ChatRoomEvent) then) =
      _$ChatRoomEventCopyWithImpl<$Res, ChatRoomEvent>;
}

/// @nodoc
class _$ChatRoomEventCopyWithImpl<$Res, $Val extends ChatRoomEvent>
    implements $ChatRoomEventCopyWith<$Res> {
  _$ChatRoomEventCopyWithImpl(this._value, this._then);

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
  $Res call({String friendId});
}

/// @nodoc
class __$$StartedImplCopyWithImpl<$Res>
    extends _$ChatRoomEventCopyWithImpl<$Res, _$StartedImpl>
    implements _$$StartedImplCopyWith<$Res> {
  __$$StartedImplCopyWithImpl(
      _$StartedImpl _value, $Res Function(_$StartedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? friendId = null,
  }) {
    return _then(_$StartedImpl(
      friendId: null == friendId
          ? _value.friendId
          : friendId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$StartedImpl implements _Started {
  const _$StartedImpl({required this.friendId});

  @override
  final String friendId;

  @override
  String toString() {
    return 'ChatRoomEvent.started(friendId: $friendId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StartedImpl &&
            (identical(other.friendId, friendId) ||
                other.friendId == friendId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, friendId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$StartedImplCopyWith<_$StartedImpl> get copyWith =>
      __$$StartedImplCopyWithImpl<_$StartedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String friendId) started,
    required TResult Function() onConnect,
    required TResult Function(String error) onError,
    required TResult Function(dynamic data) onLoadMessages,
    required TResult Function() onSendMessage,
    required TResult Function(dynamic data) onMessage,
  }) {
    return started(friendId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String friendId)? started,
    TResult? Function()? onConnect,
    TResult? Function(String error)? onError,
    TResult? Function(dynamic data)? onLoadMessages,
    TResult? Function()? onSendMessage,
    TResult? Function(dynamic data)? onMessage,
  }) {
    return started?.call(friendId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String friendId)? started,
    TResult Function()? onConnect,
    TResult Function(String error)? onError,
    TResult Function(dynamic data)? onLoadMessages,
    TResult Function()? onSendMessage,
    TResult Function(dynamic data)? onMessage,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(friendId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_ChatRoomOnConnect value) onConnect,
    required TResult Function(_ChatRoomErrorEvent value) onError,
    required TResult Function(_ChatRoomLoadMessages value) onLoadMessages,
    required TResult Function(_ChatRoomSendMessage value) onSendMessage,
    required TResult Function(_OnMessageSent value) onMessage,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_ChatRoomOnConnect value)? onConnect,
    TResult? Function(_ChatRoomErrorEvent value)? onError,
    TResult? Function(_ChatRoomLoadMessages value)? onLoadMessages,
    TResult? Function(_ChatRoomSendMessage value)? onSendMessage,
    TResult? Function(_OnMessageSent value)? onMessage,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_ChatRoomOnConnect value)? onConnect,
    TResult Function(_ChatRoomErrorEvent value)? onError,
    TResult Function(_ChatRoomLoadMessages value)? onLoadMessages,
    TResult Function(_ChatRoomSendMessage value)? onSendMessage,
    TResult Function(_OnMessageSent value)? onMessage,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class _Started implements ChatRoomEvent {
  const factory _Started({required final String friendId}) = _$StartedImpl;

  String get friendId;
  @JsonKey(ignore: true)
  _$$StartedImplCopyWith<_$StartedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ChatRoomOnConnectImplCopyWith<$Res> {
  factory _$$ChatRoomOnConnectImplCopyWith(_$ChatRoomOnConnectImpl value,
          $Res Function(_$ChatRoomOnConnectImpl) then) =
      __$$ChatRoomOnConnectImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ChatRoomOnConnectImplCopyWithImpl<$Res>
    extends _$ChatRoomEventCopyWithImpl<$Res, _$ChatRoomOnConnectImpl>
    implements _$$ChatRoomOnConnectImplCopyWith<$Res> {
  __$$ChatRoomOnConnectImplCopyWithImpl(_$ChatRoomOnConnectImpl _value,
      $Res Function(_$ChatRoomOnConnectImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ChatRoomOnConnectImpl implements _ChatRoomOnConnect {
  const _$ChatRoomOnConnectImpl();

  @override
  String toString() {
    return 'ChatRoomEvent.onConnect()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ChatRoomOnConnectImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String friendId) started,
    required TResult Function() onConnect,
    required TResult Function(String error) onError,
    required TResult Function(dynamic data) onLoadMessages,
    required TResult Function() onSendMessage,
    required TResult Function(dynamic data) onMessage,
  }) {
    return onConnect();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String friendId)? started,
    TResult? Function()? onConnect,
    TResult? Function(String error)? onError,
    TResult? Function(dynamic data)? onLoadMessages,
    TResult? Function()? onSendMessage,
    TResult? Function(dynamic data)? onMessage,
  }) {
    return onConnect?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String friendId)? started,
    TResult Function()? onConnect,
    TResult Function(String error)? onError,
    TResult Function(dynamic data)? onLoadMessages,
    TResult Function()? onSendMessage,
    TResult Function(dynamic data)? onMessage,
    required TResult orElse(),
  }) {
    if (onConnect != null) {
      return onConnect();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_ChatRoomOnConnect value) onConnect,
    required TResult Function(_ChatRoomErrorEvent value) onError,
    required TResult Function(_ChatRoomLoadMessages value) onLoadMessages,
    required TResult Function(_ChatRoomSendMessage value) onSendMessage,
    required TResult Function(_OnMessageSent value) onMessage,
  }) {
    return onConnect(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_ChatRoomOnConnect value)? onConnect,
    TResult? Function(_ChatRoomErrorEvent value)? onError,
    TResult? Function(_ChatRoomLoadMessages value)? onLoadMessages,
    TResult? Function(_ChatRoomSendMessage value)? onSendMessage,
    TResult? Function(_OnMessageSent value)? onMessage,
  }) {
    return onConnect?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_ChatRoomOnConnect value)? onConnect,
    TResult Function(_ChatRoomErrorEvent value)? onError,
    TResult Function(_ChatRoomLoadMessages value)? onLoadMessages,
    TResult Function(_ChatRoomSendMessage value)? onSendMessage,
    TResult Function(_OnMessageSent value)? onMessage,
    required TResult orElse(),
  }) {
    if (onConnect != null) {
      return onConnect(this);
    }
    return orElse();
  }
}

abstract class _ChatRoomOnConnect implements ChatRoomEvent {
  const factory _ChatRoomOnConnect() = _$ChatRoomOnConnectImpl;
}

/// @nodoc
abstract class _$$ChatRoomErrorEventImplCopyWith<$Res> {
  factory _$$ChatRoomErrorEventImplCopyWith(_$ChatRoomErrorEventImpl value,
          $Res Function(_$ChatRoomErrorEventImpl) then) =
      __$$ChatRoomErrorEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String error});
}

/// @nodoc
class __$$ChatRoomErrorEventImplCopyWithImpl<$Res>
    extends _$ChatRoomEventCopyWithImpl<$Res, _$ChatRoomErrorEventImpl>
    implements _$$ChatRoomErrorEventImplCopyWith<$Res> {
  __$$ChatRoomErrorEventImplCopyWithImpl(_$ChatRoomErrorEventImpl _value,
      $Res Function(_$ChatRoomErrorEventImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
  }) {
    return _then(_$ChatRoomErrorEventImpl(
      null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ChatRoomErrorEventImpl implements _ChatRoomErrorEvent {
  const _$ChatRoomErrorEventImpl(this.error);

  @override
  final String error;

  @override
  String toString() {
    return 'ChatRoomEvent.onError(error: $error)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChatRoomErrorEventImpl &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, error);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ChatRoomErrorEventImplCopyWith<_$ChatRoomErrorEventImpl> get copyWith =>
      __$$ChatRoomErrorEventImplCopyWithImpl<_$ChatRoomErrorEventImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String friendId) started,
    required TResult Function() onConnect,
    required TResult Function(String error) onError,
    required TResult Function(dynamic data) onLoadMessages,
    required TResult Function() onSendMessage,
    required TResult Function(dynamic data) onMessage,
  }) {
    return onError(error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String friendId)? started,
    TResult? Function()? onConnect,
    TResult? Function(String error)? onError,
    TResult? Function(dynamic data)? onLoadMessages,
    TResult? Function()? onSendMessage,
    TResult? Function(dynamic data)? onMessage,
  }) {
    return onError?.call(error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String friendId)? started,
    TResult Function()? onConnect,
    TResult Function(String error)? onError,
    TResult Function(dynamic data)? onLoadMessages,
    TResult Function()? onSendMessage,
    TResult Function(dynamic data)? onMessage,
    required TResult orElse(),
  }) {
    if (onError != null) {
      return onError(error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_ChatRoomOnConnect value) onConnect,
    required TResult Function(_ChatRoomErrorEvent value) onError,
    required TResult Function(_ChatRoomLoadMessages value) onLoadMessages,
    required TResult Function(_ChatRoomSendMessage value) onSendMessage,
    required TResult Function(_OnMessageSent value) onMessage,
  }) {
    return onError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_ChatRoomOnConnect value)? onConnect,
    TResult? Function(_ChatRoomErrorEvent value)? onError,
    TResult? Function(_ChatRoomLoadMessages value)? onLoadMessages,
    TResult? Function(_ChatRoomSendMessage value)? onSendMessage,
    TResult? Function(_OnMessageSent value)? onMessage,
  }) {
    return onError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_ChatRoomOnConnect value)? onConnect,
    TResult Function(_ChatRoomErrorEvent value)? onError,
    TResult Function(_ChatRoomLoadMessages value)? onLoadMessages,
    TResult Function(_ChatRoomSendMessage value)? onSendMessage,
    TResult Function(_OnMessageSent value)? onMessage,
    required TResult orElse(),
  }) {
    if (onError != null) {
      return onError(this);
    }
    return orElse();
  }
}

abstract class _ChatRoomErrorEvent implements ChatRoomEvent {
  const factory _ChatRoomErrorEvent(final String error) =
      _$ChatRoomErrorEventImpl;

  String get error;
  @JsonKey(ignore: true)
  _$$ChatRoomErrorEventImplCopyWith<_$ChatRoomErrorEventImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ChatRoomLoadMessagesImplCopyWith<$Res> {
  factory _$$ChatRoomLoadMessagesImplCopyWith(_$ChatRoomLoadMessagesImpl value,
          $Res Function(_$ChatRoomLoadMessagesImpl) then) =
      __$$ChatRoomLoadMessagesImplCopyWithImpl<$Res>;
  @useResult
  $Res call({dynamic data});
}

/// @nodoc
class __$$ChatRoomLoadMessagesImplCopyWithImpl<$Res>
    extends _$ChatRoomEventCopyWithImpl<$Res, _$ChatRoomLoadMessagesImpl>
    implements _$$ChatRoomLoadMessagesImplCopyWith<$Res> {
  __$$ChatRoomLoadMessagesImplCopyWithImpl(_$ChatRoomLoadMessagesImpl _value,
      $Res Function(_$ChatRoomLoadMessagesImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(_$ChatRoomLoadMessagesImpl(
      freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ));
  }
}

/// @nodoc

class _$ChatRoomLoadMessagesImpl implements _ChatRoomLoadMessages {
  const _$ChatRoomLoadMessagesImpl(this.data);

  @override
  final dynamic data;

  @override
  String toString() {
    return 'ChatRoomEvent.onLoadMessages(data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChatRoomLoadMessagesImpl &&
            const DeepCollectionEquality().equals(other.data, data));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(data));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ChatRoomLoadMessagesImplCopyWith<_$ChatRoomLoadMessagesImpl>
      get copyWith =>
          __$$ChatRoomLoadMessagesImplCopyWithImpl<_$ChatRoomLoadMessagesImpl>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String friendId) started,
    required TResult Function() onConnect,
    required TResult Function(String error) onError,
    required TResult Function(dynamic data) onLoadMessages,
    required TResult Function() onSendMessage,
    required TResult Function(dynamic data) onMessage,
  }) {
    return onLoadMessages(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String friendId)? started,
    TResult? Function()? onConnect,
    TResult? Function(String error)? onError,
    TResult? Function(dynamic data)? onLoadMessages,
    TResult? Function()? onSendMessage,
    TResult? Function(dynamic data)? onMessage,
  }) {
    return onLoadMessages?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String friendId)? started,
    TResult Function()? onConnect,
    TResult Function(String error)? onError,
    TResult Function(dynamic data)? onLoadMessages,
    TResult Function()? onSendMessage,
    TResult Function(dynamic data)? onMessage,
    required TResult orElse(),
  }) {
    if (onLoadMessages != null) {
      return onLoadMessages(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_ChatRoomOnConnect value) onConnect,
    required TResult Function(_ChatRoomErrorEvent value) onError,
    required TResult Function(_ChatRoomLoadMessages value) onLoadMessages,
    required TResult Function(_ChatRoomSendMessage value) onSendMessage,
    required TResult Function(_OnMessageSent value) onMessage,
  }) {
    return onLoadMessages(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_ChatRoomOnConnect value)? onConnect,
    TResult? Function(_ChatRoomErrorEvent value)? onError,
    TResult? Function(_ChatRoomLoadMessages value)? onLoadMessages,
    TResult? Function(_ChatRoomSendMessage value)? onSendMessage,
    TResult? Function(_OnMessageSent value)? onMessage,
  }) {
    return onLoadMessages?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_ChatRoomOnConnect value)? onConnect,
    TResult Function(_ChatRoomErrorEvent value)? onError,
    TResult Function(_ChatRoomLoadMessages value)? onLoadMessages,
    TResult Function(_ChatRoomSendMessage value)? onSendMessage,
    TResult Function(_OnMessageSent value)? onMessage,
    required TResult orElse(),
  }) {
    if (onLoadMessages != null) {
      return onLoadMessages(this);
    }
    return orElse();
  }
}

abstract class _ChatRoomLoadMessages implements ChatRoomEvent {
  const factory _ChatRoomLoadMessages(final dynamic data) =
      _$ChatRoomLoadMessagesImpl;

  dynamic get data;
  @JsonKey(ignore: true)
  _$$ChatRoomLoadMessagesImplCopyWith<_$ChatRoomLoadMessagesImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ChatRoomSendMessageImplCopyWith<$Res> {
  factory _$$ChatRoomSendMessageImplCopyWith(_$ChatRoomSendMessageImpl value,
          $Res Function(_$ChatRoomSendMessageImpl) then) =
      __$$ChatRoomSendMessageImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ChatRoomSendMessageImplCopyWithImpl<$Res>
    extends _$ChatRoomEventCopyWithImpl<$Res, _$ChatRoomSendMessageImpl>
    implements _$$ChatRoomSendMessageImplCopyWith<$Res> {
  __$$ChatRoomSendMessageImplCopyWithImpl(_$ChatRoomSendMessageImpl _value,
      $Res Function(_$ChatRoomSendMessageImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ChatRoomSendMessageImpl implements _ChatRoomSendMessage {
  const _$ChatRoomSendMessageImpl();

  @override
  String toString() {
    return 'ChatRoomEvent.onSendMessage()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChatRoomSendMessageImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String friendId) started,
    required TResult Function() onConnect,
    required TResult Function(String error) onError,
    required TResult Function(dynamic data) onLoadMessages,
    required TResult Function() onSendMessage,
    required TResult Function(dynamic data) onMessage,
  }) {
    return onSendMessage();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String friendId)? started,
    TResult? Function()? onConnect,
    TResult? Function(String error)? onError,
    TResult? Function(dynamic data)? onLoadMessages,
    TResult? Function()? onSendMessage,
    TResult? Function(dynamic data)? onMessage,
  }) {
    return onSendMessage?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String friendId)? started,
    TResult Function()? onConnect,
    TResult Function(String error)? onError,
    TResult Function(dynamic data)? onLoadMessages,
    TResult Function()? onSendMessage,
    TResult Function(dynamic data)? onMessage,
    required TResult orElse(),
  }) {
    if (onSendMessage != null) {
      return onSendMessage();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_ChatRoomOnConnect value) onConnect,
    required TResult Function(_ChatRoomErrorEvent value) onError,
    required TResult Function(_ChatRoomLoadMessages value) onLoadMessages,
    required TResult Function(_ChatRoomSendMessage value) onSendMessage,
    required TResult Function(_OnMessageSent value) onMessage,
  }) {
    return onSendMessage(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_ChatRoomOnConnect value)? onConnect,
    TResult? Function(_ChatRoomErrorEvent value)? onError,
    TResult? Function(_ChatRoomLoadMessages value)? onLoadMessages,
    TResult? Function(_ChatRoomSendMessage value)? onSendMessage,
    TResult? Function(_OnMessageSent value)? onMessage,
  }) {
    return onSendMessage?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_ChatRoomOnConnect value)? onConnect,
    TResult Function(_ChatRoomErrorEvent value)? onError,
    TResult Function(_ChatRoomLoadMessages value)? onLoadMessages,
    TResult Function(_ChatRoomSendMessage value)? onSendMessage,
    TResult Function(_OnMessageSent value)? onMessage,
    required TResult orElse(),
  }) {
    if (onSendMessage != null) {
      return onSendMessage(this);
    }
    return orElse();
  }
}

abstract class _ChatRoomSendMessage implements ChatRoomEvent {
  const factory _ChatRoomSendMessage() = _$ChatRoomSendMessageImpl;
}

/// @nodoc
abstract class _$$OnMessageSentImplCopyWith<$Res> {
  factory _$$OnMessageSentImplCopyWith(
          _$OnMessageSentImpl value, $Res Function(_$OnMessageSentImpl) then) =
      __$$OnMessageSentImplCopyWithImpl<$Res>;
  @useResult
  $Res call({dynamic data});
}

/// @nodoc
class __$$OnMessageSentImplCopyWithImpl<$Res>
    extends _$ChatRoomEventCopyWithImpl<$Res, _$OnMessageSentImpl>
    implements _$$OnMessageSentImplCopyWith<$Res> {
  __$$OnMessageSentImplCopyWithImpl(
      _$OnMessageSentImpl _value, $Res Function(_$OnMessageSentImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(_$OnMessageSentImpl(
      freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ));
  }
}

/// @nodoc

class _$OnMessageSentImpl implements _OnMessageSent {
  const _$OnMessageSentImpl(this.data);

  @override
  final dynamic data;

  @override
  String toString() {
    return 'ChatRoomEvent.onMessage(data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OnMessageSentImpl &&
            const DeepCollectionEquality().equals(other.data, data));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(data));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$OnMessageSentImplCopyWith<_$OnMessageSentImpl> get copyWith =>
      __$$OnMessageSentImplCopyWithImpl<_$OnMessageSentImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String friendId) started,
    required TResult Function() onConnect,
    required TResult Function(String error) onError,
    required TResult Function(dynamic data) onLoadMessages,
    required TResult Function() onSendMessage,
    required TResult Function(dynamic data) onMessage,
  }) {
    return onMessage(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String friendId)? started,
    TResult? Function()? onConnect,
    TResult? Function(String error)? onError,
    TResult? Function(dynamic data)? onLoadMessages,
    TResult? Function()? onSendMessage,
    TResult? Function(dynamic data)? onMessage,
  }) {
    return onMessage?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String friendId)? started,
    TResult Function()? onConnect,
    TResult Function(String error)? onError,
    TResult Function(dynamic data)? onLoadMessages,
    TResult Function()? onSendMessage,
    TResult Function(dynamic data)? onMessage,
    required TResult orElse(),
  }) {
    if (onMessage != null) {
      return onMessage(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_ChatRoomOnConnect value) onConnect,
    required TResult Function(_ChatRoomErrorEvent value) onError,
    required TResult Function(_ChatRoomLoadMessages value) onLoadMessages,
    required TResult Function(_ChatRoomSendMessage value) onSendMessage,
    required TResult Function(_OnMessageSent value) onMessage,
  }) {
    return onMessage(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_ChatRoomOnConnect value)? onConnect,
    TResult? Function(_ChatRoomErrorEvent value)? onError,
    TResult? Function(_ChatRoomLoadMessages value)? onLoadMessages,
    TResult? Function(_ChatRoomSendMessage value)? onSendMessage,
    TResult? Function(_OnMessageSent value)? onMessage,
  }) {
    return onMessage?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_ChatRoomOnConnect value)? onConnect,
    TResult Function(_ChatRoomErrorEvent value)? onError,
    TResult Function(_ChatRoomLoadMessages value)? onLoadMessages,
    TResult Function(_ChatRoomSendMessage value)? onSendMessage,
    TResult Function(_OnMessageSent value)? onMessage,
    required TResult orElse(),
  }) {
    if (onMessage != null) {
      return onMessage(this);
    }
    return orElse();
  }
}

abstract class _OnMessageSent implements ChatRoomEvent {
  const factory _OnMessageSent(final dynamic data) = _$OnMessageSentImpl;

  dynamic get data;
  @JsonKey(ignore: true)
  _$$OnMessageSentImplCopyWith<_$OnMessageSentImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$ChatRoomState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() error,
    required TResult Function(List<OneMessageModel> messages, String myId)
        success,
    required TResult Function() empty,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? error,
    TResult? Function(List<OneMessageModel> messages, String myId)? success,
    TResult? Function()? empty,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? error,
    TResult Function(List<OneMessageModel> messages, String myId)? success,
    TResult Function()? empty,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Error value) error,
    required TResult Function(_Success value) success,
    required TResult Function(_Empty value) empty,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Error value)? error,
    TResult? Function(_Success value)? success,
    TResult? Function(_Empty value)? empty,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Error value)? error,
    TResult Function(_Success value)? success,
    TResult Function(_Empty value)? empty,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChatRoomStateCopyWith<$Res> {
  factory $ChatRoomStateCopyWith(
          ChatRoomState value, $Res Function(ChatRoomState) then) =
      _$ChatRoomStateCopyWithImpl<$Res, ChatRoomState>;
}

/// @nodoc
class _$ChatRoomStateCopyWithImpl<$Res, $Val extends ChatRoomState>
    implements $ChatRoomStateCopyWith<$Res> {
  _$ChatRoomStateCopyWithImpl(this._value, this._then);

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
    extends _$ChatRoomStateCopyWithImpl<$Res, _$InitialImpl>
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
    return 'ChatRoomState.initial()';
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
    required TResult Function() error,
    required TResult Function(List<OneMessageModel> messages, String myId)
        success,
    required TResult Function() empty,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? error,
    TResult? Function(List<OneMessageModel> messages, String myId)? success,
    TResult? Function()? empty,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? error,
    TResult Function(List<OneMessageModel> messages, String myId)? success,
    TResult Function()? empty,
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
    required TResult Function(_Error value) error,
    required TResult Function(_Success value) success,
    required TResult Function(_Empty value) empty,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Error value)? error,
    TResult? Function(_Success value)? success,
    TResult? Function(_Empty value)? empty,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Error value)? error,
    TResult Function(_Success value)? success,
    TResult Function(_Empty value)? empty,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements ChatRoomState {
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
    extends _$ChatRoomStateCopyWithImpl<$Res, _$LoadingImpl>
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
    return 'ChatRoomState.loading()';
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
    required TResult Function() error,
    required TResult Function(List<OneMessageModel> messages, String myId)
        success,
    required TResult Function() empty,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? error,
    TResult? Function(List<OneMessageModel> messages, String myId)? success,
    TResult? Function()? empty,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? error,
    TResult Function(List<OneMessageModel> messages, String myId)? success,
    TResult Function()? empty,
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
    required TResult Function(_Error value) error,
    required TResult Function(_Success value) success,
    required TResult Function(_Empty value) empty,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Error value)? error,
    TResult? Function(_Success value)? success,
    TResult? Function(_Empty value)? empty,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Error value)? error,
    TResult Function(_Success value)? success,
    TResult Function(_Empty value)? empty,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _Loading implements ChatRoomState {
  const factory _Loading() = _$LoadingImpl;
}

/// @nodoc
abstract class _$$ErrorImplCopyWith<$Res> {
  factory _$$ErrorImplCopyWith(
          _$ErrorImpl value, $Res Function(_$ErrorImpl) then) =
      __$$ErrorImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ErrorImplCopyWithImpl<$Res>
    extends _$ChatRoomStateCopyWithImpl<$Res, _$ErrorImpl>
    implements _$$ErrorImplCopyWith<$Res> {
  __$$ErrorImplCopyWithImpl(
      _$ErrorImpl _value, $Res Function(_$ErrorImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ErrorImpl implements _Error {
  const _$ErrorImpl();

  @override
  String toString() {
    return 'ChatRoomState.error()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ErrorImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() error,
    required TResult Function(List<OneMessageModel> messages, String myId)
        success,
    required TResult Function() empty,
  }) {
    return error();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? error,
    TResult? Function(List<OneMessageModel> messages, String myId)? success,
    TResult? Function()? empty,
  }) {
    return error?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? error,
    TResult Function(List<OneMessageModel> messages, String myId)? success,
    TResult Function()? empty,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Error value) error,
    required TResult Function(_Success value) success,
    required TResult Function(_Empty value) empty,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Error value)? error,
    TResult? Function(_Success value)? success,
    TResult? Function(_Empty value)? empty,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Error value)? error,
    TResult Function(_Success value)? success,
    TResult Function(_Empty value)? empty,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _Error implements ChatRoomState {
  const factory _Error() = _$ErrorImpl;
}

/// @nodoc
abstract class _$$SuccessImplCopyWith<$Res> {
  factory _$$SuccessImplCopyWith(
          _$SuccessImpl value, $Res Function(_$SuccessImpl) then) =
      __$$SuccessImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<OneMessageModel> messages, String myId});
}

/// @nodoc
class __$$SuccessImplCopyWithImpl<$Res>
    extends _$ChatRoomStateCopyWithImpl<$Res, _$SuccessImpl>
    implements _$$SuccessImplCopyWith<$Res> {
  __$$SuccessImplCopyWithImpl(
      _$SuccessImpl _value, $Res Function(_$SuccessImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? messages = null,
    Object? myId = null,
  }) {
    return _then(_$SuccessImpl(
      messages: null == messages
          ? _value._messages
          : messages // ignore: cast_nullable_to_non_nullable
              as List<OneMessageModel>,
      myId: null == myId
          ? _value.myId
          : myId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$SuccessImpl implements _Success {
  const _$SuccessImpl(
      {required final List<OneMessageModel> messages, required this.myId})
      : _messages = messages;

  final List<OneMessageModel> _messages;
  @override
  List<OneMessageModel> get messages {
    if (_messages is EqualUnmodifiableListView) return _messages;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_messages);
  }

  @override
  final String myId;

  @override
  String toString() {
    return 'ChatRoomState.success(messages: $messages, myId: $myId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SuccessImpl &&
            const DeepCollectionEquality().equals(other._messages, _messages) &&
            (identical(other.myId, myId) || other.myId == myId));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_messages), myId);

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
    required TResult Function() error,
    required TResult Function(List<OneMessageModel> messages, String myId)
        success,
    required TResult Function() empty,
  }) {
    return success(messages, myId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? error,
    TResult? Function(List<OneMessageModel> messages, String myId)? success,
    TResult? Function()? empty,
  }) {
    return success?.call(messages, myId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? error,
    TResult Function(List<OneMessageModel> messages, String myId)? success,
    TResult Function()? empty,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(messages, myId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Error value) error,
    required TResult Function(_Success value) success,
    required TResult Function(_Empty value) empty,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Error value)? error,
    TResult? Function(_Success value)? success,
    TResult? Function(_Empty value)? empty,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Error value)? error,
    TResult Function(_Success value)? success,
    TResult Function(_Empty value)? empty,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class _Success implements ChatRoomState {
  const factory _Success(
      {required final List<OneMessageModel> messages,
      required final String myId}) = _$SuccessImpl;

  List<OneMessageModel> get messages;
  String get myId;
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
    extends _$ChatRoomStateCopyWithImpl<$Res, _$EmptyImpl>
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
    return 'ChatRoomState.empty()';
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
    required TResult Function() error,
    required TResult Function(List<OneMessageModel> messages, String myId)
        success,
    required TResult Function() empty,
  }) {
    return empty();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? error,
    TResult? Function(List<OneMessageModel> messages, String myId)? success,
    TResult? Function()? empty,
  }) {
    return empty?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? error,
    TResult Function(List<OneMessageModel> messages, String myId)? success,
    TResult Function()? empty,
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
    required TResult Function(_Error value) error,
    required TResult Function(_Success value) success,
    required TResult Function(_Empty value) empty,
  }) {
    return empty(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Error value)? error,
    TResult? Function(_Success value)? success,
    TResult? Function(_Empty value)? empty,
  }) {
    return empty?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Error value)? error,
    TResult Function(_Success value)? success,
    TResult Function(_Empty value)? empty,
    required TResult orElse(),
  }) {
    if (empty != null) {
      return empty(this);
    }
    return orElse();
  }
}

abstract class _Empty implements ChatRoomState {
  const factory _Empty() = _$EmptyImpl;
}
