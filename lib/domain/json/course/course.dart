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
    required String? creator,
    required String? description,
    required bool? advanceCource,
    required String? image,
    required String ownerId,
  }) = _Course;

  factory Course.fromJson(Map<String, dynamic> json) => _$CourseFromJson(json);

  factory Course.empty() => Course(
        id: Uuid().v1(),
        courseName: null,
        creator: null,
        description: null,
        advanceCource: null,
        image: null,
        ownerId: getIt<CurrentUser>().getCurrentUserId()!.uid,
      );
}
