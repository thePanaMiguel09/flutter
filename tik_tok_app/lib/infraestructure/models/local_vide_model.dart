import 'package:tik_tok_app/domain/entities/video_post.dart';

class LocalVideoModel {
  final String videoName;
  final String videoUrl;
  final int likes;
  final int views;

  LocalVideoModel({
    required this.videoName,
    required this.videoUrl,
    this.likes = 0,
    this.views = 0,
  });

  factory LocalVideoModel.fromJsonMap(Map<String, dynamic> json) =>
      LocalVideoModel(
        videoName: json['name'],
        videoUrl: json['videoUrl'],
        likes: json['likes'] ?? 0,
        views: json['views'] ?? 0,
      );

  // Map<String, dynamic> toJson () => {

  // }

  VideoPost toVideoPostEntity() => VideoPost(
    caption: videoName,
    videoUrl: videoUrl,
    likes: likes,
    views: views,
  );
}
