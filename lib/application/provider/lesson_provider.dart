import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:online_learning/domain/json/course/lesson.dart';
import 'package:online_learning/domain/json/course/lesson_image_or_description_or_video.dart';
import 'package:uuid/uuid.dart';

class LessonProvider extends ChangeNotifier {
  LessonProvider();

  ///All data
  ///Module Id
  String? moduleUid;
  String? lessonId;

  String? lessonTitle;

  ///Lesson Object
  Lesson? lesson;

  ///Error
  String? lessonError;

  ///Bool
  bool showError = false;

  List<LessonImageOrDescriptionOrVideo> lessonImageOrDescriptionOrVideoList =
      [];

//Enter Lesson Title
  void enterLessonTitle(String? value) {
    if (value != null && value.isNotEmpty) {
      if (value.length < 5) {
        lessonError = "Must be greater than 5 characters";
      } else {
        lessonError = null;
        lessonTitle = value;
      }
    } else {
      lessonError = "Must not be empty";
    }
    notifyListeners();
  }

  //Save Lesson Title
  void saveLesson(String moduleId) {
    showError = true;
    if (lessonTitle != null) {
      if (lessonTitle!.length > 5) {
        lesson = Lesson.empty().copyWith(lessonTitle: lessonTitle);
        moduleUid = moduleId;
        lessonId = lesson!.id;
      }
    }
    print("Module Id: $moduleUid");
    notifyListeners();
  }

  //Remove this Lesson
  void removeCurrentLesson(String id) {
    lesson = null;
    notifyListeners();
  }

  ///add image list
  void addImagelist(List<XFile>? inputImageList) {
    inputImageList?.forEach((element) {
      final id = Uuid().v1();
      final lessonImageOrDescriptionOrVideo = LessonImageOrDescriptionOrVideo(
        id: id,
        image: element.path,
        imageDescription: null,
        content: null,
        videoLink: null,
        quiz: null,
      );
      lessonImageOrDescriptionOrVideoList.add(lessonImageOrDescriptionOrVideo);
      notifyListeners();
    });
  }

  ///add image description to above image list individually
  void addImageDescription(String imageDescription, String elementId) {
    //Look up this image object and change its description
    final id = lessonImageOrDescriptionOrVideoList
        .indexWhere((element) => element.id == elementId);
    lessonImageOrDescriptionOrVideoList[id] =
        lessonImageOrDescriptionOrVideoList[id].copyWith(
      imageDescription: imageDescription,
    );
  }

  //Add LessonImageOrDescription from Contact-Provider Into This list
  //to rebuild UI
  void addLessonImageOrDescription(
      {required LessonImageOrDescriptionOrVideo content}) {
    lessonImageOrDescriptionOrVideoList.add(content);
    notifyListeners();
  }
}
