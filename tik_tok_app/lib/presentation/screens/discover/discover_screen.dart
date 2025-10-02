import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:tik_tok_app/presentation/providers/discover_providers.dart';
import 'package:tik_tok_app/presentation/widgets/shared/video_scrollable_view.dart';

class DiscoverScreen extends StatelessWidget {
  const DiscoverScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final discoverProvier = context.watch<DiscoverProvider>();

    return Scaffold(
      body: discoverProvier.initialLoading
          ? const Center(child: CircularProgressIndicator())
          : VideoScrollableView(videos: discoverProvier.videos),
    );
  }
}
