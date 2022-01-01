import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:online_learning/domain/hive/course_hive.dart';
import 'package:online_learning/domain/hive/module_hive.dart';
import 'package:online_learning/domain/json/question/choice_item.dart';

class FunctionProvider extends ChangeNotifier {
  String? courseId;
  String? moduleId;
  int moduleLength = 0;

  //Page Controller OF Module Detail
  final pageController = PageController(initialPage: 0);

  ///Group Value
  String? groupValue;

  ////Module Title
  String moduleTitle = "Sorry some error";

  ///User Enter TrueAnswer Text
  String? userEnterBlankText;

  ///TrueAnswer Map
  Map<String, bool> userTrueMap = {};
  Map<String, bool> originalTrueMap = {};

  ///LessonList of current Module
  int lessonListLength = 0;

  //ChangeLessonList
  void addLessonList(int total) {
    lessonListLength = total;
  }

  //Add Module Title When Course Detail's Lecture Module ListTile is pressed
  void addModuleTitle(String value) {
    moduleTitle = value;
  }

  //Change User Enter Blank Text
  void changeUserEnterBlankText(String? value) {
    userEnterBlankText = value;
    notifyListeners();
  }

  ///Add Map key and Value Boolean
  void addMapBoolean(String id, bool value) {
    userTrueMap[id] = value;
    notifyListeners();
  }

  ///we need to pre add trupMap For Build CheckBox's boolean value
  void addChoiceItemMap(Map<String, ChoiceItem> choiceItem) {
    for (var item in choiceItem.entries) {
      userTrueMap.putIfAbsent(item.key, () => false);
    }
    for (var item in choiceItem.entries) {
      originalTrueMap.putIfAbsent(item.key, () => item.value.isTrueAnswer);
    }
  }

  ///We Add First We OneChoice of Quiz is not null,and build its widget at the
  ///first time
  void changeGroupValue(String? value) {
    groupValue = value;
    notifyListeners();
  }

  void changeCourseId({required String id}) {
    courseId = id;
    notifyListeners();
  }

  void changeModuleLength({required int value}) {
    moduleLength = value;
    notifyListeners();
  }

  //Check This Module Contain Current into CourseHive Map
  bool isContainThisModule({required String moduleId}) {
    final courseHive = Hive.box<CourseHive>('progressCourse').get(courseId);
    if (courseHive!.moduleMap.containsKey(moduleId)) {
      return true;
    } else {
      return false;
    }
  }

//Add This Module Or Not Add
  void addThisModuleOrNot({required String moduleid}) {
    moduleId = moduleid;
    final courseHive = Hive.box<CourseHive>('progressCourse').get(courseId);
    if (courseHive!.moduleMap.containsKey(moduleid)) {
      //We Don't do nothing
    } else {
      courseHive.moduleMap.putIfAbsent(
          moduleid,
          () => ModuleHive(
                moduleId: moduleid,
                lessonMap: {},
                moduleProgress: 0.0,
              ));
      Hive.box<CourseHive>('progressCourse').put(courseId, courseHive);
    }
  }

  //AddThisLessonOrNot
  void addThisLessonOrNot(
      {required String lessonId, required int lessonLength}) {
    final courseHive = Hive.box<CourseHive>('progressCourse').get(courseId);
    if (courseHive!.moduleMap[moduleId]!.lessonMap.containsKey(lessonId)) {
      //We Don't do nothing
    } else {
      courseHive.moduleMap[moduleId]!.lessonMap.putIfAbsent(
        lessonId,
        () => lessonId,
      );
      //Then we increase module's progress immediately
      changeModuleProgress(lessonLength: lessonLength);
    }
  }

  ///Change Module's Progress
  void changeModuleProgress({required int lessonLength}) {
    final courseHive = Hive.box<CourseHive>('progressCourse').get(courseId);
    courseHive!.moduleMap[moduleId]!.moduleProgress =
        courseHive.moduleMap[moduleId]!.lessonMap.length / lessonLength;
    //If this module progress is full,we need to increase course's progress
    if (courseHive.moduleMap[moduleId]!.moduleProgress == 1.0) {
      //we get modules which are full
      final fullModules = courseHive.moduleMap.entries
          .where((element) => element.value.moduleProgress == 1.0);
      courseHive.courseProgress = fullModules.length / moduleLength;
    }
    //Then we need to
    //Then we need to re-add this courseHive
    Hive.box<CourseHive>('progressCourse').put(courseId, courseHive);
  }
}
