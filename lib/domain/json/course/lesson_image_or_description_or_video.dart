import 'dart:convert';

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:online_learning/domain/json/course/content.dart';
import 'package:online_learning/domain/json/question/question_conveter.dart';

part 'lesson_image_or_description_or_video.freezed.dart';
part 'lesson_image_or_description_or_video.g.dart';

@freezed
class LessonImageOrDescriptionOrVideo<T>
    with _$LessonImageOrDescriptionOrVideo<T> {
  factory LessonImageOrDescriptionOrVideo({
    required String id,
    required String? image,
    required String? imageDescription,
    required Content? content,
    required String? videoLink,
    @QuestionConveter() required T? quiz,
  }) = _LessonImageOrDescriptionOrVideo;

  factory LessonImageOrDescriptionOrVideo.fromJson(Map<String, dynamic> json) =>
      _$LessonImageOrDescriptionOrVideoFromJson(json);
}
