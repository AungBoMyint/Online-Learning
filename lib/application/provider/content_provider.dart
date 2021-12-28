import 'package:flutter/material.dart';
import 'package:online_learning/domain/json/course/content.dart';
import 'package:online_learning/domain/json/course/lesson_image_or_description_or_video.dart';
import 'package:uuid/uuid.dart';

import 'lesson_provider.dart';

class ContentProvider extends ChangeNotifier {
  final LessonProvider lessonProvider;
  ContentProvider(this.lessonProvider);
  String? contentText;
  String? hexColor;
  String pickColor = '#fafafa';

  void changeContentText(String value) {
    contentText = value;
    notifyListeners();
  }

  void changeColor(String color) {
    hexColor = color;
    notifyListeners();
  }

  void saveContentIntoLessonProvider() {
    final content = Content(
      content: contentText ?? "",
      color: hexColor ?? "#fafafa",
    );
    lessonProvider.addLessonImageOrDescription(
        content: LessonImageOrDescriptionOrVideo(
      id: Uuid().v1(),
      image: null,
      imageDescription: null,
      content: content,
      videoLink: null,
      quiz: null,
    ));
  }
}
