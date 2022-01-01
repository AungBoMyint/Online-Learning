import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:uuid/uuid.dart';

part 'lesson.freezed.dart';
part 'lesson.g.dart';

@freezed
class Lesson with _$Lesson {
  const factory Lesson({
    required String id,
    @JsonKey(defaultValue: "Quiz") required String? lessonTitle,
    required int dateTime,
  }) = _Lesson;

  factory Lesson.fromJson(Map<String, dynamic> json) => _$LessonFromJson(json);

  factory Lesson.empty() => Lesson(
        id: Uuid().v1(),
        lessonTitle: null,
        dateTime: DateTime.now().millisecondsSinceEpoch,
      );
}
