import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:hive_flutter/hive_flutter.dart';
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
}
