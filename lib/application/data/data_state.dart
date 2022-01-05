part of 'data_bloc.dart';

@freezed
class DataState with _$DataState {
  const factory DataState({
    required bool isCourseUpload,
    required bool isLoadingUpdateProfile,
    required bool isLoadingUpdateCourse,
    required List<Course>? courseList,
    required List<Course>? currentUserCourseList,
    required List<Module>? moduleList,
    required List<Lesson> lessonList,
    required List<LessonImageOrDescriptionOrVideo> lessonContentList,
    required Option<Either<FunctionFailure, Unit>> failureOrSuccess,
  }) = _DataState;

  factory DataState.init() => DataState(
        isCourseUpload: false,
        isLoadingUpdateProfile: false,
        isLoadingUpdateCourse: false,
        failureOrSuccess: none(),
        courseList: [],
        moduleList: [],
        lessonList: [],
        lessonContentList: [],
        currentUserCourseList: [],
      );
}
