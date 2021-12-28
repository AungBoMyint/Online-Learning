import 'package:json_annotation/json_annotation.dart';

part 'user.g.dart';

@JsonSerializable()
class UserModal {
  final String userId;
  final String userName;
  final String email;
  @JsonKey(
      defaultValue:
          "https://w7.pngwing.com/pngs/178/595/png-transparent-user-profile-computer-icons-login-user-avatars.png")
  final String image;

  UserModal({
    required this.userId,
    required this.userName,
    required this.email,
    required this.image,
  });

  factory UserModal.fromJson(Map<String, dynamic> json) =>
      _$UserModalFromJson(json);

  Map<String, dynamic> toJson() => _$UserModalToJson(this);
}
