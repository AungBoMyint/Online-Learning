import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:online_learning/domain/json/course/content.dart';

part 'lesson_image_or_description_or_video.freezed.dart';
part 'lesson_image_or_description_or_video.g.dart';

@freezed
class LessonImageOrDescriptionOrVideo with _$LessonImageOrDescriptionOrVideo {
  factory LessonImageOrDescriptionOrVideo({
    required String id,
    required String? image,
    required String? imageDescription,
    required Content? content,
    required String? videoLink,
  }) = _LessonImageOrDescriptionOrVideo;

  factory LessonImageOrDescriptionOrVideo.fromJson(Map<String, dynamic> json) =>
      _$LessonImageOrDescriptionOrVideoFromJson(json);
}
