import 'package:flutter/material.dart';
import 'package:widgetsapp/config/router/app_router.dart';
import 'package:widgetsapp/config/theme/app_theme.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: appRouter,
      debugShowCheckedModeBanner: false,
      theme: AppTheme(selectedColor: 3).getTheme(),
      title: 'Material App',
    );
  }
}
