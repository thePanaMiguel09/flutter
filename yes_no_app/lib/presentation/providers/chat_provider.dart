import 'package:flutter/material.dart';
import 'package:yes_no_app/config/helpers/get_yes_no_answer.dart';
import 'package:yes_no_app/domain/entities/message.dart';

class ChatProvider extends ChangeNotifier {
  final ScrollController chatScrollController = ScrollController();
  final getYesNoAnswe = GetYesNoAnswer();

  List<Message> messages = [
    Message(text: 'Hola hermanilla', fromWho: FromWho.me),
    Message(text: 'Hola hermanito', fromWho: FromWho.her),
    Message(text: 'Que más', fromWho: FromWho.me),
  ];

  Future<void> herReply() async {
    final herMessage = await getYesNoAnswe.getAnswer();
    messages.add(herMessage);
    notifyListeners();
    moveScrollToBottom();
  }

  Future<void> sendMessage(String message) async {
    if (message.isEmpty) return;
    final newMessage = Message(text: message, fromWho: FromWho.me);
    messages.add(newMessage);

    if (message.endsWith('?')) {
      await herReply();
    }
    notifyListeners();
    moveScrollToBottom();
  }

  Future<void> moveScrollToBottom() async {
    await Future.delayed(const Duration(milliseconds: 100));

    chatScrollController.animateTo(
      chatScrollController.position.maxScrollExtent,
      duration: const Duration(milliseconds: 300),
      curve: Curves.easeOut,
    );
  }
}
