import 'package:toktik/domain/entities/video_post.dart';

class LocalVideoModel {
  final String name;
  final int likes;
  final int views;
  final String videoUrl;

  LocalVideoModel({
    required this.name,
    this.likes = 0,
    this.views = 0,
    required this.videoUrl
  });

  factory LocalVideoModel.fromJsonMap(Map<String, dynamic> json) =>
      LocalVideoModel(
        name: json['name'],
        videoUrl: json['videoUrl'],
        views: json['views'] ?? 0,
        likes: json['likes'] ?? 0,
      );

  VideoPost toVideoPostEntity() =>
      VideoPost(
        caption: name,
        videoUrl: videoUrl,
        likes: likes,
        views: views
      );
}
