import 'package:hive_flutter/hive_flutter.dart';
import 'package:online_learning/domain/hive/module_hive.dart';

part 'course_hive.g.dart';

@HiveType(typeId: 3)
class CourseHive extends HiveObject {
  @HiveField(1)
  String courseId;
  @HiveField(2)
  Map<String, ModuleHive> moduleMap;
  @HiveField(3)
  double courseProgress;

  CourseHive({
    required this.courseId,
    required this.moduleMap,
    required this.courseProgress,
  });
}
