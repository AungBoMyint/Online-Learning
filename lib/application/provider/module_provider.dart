import 'package:flutter/material.dart';
import 'package:online_learning/application/provider/course_provider.dart';
import 'package:online_learning/domain/json/course/course.dart';
import 'package:online_learning/domain/json/course/module.dart';

class ModuleProvider extends ChangeNotifier {
  final CourseProvider courseProvider;
  ModuleProvider(this.courseProvider);

  String? moduleText;
  Module? module;

  ///Error
  bool showModuleTextError = false;
  String? moduleTextError;

  //Enter Module Text
  void enterModuleText(String value) {
    if (value != null && value.isNotEmpty) {
      if (value.length < 5) {
        moduleTextError = "Must be more than 5 characters.";
      } else {
        moduleText = value;
        moduleTextError = null;
      }
    } else {
      moduleTextError = "Must not be empty.";
    }
    notifyListeners();
  }

  //Save Module into Course
  void saveModule() {
    showModuleTextError = true;
    if (moduleText != null) {
      if (moduleText!.length > 5) {
        module = Module.empty().copyWith(moduleTitle: moduleText);
        courseProvider.moduleObject = module;
      }
    }
    notifyListeners();
  }
}
