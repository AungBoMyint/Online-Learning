import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:online_learning/application/provider/get_user_id.dart';
import 'package:online_learning/injectable_configuration.dart';
import 'package:uuid/uuid.dart';

part 'course.freezed.dart';
part 'course.g.dart';

@freezed
class Course with _$Course {
  const factory Course({
    required String id,
    required String? courseName,
    required String? description,
    required String? overview,
    required String? type,
    required String? tag,
    required String? image,
    required int learners,
    required int rating,
    required int dateTime,
  }) = _Course;

  factory Course.fromJson(Map<String, dynamic> json) => _$CourseFromJson(json);

  factory Course.empty() => Course(
        id: Uuid().v1(),
        courseName: null,
        description: null,
        overview: null,
        image: null,
        type: null,
        tag: null,
        learners: 0,
        rating: 0,
        dateTime: DateTime.now().millisecondsSinceEpoch,
      );
}
