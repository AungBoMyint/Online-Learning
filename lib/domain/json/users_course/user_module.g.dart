// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_module.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_UserModule _$$_UserModuleFromJson(Map<String, dynamic> json) =>
    _$_UserModule(
      isCompleted: json['isCompleted'] as String,
      lessonIdList: (json['lessonIdList'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
    );

Map<String, dynamic> _$$_UserModuleToJson(_$_UserModule instance) =>
    <String, dynamic>{
      'isCompleted': instance.isCompleted,
      'lessonIdList': instance.lessonIdList,
    };
