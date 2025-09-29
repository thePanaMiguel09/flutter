import 'package:flutter/material.dart';

class MessageFieldBox extends StatelessWidget {
  const MessageFieldBox({super.key});

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;
    final outlinedInputBorder = UnderlineInputBorder(
      borderSide: const BorderSide(color: Colors.transparent),
      borderRadius: BorderRadius.circular(40),
    );

    final inputDecoration = InputDecoration(
      enabledBorder: outlinedInputBorder,
      focusedBorder: outlinedInputBorder,
      filled: true,
      suffixIcon: IconButton(
        icon: Icon(Icons.send_outlined),
        onPressed: () {
          print('Hola mundo');
        },
      ),
    );

    return TextFormField(
      decoration: inputDecoration,
      onFieldSubmitted: (value) {
        print('changed ${value}');
      },
    );
  }
}
