import 'package:flutter/material.dart';
import 'package:online_learning/domain/json/course/course.dart';

class UpdateCourseProvider extends ChangeNotifier {
  String? tag;
  String? type;
  String? image;
  Course? course;

  //Add Course When User is Selected
  void addCourse(Course courseValue) {
    course = courseValue;
    tag = course!.tag;
    type = course!.type;
  }

  //Add Tag and Type The First Time
  void addTagAndType({required String tagValue, required String typeValue}) {
    tag = tagValue;
    type = typeValue;
  }

  ///Change Tag
  void changeTag(String? value) {
    tag = value;
    notifyListeners();
  }

  //Change Type
  void changeType(String? value) {
    type = value;
    notifyListeners();
  }

  //When user enter image
  void addImage(String value) {
    image = value;
    notifyListeners();
  }
}
