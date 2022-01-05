import 'package:flutter/material.dart';

class UpdateCourseProvider extends ChangeNotifier {
  String? tag;
  String? type;
  String? image;

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
