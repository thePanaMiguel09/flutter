import 'package:flutter/material.dart';
import 'package:yes_no_app/domain/entities/message.dart';

class ChatPriver extends ChangeNotifier {
  List<Message> messages = [
    Message(text: 'Hola hermanilla', fromWho: FromWho.mine),
    Message(text: 'Hola hermanito', fromWho: FromWho.hers),
    Message(text: 'Que más', fromWho: FromWho.mine),
  ];

  Future<void> sendMessage(String messages) async {
    //TODO implementar método
  }
}
