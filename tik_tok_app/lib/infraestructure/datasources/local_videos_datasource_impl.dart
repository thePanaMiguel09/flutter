import 'package:tik_tok_app/domain/datasources/video_post_datasource.dart';
import 'package:tik_tok_app/domain/entities/video_post.dart';
import 'package:tik_tok_app/infraestructure/models/local_vide_model.dart';
import 'package:tik_tok_app/shared/data/local_video_post.dart';

class LocalVideosDatasource implements VideoPostDatasource {
  @override
  Future<List<VideoPost>> getFavoriteVideosByUser(String userID) {
    throw UnimplementedError();
  }

  @override
  Future<List<VideoPost>> getTrendingVideosByPage(int page) async {
    await Future.delayed(Duration(seconds: 2));

    final List<VideoPost> newVideos = videoPosts
        .map((video) => LocalVideoModel.fromJsonMap(video).toVideoPostEntity())
        .toList();

    return newVideos;
  }
}
