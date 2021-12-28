import 'package:json_annotation/json_annotation.dart';

part 'video.g.dart';

@JsonSerializable()
class Video {
  final String youTubeVideoLink;
  final String videoDescription;
  const Video({required this.youTubeVideoLink, required this.videoDescription});

  factory Video.fromJson(Map<String, dynamic> json) => _$VideoFromJson(json);

  Map<String, dynamic> toJson() => _$VideoToJson(this);
}
