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
  bool isAdvantace = false;
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

  ///When use select Advantace Option
  void changeCourseType(int value) {
    if (value == 3) {
      isAdvantace = true;
    } else {
      isAdvantace = false;
    }
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
      advanceCource: isAdvantace,
    );
    notifyListeners();
  }

////Entering Course Description Text
  void enterCourseDescription(String? value) {
    courseDescription = value;
    notifyListeners();
  }
}
