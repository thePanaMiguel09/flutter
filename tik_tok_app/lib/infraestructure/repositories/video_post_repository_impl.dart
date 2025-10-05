import 'package:tik_tok_app/domain/datasources/video_post_datasource.dart';
import 'package:tik_tok_app/domain/entities/video_post.dart';

class VideoPostRepository implements VideoPostDatasource {
  final VideoPostDatasource videosDatasource;

  VideoPostRepository({required this.videosDatasource});

  @override
  Future<List<VideoPost>> getFavoriteVideosByUser(String userID) {
    throw UnimplementedError();
  }

  @override
  Future<List<VideoPost>> getTrendingVideosByPage(int page) {
    return videosDatasource.getTrendingVideosByPage(page);
  }
}
