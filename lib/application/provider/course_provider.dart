import 'package:flutter/material.dart';
import 'package:online_learning/application/provider/get_user_id.dart';
import 'package:online_learning/domain/json/course/course.dart';
import 'package:online_learning/domain/json/course/lesson.dart';
import 'package:online_learning/domain/json/course/module.dart';

class CourseProvider extends ChangeNotifier {
  final CurrentUser _currentUser;

  ///All Data
  CourseProvider(this._currentUser);
  String? courseTitle;
  String? courseDescription;
  String? courseOverview;
  String? tag = "Mobile Development";
  String? type = "Beginner";
  String? image;
  //////////
  Module? moduleObject;

  Course? course;
  Lesson? lesson;

  ///When user enter course title
  void enterCourseTitle(String? value) {
    courseTitle = value;
    notifyListeners();
  }

  //Add Course Overview
  void enterCourseOverview(String? value) {
    courseOverview = value;
    notifyListeners();
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

  //Upload Course
  void uploadCourse() {
    course = Course.empty().copyWith(
      courseName: courseTitle,
      creator: _currentUser.getCurrentUserId()?.displayName,
      description: courseDescription,
      image: image,
      advanceCource: false,
    );
    notifyListeners();
  }

////Entering Course Description Text
  void enterCourseDescription(String? value) {
    courseDescription = value;
    notifyListeners();
  }
}
