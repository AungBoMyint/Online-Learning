// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'course.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Course _$$_CourseFromJson(Map<String, dynamic> json) => _$_Course(
      id: json['id'] as String,
      courseName: json['courseName'] as String?,
      creator: json['creator'] as String?,
      description: json['description'] as String?,
      advanceCource: json['advanceCource'] as bool?,
      image: json['image'] as String?,
      ownerId: json['ownerId'] as String,
    );

Map<String, dynamic> _$$_CourseToJson(_$_Course instance) => <String, dynamic>{
      'id': instance.id,
      'courseName': instance.courseName,
      'creator': instance.creator,
      'description': instance.description,
      'advanceCource': instance.advanceCource,
      'image': instance.image,
      'ownerId': instance.ownerId,
    };
