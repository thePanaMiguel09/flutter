import 'package:flutter/material.dart';

class MessageFieldBox extends StatelessWidget {
  const MessageFieldBox({super.key});

  @override
  Widget build(BuildContext context) {
    final textController = TextEditingController();
    final focusNode = FocusNode();

    final colors = Theme.of(context).colorScheme;
    final outlinedInputBorder = UnderlineInputBorder(
      borderSide: const BorderSide(color: Colors.transparent),
      borderRadius: BorderRadius.circular(40),
    );

    final inputDecoration = InputDecoration(
      hintText: 'End your message with a "??"',
      enabledBorder: outlinedInputBorder,
      focusedBorder: outlinedInputBorder,
      filled: true,
      suffixIcon: IconButton(
        icon: Icon(Icons.send_outlined),
        onPressed: () {
          final textValue = textController.value.text;
          print('${textValue}');
          textController.clear();
        },
      ),
    );

    return TextFormField(
      onTapOutside: (event) {
        focusNode.unfocus();
      },
      focusNode: focusNode,
      controller: textController,
      decoration: inputDecoration,
      onFieldSubmitted: (value) {
        print('changed ${value}');
        textController.clear();
        focusNode.requestFocus();
      },
    );
  }
}
