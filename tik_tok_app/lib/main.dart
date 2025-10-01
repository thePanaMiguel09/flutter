import 'package:flutter/material.dart';
import 'package:tik_tok_app/config/app_theme.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: AppTheme().getTheme(),
      debugShowCheckedModeBanner: false,
      title: 'Tik Tok',
      home: Scaffold(
        appBar: AppBar(title: const Text('Tik Tok'), centerTitle: true),
        body: const Center(child: Text('Hello World')),
      ),
    );
  }
}
