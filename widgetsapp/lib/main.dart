import 'package:flutter/material.dart';
import 'package:widgetsapp/config/theme/app_theme.dart';
import 'package:widgetsapp/presentation/screens/home/home_screen.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: AppTheme(selectedColor: 3).getTheme(),
      title: 'Material App',
      home: HomeScreen(),
    );
  }
}
