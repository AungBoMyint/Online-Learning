import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_module.freezed.dart';
part 'user_module.g.dart';

@freezed
class UserModule with _$UserModule {
  factory UserModule({
    required String isCompleted,
    required List<String> lessonIdList,
  }) = _UserModule;

  factory UserModule.fromJson(Map<String, dynamic> json) =>
      _$UserModuleFromJson(json);
}
