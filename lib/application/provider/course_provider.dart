import 'package:flutter/material.dart';
import 'package:online_learning/domain/json/course/course.dart';
import 'package:online_learning/domain/json/course/lesson.dart';

class CourseProvider extends ChangeNotifier {
  ///All Data
  CourseProvider();
  String? courseTitle;
  String? courseDescription;
  String? courseOverview;
  String? tag = "Mobile Development";
  String? type = "Beginner";
  String? image;
  //////////

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
      description: courseDescription,
      overview: courseOverview,
      image: image,
      type: type,
      tag: tag,
      learners: 0,
      rating: 0,
    );
    notifyListeners();
  }

////Entering Course Description Text
  void enterCourseDescription(String? value) {
    courseDescription = value;
    notifyListeners();
  }
}
