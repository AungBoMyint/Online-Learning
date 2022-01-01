import 'package:bloc/bloc.dart';
import 'package:bloc_concurrency/bloc_concurrency.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart' hide Module;
import 'package:online_learning/application/provider/get_user_id.dart';
import 'package:online_learning/domain/function/firebase_function_parent.dart';
import 'package:online_learning/domain/function/function_failure.dart';
import 'package:online_learning/domain/json/course/course.dart';
import 'package:online_learning/domain/json/course/lesson.dart';
import 'package:online_learning/domain/json/course/lesson_image_or_description_or_video.dart';
import 'package:online_learning/domain/json/course/module.dart';
import 'package:online_learning/domain/json/user/user.dart';
import 'package:online_learning/injectable_configuration.dart' hide Module;

part 'data_event.dart';
part 'data_state.dart';
part 'data_bloc.freezed.dart';

@Injectable()
class DataBloc extends Bloc<DataEvent, DataState> {
  final FirebaseFunctionParent _firebaseFunction;
  DataBloc(this._firebaseFunction) : super(DataState.init()) {
    on<UploadCourseToFirebase>(
      (event, emit) async {
        emit(state.copyWith(
          isCourseUpload: true,
          failureOrSuccess: none(),
        ));
        await _firebaseFunction
            .uploadCourse(
                course: event.course,
                userId: getIt<CurrentUser>().getCurrentUserId()!.uid)
            .then((value) => emit(state.copyWith(
                  isCourseUpload: false,
                  failureOrSuccess: some(value),
                )));
      },
      transformer: sequential(),
    );

    ///Upload Module
    on<UploadModuleToFirebase>(
      (event, emit) async {
        emit(state.copyWith(
          isCourseUpload: true,
          failureOrSuccess: none(),
        ));
        await _firebaseFunction
            .uploadModule(
              courseId: event.courseId,
              module: event.module,
            )
            .then((value) => emit(state.copyWith(
                  isCourseUpload: false,
                  failureOrSuccess: some(value),
                )));
      },
      transformer: sequential(),
    );

    ///Upload Lesson
    on<UploadLessonToFirebase>(
      (event, emit) async {
        emit(state.copyWith(
          isCourseUpload: true,
          failureOrSuccess: none(),
        ));
        await _firebaseFunction
            .uploadLesson(lesson: event.listLesson, moduleId: event.moduleId)
            .then((value) => emit(state.copyWith(
                  isCourseUpload: false,
                  failureOrSuccess: some(value),
                )));
      },
      transformer: sequential(),
    );

    //Upload Lesson Image Or Descriptlion Or Video
    on<UploadLessonImageOrVideoOrDescription>(
      (event, emit) async {
        emit(state.copyWith(
          isCourseUpload: true,
          failureOrSuccess: none(),
        ));
        await _firebaseFunction
            .uploadLessonImageOrDescriptionOrVideo(
                lesson: event.lesson, lessonId: event.lessonId)
            .then((value) => emit(state.copyWith(
                  isCourseUpload: false,
                  failureOrSuccess: some(value),
                )));
      },
      transformer: sequential(),
    );

    ///Update User Profiel Event
    on<UpdateUserProfile>(
      (event, emit) async {
        emit(state.copyWith(
          isLoadingUpdateProfile: true,
          failureOrSuccess: none(),
        ));
        await _firebaseFunction
            .updateUserProfile(
          userModal: event.userModal,
        )
            .then((value) {
          emit(state.copyWith(
            isLoadingUpdateProfile: false,
            failureOrSuccess: Some(value),
          ));
        });
      },
      transformer: sequential(),
    );

    ////Getting Firebase Firestore DATA
    on<ListenAllCourse>((event, emit) async {
      emit(state.copyWith(courseList: null));
      _firebaseFunction.allCourse().listen((event) async {
        add(EmitCourseListStream(
            courseList: event.docs.map((e) => e.data()).toList()));
      });
    }, transformer: sequential());
    on<EmitCourseListStream>((event, emit) {
      emit(state.copyWith(courseList: event.courseList));
    });

    ////Getting Current User's Created Course
    on<ListenCurrentUserOwnCourse>((event, emit) async {
      emit(state.copyWith(courseList: null));
      _firebaseFunction.currentUserOwnCourse().listen((event) async {
        print("Course List: ${event.docs.map((e) => e.data()).toList()}");
        add(EmitCurrentUserCourseListStream(
            courseList: event.docs.map((e) => e.data()).toList()));
      });
    }, transformer: sequential());
    on<EmitCurrentUserCourseListStream>((event, emit) => emit(state.copyWith(
          currentUserCourseList: event.courseList,
        )));

    //Get Current Course's Module
    on<GetCurrentCourseModules>(
      (event, emit) async {
        emit(state.copyWith(moduleList: null));
        await _firebaseFunction
            .getCurrentCourseModule(courseId: event.courseId)
            .then((value) => emit(state.copyWith(
                moduleList: value.docs.map((e) => e.data()).toList())));
      },
      transformer: sequential(),
    );

    //Get Current Module's Lesson
    on<GetCurrentModuleLessons>((event, emit) async {
      await _firebaseFunction
          .getCurrentModuleLesson(moduleId: event.moduleId)
          .then((value) => emit(state.copyWith(
              lessonList: value.docs.map((e) => e.data()).toList())));
      state.copyWith(lessonList: []);
    }, transformer: sequential());

    //Get Current Lesson's Lesson Content
    on<GetCurrentLessonLessonContents>(
      (event, emit) async {
        await _firebaseFunction
            .getCurrentLessonContent(lessonId: event.lessonId)
            .then((value) => emit(state.copyWith(
                lessonContentList: value.docs.map((e) => e.data()).toList())));
      },
      transformer: sequential(),
    );
  }
}
