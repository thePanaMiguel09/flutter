import 'package:flutter/material.dart';
import 'package:tik_tok_app/domain/entities/video_post.dart';

class DiscoverProvider extends ChangeNotifier {
  bool initialLoading = true;
  List<VideoPost> videoPosts = [];

  Future<void> loadNextPage() async {
    //TODO: cargar vídeos
    notifyListeners();
  }
}
