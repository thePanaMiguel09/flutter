import 'package:flutter/material.dart';
import 'package:yes_no_app/domain/entities/message.dart';

class ChatProvider extends ChangeNotifier {
  List<Message> messages = [
    Message(text: 'Hola hermanilla', fromWho: FromWho.me),
    Message(text: 'Hola hermanito', fromWho: FromWho.her),
    Message(text: 'Que más', fromWho: FromWho.me),
  ];

  Future<void> sendMessage(String message) async {
    final newMessage = Message(text: message, fromWho: FromWho.me);
    messages.add(newMessage);
    notifyListeners();
  }
}
