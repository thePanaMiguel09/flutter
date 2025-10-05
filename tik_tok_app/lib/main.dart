import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:tik_tok_app/config/app_theme.dart';
import 'package:tik_tok_app/infraestructure/datasources/local_videos_datasource_impl.dart';
import 'package:tik_tok_app/infraestructure/repositories/video_post_repository_impl.dart';
import 'package:tik_tok_app/presentation/providers/discover_providers.dart';
import 'package:tik_tok_app/presentation/screens/discover/discover_screen.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    final videoPostRepository = VideoPostRepositoryImpl(
      videosDatasource: LocalVideosDatasource(),
    );

    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (_) =>
              DiscoverProvider(videosRepository: videoPostRepository)
                ..loadNextPage(),
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
