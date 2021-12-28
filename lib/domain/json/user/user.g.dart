// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UserModal _$UserModalFromJson(Map<String, dynamic> json) => UserModal(
      userId: json['userId'] as String,
      userName: json['userName'] as String,
      email: json['email'] as String,
      image: json['image'] as String? ??
          'https://w7.pngwing.com/pngs/178/595/png-transparent-user-profile-computer-icons-login-user-avatars.png',
    );

Map<String, dynamic> _$UserModalToJson(UserModal instance) => <String, dynamic>{
      'userId': instance.userId,
      'userName': instance.userName,
      'email': instance.email,
      'image': instance.image,
    };
