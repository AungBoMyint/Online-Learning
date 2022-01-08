part of 'data_bloc.dart';

@freezed
class DataEvent with _$DataEvent {
  ///Upload Course To Firebase
  const factory DataEvent.uploadCourseToFirebase({
    required Course course,
  }) = UploadCourseToFirebase;

  //Upload Module To Firebase
  const factory DataEvent.uploadModuleToFirebase({
    required Module module,
    required String courseId,
  }) = UploadModuleToFirebase;

  //Upload Lesson To Firebase
  const factory DataEvent.uploadLessonToFirebase({
    required Lesson listLesson,
    required String moduleId,
  }) = UploadLessonToFirebase;

  //Upload LessonImageOrVideoOrDescription To Firebase
  const factory DataEvent.uploadLessonImageOrVideoOrDescription({
    required List<LessonImageOrDescriptionOrVideo> lesson,
    required String lessonId,
  }) = UploadLessonImageOrVideoOrDescription;

  ///Update User Profile
  const factory DataEvent.updateUserProfile({
    required UserModal userModal,
    required String password,
  }) = UpdateUserProfile;

  ////Update Course
  const factory DataEvent.updateCourse({
    required Course course,
    required String? courseImage,
  }) = UpdateCourse;

  /////GET FROM COLLECTION AND DOCUMENT
  const factory DataEvent.listenAllCourse() = ListenAllCourse;
  const factory DataEvent.getCurrentUserOwnCoursesList() =
      GetCurrentUserOwnCourseList;
  const factory DataEvent.getCurrentCourseModules({
    required String courseId,
  }) = GetCurrentCourseModules;
  const factory DataEvent.getCurrentModuleLessons({
    required String moduleId,
  }) = GetCurrentModuleLessons;
  const factory DataEvent.getCurrentLessonLessonContents({
    required String lessonId,
  }) = GetCurrentLessonLessonContents;
  const factory DataEvent.emitCourseListStream({
    required List<Course> courseList,
  }) = EmitCourseListStream;
  const factory DataEvent.emitCurrentUserCourseListStream({
    required List<Course> courseList,
  }) = EmitCurrentUserCourseListStream;
}
