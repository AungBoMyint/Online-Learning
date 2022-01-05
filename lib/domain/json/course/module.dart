import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:online_learning/domain/json/course/lesson.dart';
import 'package:uuid/uuid.dart';

part 'module.freezed.dart';
part 'module.g.dart';

@freezed
class Module with _$Module {
  const factory Module({
    required String id,
    required String? moduleTitle,
    required int dateTime,
  }) = _Module;

  factory Module.fromJson(Map<String, dynamic> json) => _$ModuleFromJson(json);

  factory Module.empty() => Module(
        id: Uuid().v1(),
        moduleTitle: null,
        dateTime: DateTime.now().millisecondsSinceEpoch,
      );
}
