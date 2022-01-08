import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';
import 'package:online_learning/domain/function/function_failure.dart';
import 'package:online_learning/domain/json/course/course.dart';
import 'package:online_learning/domain/json/course/lesson.dart';
import 'package:online_learning/domain/json/course/lesson_image_or_description_or_video.dart';
import 'package:online_learning/domain/json/course/module.dart';
import 'package:online_learning/domain/json/user/user.dart';

abstract class FirebaseFunctionParent {
  //////////////...Uploading Function..../////////////////////
  Future<Either<FunctionFailure, Unit>> uploadCourse({
    required Course course,
    required String userId,
  });

  //Upload Module
  Future<Either<FunctionFailure, Unit>> uploadModule({
    required Module module,
    required String courseId,
  });

  //Upload Lesson
  Future<Either<FunctionFailure, Unit>> uploadLesson({
    required Lesson lesson,
    required String moduleId,
  });

  //Upload LessonImageOrDescriptionOrVideo
  Future<Either<FunctionFailure, Unit>> uploadLessonImageOrDescriptionOrVideo({
    required List<LessonImageOrDescriptionOrVideo> lesson,
    required String lessonId,
  });

  //Update User Profile
  Future<Either<FunctionFailure, Unit>> updateUserProfile({
    required UserModal userModal,
    required String password,
  });

  //Update Course
  Future<Either<FunctionFailure, Unit>> updateCourse({
    required Course course,
    required String? courseImage,
  });

  //////////////////////////......................../////////////////////////
  /////.....Get Current User's course............/////////
  Future<Either<FunctionFailure, QuerySnapshot<Course>>>
      getCurrentUserOwnCourseList();

  ///Listen All Course
  Stream<QuerySnapshot<Course>> allCourse();

  ///Listen Current Course's Module
  Future<QuerySnapshot<Module>> getCurrentCourseModule({
    required String courseId,
  });
  //Listen Current Module's Lesson
  Future<QuerySnapshot<Lesson>> getCurrentModuleLesson({
    required String moduleId,
  });

  ///Listen Current Lesson's Lesson Content
  Future<QuerySnapshot<LessonImageOrDescriptionOrVideo>>
      getCurrentLessonContent({
    required String lessonId,
  });
}
