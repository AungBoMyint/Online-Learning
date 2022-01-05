// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_UserModal _$$_UserModalFromJson(Map<String, dynamic> json) => _$_UserModal(
      userName: json['userName'] as String?,
      email: json['email'] as String?,
      image: json['image'] as String? ??
          'https://w7.pngwing.com/pngs/178/595/png-transparent-user-profile-computer-icons-login-user-avatars.png',
      quizScore: json['quizScore'] as int,
      admin: json['admin'] as bool,
    );

Map<String, dynamic> _$$_UserModalToJson(_$_UserModal instance) =>
    <String, dynamic>{
      'userName': instance.userName,
      'email': instance.email,
      'image': instance.image,
      'quizScore': instance.quizScore,
      'admin': instance.admin,
    };
