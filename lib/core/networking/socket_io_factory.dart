import 'package:commuter_client/core/networking/socket_io_consts.dart';
import 'package:socket_io_client/socket_io_client.dart' as socketIo;
import 'package:socket_io_client/socket_io_client.dart';

class SocketIoFactory {
  SocketIoFactory._();
  static socketIo.Socket? _socket;
  static socketIo.Socket instance({String? url}) {
    _socket ??= socketIo.io(
      url ?? SocketIoConsts.socketIoUrl,
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
