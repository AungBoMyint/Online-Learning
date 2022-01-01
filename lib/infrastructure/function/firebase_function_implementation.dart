import 'dart:async';
import 'dart:io';

import 'package:dartz/dartz.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:injectable/injectable.dart' hide Module;
import 'package:online_learning/application/provider/get_user_id.dart';
import 'package:online_learning/domain/function/firebase_function_parent.dart';
import 'package:online_learning/domain/function/function_failure.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:online_learning/domain/json/course/course.dart';
import 'package:online_learning/domain/json/course/module.dart';
import 'package:online_learning/domain/json/course/lesson_image_or_description_or_video.dart';
import 'package:online_learning/domain/json/course/lesson.dart';
import 'package:online_learning/domain/json/user/user.dart';

import '../../injectable_configuration.dart';

@LazySingleton(as: FirebaseFunctionParent)
class FirebaseFunctionImplementation extends FirebaseFunctionParent {
  final FirebaseFirestore _firebaseFirestore;
  final FirebaseStorage _firebaseStorage;
  FirebaseFunctionImplementation(
      this._firebaseFirestore, this._firebaseStorage);

  ///Update User Profile
  @override
  Future<Either<FunctionFailure, Unit>> updateUserProfile(
      {required UserModal userModal}) async {
    try {
      final Map<String, dynamic> userJson = userModal.toJson();
      await _firebaseFirestore
          .collection('users')
          .doc(userModal.userId)
          .set(userJson);
      return const Right(unit);
    } on Exception catch (e) {
      return const Left(FunctionFailure.fialToUpdate());
    }
  }

////Upload Course
  @override
  Future<Either<FunctionFailure, Unit>> uploadCourse(
      {required Course course, required String userId}) async {
    final Completer<Either<FunctionFailure, Unit>> _completer = Completer();

    ///We will upload if course's image is not null
    if (course.image != null) {
      //We need to store image File into Firestore Database
      final file = File(course.image!);
      try {
        await _firebaseStorage
            .ref()
            .child("course/${course.id}")
            .putFile(file)
            .then((snapShot) async {
          await snapShot.ref.getDownloadURL().then((value) {
            print("Course Image: $value");
            course = course.copyWith(
              image: value,
            );
            //then we store this course into Firestore
            _firebaseFirestore.collection("course").doc(course.id).set(
                  course.toJson(),
                );
          });
        }).then((value) => _completer.complete(const Right(unit)));
      } on FirebaseException catch (e) {
        _completer.complete(const Left(FunctionFailure.fialToUpload()));
      }
    } else {
      _completer.complete(const Left(FunctionFailure.fialToUpload()));
    }
    return _completer.future;
  }

  ///Upload Module.....................................
  @override
  Future<Either<FunctionFailure, Unit>> uploadModule({
    required Module module,
    required String courseId,
  }) async {
    try {
      _firebaseFirestore
          .collection('module')
          .doc(courseId)
          .collection("modules")
          .doc(module.id)
          .set(module.toJson());
      return const Right(unit);
    } on FirebaseException catch (e) {
      return const Left(FunctionFailure.fialToUpload());
    }
  }

  ///Upload Lesson...............................
  @override
  Future<Either<FunctionFailure, Unit>> uploadLesson({
    required Lesson lesson,
    required String moduleId,
  }) async {
    try {
      _firebaseFirestore
          .collection("lesson")
          .doc(moduleId)
          .collection("lessons")
          .doc(lesson.id)
          .set(lesson
              .copyWith(dateTime: DateTime.now().millisecondsSinceEpoch)
              .toJson());
      return const Right(unit);
    } on FirebaseException catch (e) {
      return const Left(FunctionFailure.fialToUpload());
    }
  }

////Upload Lesson's Content.............................
  @override
  Future<Either<FunctionFailure, Unit>> uploadLessonImageOrDescriptionOrVideo({
    required List<LessonImageOrDescriptionOrVideo> lesson,
    required String lessonId,
  }) async {
    try {
      //We check if it include image or not
      await Future.forEach(lesson, (item) async {
        var desc = item as LessonImageOrDescriptionOrVideo;
        if (desc.image != null) {
          final file = File(desc.image!);
          await _firebaseStorage
              .ref()
              .child("contentImage/${desc.id}.jpg")
              .putFile(file)
              .then((snapshot) async {
            await snapshot.ref.getDownloadURL().then((value) {
              print("Content Image: $value");
              desc = desc.copyWith(image: value);
              _firebaseFirestore
                  .collection("lessonContent")
                  .doc(lessonId)
                  .collection("lessonContents")
                  .doc(desc.id)
                  .set(desc.toJson());
            });
          });
        } else {
          _firebaseFirestore
              .collection("lessonContent")
              .doc(lessonId)
              .collection("lessonContents")
              .doc(desc.id)
              .set(desc.toJson());
        }
      });
      return const Right(unit);
    } on FirebaseException catch (e) {
      return const Left(FunctionFailure.fialToUpload());
    }
  }

  /////////////Listen Each Current User's Course Collection........///////////////////
  @override
  Stream<QuerySnapshot<Course>> currentUserOwnCourse() async* {
    yield* _firebaseFirestore
        .collection("course")
        .where("ownerId",
            isEqualTo: getIt<CurrentUser>().getCurrentUserId()!.uid)
        .withConverter<Course>(
            fromFirestore: (snapshot, _) => Course.fromJson(snapshot.data()!),
            toFirestore: (course, _) => course.toJson())
        .snapshots();
  }

  ////Listen All Course
  @override
  Stream<QuerySnapshot<Course>> allCourse() async* {
    yield* _firebaseFirestore
        .collection("course")
        .withConverter<Course>(
          fromFirestore: (snapshot, _) => Course.fromJson(snapshot.data()!),
          toFirestore: (course, _) => course.toJson(),
        )
        .snapshots();
  }

  ///Get Current Course's Modules
  @override
  Future<QuerySnapshot<Module>> getCurrentCourseModule(
      {required String courseId}) async {
    return _firebaseFirestore
        .collection("module")
        .doc(courseId)
        .collection("modules")
        .withConverter<Module>(
            fromFirestore: (snapshot, _) => Module.fromJson(snapshot.data()!),
            toFirestore: (module, _) => module.toJson())
        .get();
  }

  @override
  Future<QuerySnapshot<Lesson>> getCurrentModuleLesson(
      {required String moduleId}) async {
    return _firebaseFirestore
        .collection("lesson")
        .doc(moduleId)
        .collection("lessons")
        .orderBy('dateTime', descending: false)
        .withConverter<Lesson>(
          fromFirestore: (snapshot, _) => Lesson.fromJson(snapshot.data()!),
          toFirestore: (lesson, _) => lesson.toJson(),
        )
        .get();
  }

  @override
  Future<QuerySnapshot<LessonImageOrDescriptionOrVideo>>
      getCurrentLessonContent({required String lessonId}) async {
    return _firebaseFirestore
        .collection("lessonContent")
        .doc(lessonId)
        .collection("lessonContents")
        .withConverter<LessonImageOrDescriptionOrVideo>(
          fromFirestore: (snapshot, _) =>
              LessonImageOrDescriptionOrVideo.fromJson(snapshot.data()!),
          toFirestore: (lessonContent, _) => lessonContent.toJson(),
        )
        .get();
  }
}
