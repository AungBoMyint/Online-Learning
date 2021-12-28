import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:online_learning/application/provider/content_provider.dart';
import 'package:online_learning/application/provider/course_provider.dart';
import 'package:online_learning/application/provider/function_provider.dart';
import 'package:online_learning/application/provider/get_user_id.dart';
import 'package:online_learning/application/provider/lesson_provider.dart';
import 'package:online_learning/application/provider/module_provider.dart';
import 'package:online_learning/application/provider/quiz_provider.dart';
import 'package:online_learning/injectable_configuration.dart';

final userIdProvider = Provider.autoDispose((ref) => getIt<CurrentUser>());
final courseProvider =
    ChangeNotifierProvider.autoDispose<CourseProvider>((ref) {
  final userProvider = ref.watch(userIdProvider);
  return CourseProvider(userProvider);
});
final moduleProvider =
    ChangeNotifierProvider.autoDispose<ModuleProvider>((ref) {
  final course = ref.watch(courseProvider);
  return ModuleProvider(course);
});
final lessonProvider =
    ChangeNotifierProvider.autoDispose<LessonProvider>((ref) {
  final course = ref.watch(courseProvider);
  return LessonProvider(course);
});
final contentProvider =
    ChangeNotifierProvider.autoDispose<ContentProvider>((ref) {
  final lesson = ref.watch(lessonProvider);
  return ContentProvider(lesson);
});
final quizProvider = ChangeNotifierProvider.autoDispose<QuizProvider>((ref) {
  final lesson = ref.watch(lessonProvider);
  return QuizProvider(lesson);
});
final functionProvider = ChangeNotifierProvider<FunctionProvider>((ref) {
  return FunctionProvider();
});
