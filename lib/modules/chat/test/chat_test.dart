import 'package:commuter_client/core/networking/socket_io_consts.dart';
import 'package:flutter/material.dart';
import 'package:socket_io_client/socket_io_client.dart' as IO;

class ChatTest extends StatefulWidget {
  const ChatTest({super.key});

  @override
  _ChatTestState createState() => _ChatTestState();
}

class _ChatTestState extends State<ChatTest> {
  final TextEditingController userIdController = TextEditingController();
  String userType = 'user';
  final TextEditingController receiverIdController = TextEditingController();
  String receiverType = 'driver';
  final TextEditingController messageController = TextEditingController();
  List<Map<String, dynamic>> messages = [];

  late IO.Socket socket;

  @override
  void initState() {
    super.initState();
    connectToServer();
  }

  void connectToServer() {
    socket = IO.io(SocketIoConsts.socketIoUrl, <String, dynamic>{
      'transports': ['websocket'],
    });

    socket.on('connect', (_) {
      print('Connected to server');
    });

    socket.on('chat message', (data) {
      setState(() {
        messages.add(Map<String, dynamic>.from(data));
      });
    });

    socket.on('load messages', (data) {
      setState(() {
        messages = List<Map<String, dynamic>>.from(data);
      });
    });

    socket.on('error', (error) {
      print('Socket error: $error');
    });
  }

  void handleJoinRoom() {
    socket.emit('join room', {
      'userId': userIdController.text,
      'driverId': receiverIdController.text
    });
  }

  void handleSendMessage() {
    socket.emit('chat message', {
      'senderId': userIdController.text,
      'senderType': userType,
      'receiverId': receiverIdController.text,
      'receiverType': receiverType,
      'message': messageController.text,
    });
    messageController.clear();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Chat Test'),
        ),
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              TextField(
                controller: userIdController,
                decoration: const InputDecoration(labelText: 'User ID'),
              ),
              DropdownButton<String>(
                value: userType,
                onChanged: (String? newValue) {
                  setState(() {
                    userType = newValue!;
                  });
                },
                items: <String>['user', 'driver']
                    .map<DropdownMenuItem<String>>((String value) {
                  return DropdownMenuItem<String>(
                    value: value,
                    child: Text(value),
                  );
                }).toList(),
              ),
              TextField(
                controller: receiverIdController,
                decoration: const InputDecoration(labelText: 'Receiver ID'),
              ),
              DropdownButton<String>(
                value: receiverType,
                onChanged: (String? newValue) {
                  setState(() {
                    receiverType = newValue!;
                  });
                },
                items: <String>['user', 'driver']
                    .map<DropdownMenuItem<String>>((String value) {
                  return DropdownMenuItem<String>(
                    value: value,
                    child: Text(value),
                  );
                }).toList(),
              ),
              TextField(
                controller: messageController,
                decoration: const InputDecoration(labelText: 'Message'),
              ),
              Row(
                children: [
                  ElevatedButton(
                    onPressed: handleJoinRoom,
                    child: const Text('Join Room'),
                  ),
                  const SizedBox(width: 10),
                  ElevatedButton(
                    onPressed: handleSendMessage,
                    child: const Text('Send Message'),
                  ),
                ],
              ),
              Expanded(
                child: ListView.builder(
                  itemCount: messages.length,
                  itemBuilder: (context, index) {
                    final msg = messages[index];
                    return ListTile(
                      title: Text(
                        '${msg['senderType']} (${msg['senderId']}): ${msg['message']}',
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  void dispose() {
    socket.dispose();
    userIdController.dispose();
    receiverIdController.dispose();
    messageController.dispose();
    super.dispose();
  }
}
