part of 'check_bloc.dart';

@freezed
class CheckEvent with _$CheckEvent {
  const factory CheckEvent.checkCourseExist({
    required String courseId,
  }) = CheckCourseExist;
  const factory CheckEvent.checkModuleExist({
    required String moduleId,
  }) = CheckModuleExist;
  const factory CheckEvent.checkLessonExist({
    required String lessonId,
  }) = CheckLessonExist;
}
