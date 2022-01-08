part of 'database_bloc.dart';

@freezed
class DatabaseEvent with _$DatabaseEvent {
  const factory DatabaseEvent.listenCurrentUserEnrollCourse() =
      _ListenCurrentUserEnrollCourse;
  const factory DatabaseEvent.addUserCourseIntoDatabase({
    required UserCourse userCourse,
  }) = _AddUserCourseIntoDatabase;
  const factory DatabaseEvent.addUserModuleIntoDatabase({
    required UserModule userModule,
    required String courseID,
  }) = _AddUserModuleIntoDatabase;
  const factory DatabaseEvent.addLessonIdIntoLessonList({
    required String lessonID,
    required String moduleID,
  }) = _AddLessonIdIntoLessonList;
}
