// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'lesson_image_or_description_or_video.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_LessonImageOrDescriptionOrVideo<T>
    _$$_LessonImageOrDescriptionOrVideoFromJson<T>(Map<String, dynamic> json) =>
        _$_LessonImageOrDescriptionOrVideo<T>(
          id: json['id'] as String,
          image: json['image'] as String?,
          imageDescription: json['imageDescription'] as String?,
          content: json['content'] == null
              ? null
              : Content.fromJson(json['content'] as Map<String, dynamic>),
          videoLink: json['videoLink'] as String?,
          quiz: QuestionConveter<T?>().fromJson(json['quiz']),
        );

Map<String, dynamic> _$$_LessonImageOrDescriptionOrVideoToJson<T>(
        _$_LessonImageOrDescriptionOrVideo<T> instance) =>
    <String, dynamic>{
      'id': instance.id,
      'image': instance.image,
      'imageDescription': instance.imageDescription,
      'content': instance.content,
      'videoLink': instance.videoLink,
      'quiz': QuestionConveter<T?>().toJson(instance.quiz),
    };
