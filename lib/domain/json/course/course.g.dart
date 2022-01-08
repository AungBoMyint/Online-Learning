// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'course.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Course _$$_CourseFromJson(Map<String, dynamic> json) => _$_Course(
      id: json['id'] as String,
      courseName: json['courseName'] as String?,
      description: json['description'] as String?,
      overview: json['overview'] as String?,
      type: json['type'] as String?,
      tag: json['tag'] as String?,
      image: json['image'] as String?,
      learners: json['learners'] as int,
      rating: json['rating'] as int,
      dateTime: json['dateTime'] as int,
      ownerId: json['ownerId'] as String?,
    );

Map<String, dynamic> _$$_CourseToJson(_$_Course instance) => <String, dynamic>{
      'id': instance.id,
      'courseName': instance.courseName,
      'description': instance.description,
      'overview': instance.overview,
      'type': instance.type,
      'tag': instance.tag,
      'image': instance.image,
      'learners': instance.learners,
      'rating': instance.rating,
      'dateTime': instance.dateTime,
      'ownerId': instance.ownerId,
    };
