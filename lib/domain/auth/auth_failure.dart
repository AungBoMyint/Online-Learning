import 'package:freezed_annotation/freezed_annotation.dart';

part 'auth_failure.freezed.dart';

@freezed
abstract class AuthFailure with _$AuthFailure {
  const factory AuthFailure.cancelByUser() = CancelByUser;
  const factory AuthFailure.serverError() = ServerError;
  const factory AuthFailure.invalidEmail() = InvalidEmail;
  const factory AuthFailure.wrongPassword() = WrongPassword;
  const factory AuthFailure.userDisabled() = UserDisabled;
  const factory AuthFailure.userNotFound() = UserNotFound;
  const factory AuthFailure.weakPassword() = WeakPassword;
  const factory AuthFailure.emailAlreadyInUse() = EmailAlreadyInUser;
  const factory AuthFailure.invalidPhoneNumber() = InvalidPhoneNumber;
}
