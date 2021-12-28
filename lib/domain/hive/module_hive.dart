import 'package:hive_flutter/hive_flutter.dart';
import 'package:hive/hive.dart';

part 'module_hive.g.dart';

@HiveType(typeId: 4)
class ModuleHive extends HiveObject {
  @HiveField(1)
  String moduleId;
  @HiveField(2)
  Map<String, String> lessonMap;
  @HiveField(3)
  double moduleProgress;
  ModuleHive({
    required this.moduleId,
    required this.lessonMap,
    required this.moduleProgress,
  });
}
