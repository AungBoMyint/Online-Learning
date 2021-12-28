// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'lesson_image_or_description_or_video.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_LessonImageOrDescriptionOrVideo _$$_LessonImageOrDescriptionOrVideoFromJson(
        Map<String, dynamic> json) =>
    _$_LessonImageOrDescriptionOrVideo(
      id: json['id'] as String,
      image: json['image'] as String?,
      imageDescription: json['imageDescription'] as String?,
      content: json['content'] == null
          ? null
          : Content.fromJson(json['content'] as Map<String, dynamic>),
      videoLink: json['videoLink'] as String?,
    );

Map<String, dynamic> _$$_LessonImageOrDescriptionOrVideoToJson(
        _$_LessonImageOrDescriptionOrVideo instance) =>
    <String, dynamic>{
      'id': instance.id,
      'image': instance.image,
      'imageDescription': instance.imageDescription,
      'content': instance.content?.toJson(),
      'videoLink': instance.videoLink,
    };
