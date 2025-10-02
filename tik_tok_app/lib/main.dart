import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:tik_tok_app/config/app_theme.dart';
import 'package:tik_tok_app/presentation/providers/discover_providers.dart';
import 'package:tik_tok_app/presentation/screens/discover/discover_screen.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (_) => DiscoverProvider()..loadNextPage(),
        ),
      ],
      child: MaterialApp(
        theme: AppTheme().getTheme(),
        debugShowCheckedModeBanner: false,
        title: 'Tik Tok',
        home: DiscoverScreen(),
      ),
    );
  }
}
