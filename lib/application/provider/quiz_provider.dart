import 'package:flutter/material.dart';
import 'package:online_learning/application/provider/lesson_provider.dart';

class QuizProvider extends ChangeNotifier {
  final LessonProvider lessonProvider;
  QuizProvider(this.lessonProvider);
}
