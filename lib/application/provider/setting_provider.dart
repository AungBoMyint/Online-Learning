import 'package:flutter/material.dart';

class SettingProvider extends ChangeNotifier {
  String? userImage;

  ///Add user image
  void addUserImage(String imagePath) {
    userImage = imagePath;
    notifyListeners();
  }
}
