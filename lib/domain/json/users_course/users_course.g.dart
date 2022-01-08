// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'users_course.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_UserCourse _$$_UserCourseFromJson(Map<String, dynamic> json) =>
    _$_UserCourse(
      id: json['id'] as String,
      name: json['name'] as String,
      image: json['image'] as String,
      moduleMap: (json['moduleMap'] as Map<String, dynamic>).map(
        (k, e) => MapEntry(k, UserModule.fromJson(e as Map<String, dynamic>)),
      ),
    );

Map<String, dynamic> _$$_UserCourseToJson(_$_UserCourse instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'image': instance.image,
      'moduleMap': instance.moduleMap,
    };
