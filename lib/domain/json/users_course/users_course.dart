import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:online_learning/domain/json/users_course/user_module.dart';

part 'users_course.freezed.dart';
part 'users_course.g.dart';

@freezed
class UserCourse with _$UserCourse {
  factory UserCourse({
    required String id,
    required String name,
    required String image,
    required Map<String, UserModule> moduleMap,
  }) = _UserCourse;

  factory UserCourse.fromJson(Map<String, dynamic> json) =>
      _$UserCourseFromJson(json);
}
