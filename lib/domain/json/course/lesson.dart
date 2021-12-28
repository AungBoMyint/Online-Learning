import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:online_learning/domain/json/converter/question_converter.dart';
import 'package:online_learning/domain/json/course/lesson_image_or_description_or_video.dart';
import 'package:uuid/uuid.dart';

part 'lesson.freezed.dart';
part 'lesson.g.dart';

@freezed
class Lesson with _$Lesson {
  const factory Lesson({
    required String id,
    required String? lessonTitle,
  }) = _Lesson;

  factory Lesson.fromJson(Map<String, dynamic> json) => _$LessonFromJson(json);

  factory Lesson.empty() => Lesson(
        id: Uuid().v1(),
        lessonTitle: null,
      );
}
