import 'package:commuter_client/core/env/env.dart';
import 'package:socket_io_client/socket_io_client.dart' as socketIo;
import 'package:socket_io_client/socket_io_client.dart';

class SocketIoFactory {
  SocketIoFactory._();
  static socketIo.Socket? _socket;
  static socketIo.Socket instance({String? url}) {
    _socket ??= socketIo.io(
      url ?? Env.socketIoBaseUrl,
      OptionBuilder()
          .setTransports(['websocket'])
          .setTimeout(3000)
          .disableAutoConnect()
          .disableReconnection()
          .build(),
    );
    return _socket!;
  }
}
