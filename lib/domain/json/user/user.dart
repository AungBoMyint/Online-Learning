import 'package:freezed_annotation/freezed_annotation.dart';

part 'user.freezed.dart';
part 'user.g.dart';

@freezed
class UserModal with _$UserModal {
  factory UserModal({
    required String? userName,
    required String? email,
    @JsonKey(
        defaultValue:
            "https://w7.pngwing.com/pngs/178/595/png-transparent-user-profile-computer-icons-login-user-avatars.png")
        required String image,
    required int quizScore,
    required bool admin,
  }) = _UserModal;

  factory UserModal.empty() => UserModal(
        userName: null,
        email: null,
        image:
            "https://w7.pngwing.com/pngs/178/595/png-transparent-user-profile-computer-icons-login-user-avatars.png",
        quizScore: 0,
        admin: false,
      );

  factory UserModal.fromJson(Map<String, dynamic> json) =>
      _$UserModalFromJson(json);
}
