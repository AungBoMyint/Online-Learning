import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:online_learning/application/provider/content_provider.dart';
import 'package:online_learning/application/provider/course_provider.dart';
import 'package:online_learning/application/provider/function_provider.dart';
import 'package:online_learning/application/provider/get_user_id.dart';
import 'package:online_learning/application/provider/lesson_provider.dart';
import 'package:online_learning/application/provider/module_provider.dart';
import 'package:online_learning/application/provider/quiz_provider.dart';
import 'package:online_learning/application/provider/update_course.dart';
import 'package:online_learning/application/provider/update_profile.dart';
import 'package:online_learning/injectable_configuration.dart';

final userIdProvider = Provider.autoDispose((ref) => getIt<CurrentUser>());
final courseProvider =
    ChangeNotifierProvider.autoDispose<CourseProvider>((ref) {
  return CourseProvider();
});
final moduleProvider =
    ChangeNotifierProvider.autoDispose<ModuleProvider>((ref) {
  return ModuleProvider();
});
final lessonProvider =
    ChangeNotifierProvider.autoDispose<LessonProvider>((ref) {
  return LessonProvider();
});
final contentProvider =
    ChangeNotifierProvider.autoDispose<ContentProvider>((ref) {
  final lesson = ref.watch(lessonProvider);
  return ContentProvider(lesson);
});
final quizProvider = ChangeNotifierProvider.autoDispose<QuizProvider>((ref) {
  return QuizProvider();
});
final functionProvider = ChangeNotifierProvider<FunctionProvider>((ref) {
  return FunctionProvider();
});
final updateProfileProvider =
    ChangeNotifierProvider.autoDispose<UpdateProfileProvider>(
        (ref) => UpdateProfileProvider());
final updateCourseProvider =
    ChangeNotifierProvider.autoDispose<UpdateCourseProvider>(
        (ref) => UpdateCourseProvider());
