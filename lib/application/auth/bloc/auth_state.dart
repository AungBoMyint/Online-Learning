part of 'auth_bloc.dart';

@freezed
class AuthState with _$AuthState {
  const factory AuthState({
    required bool isAuthenticated,
    required bool sendingVerification,
    required bool sendingPhoneCode,
    required bool signInLoading,
    required bool signInPhoneLoading,
    required bool signInGoogleLoading,
    required bool registerLoading,
    required UserModal? userModal,
    required Option<Either<AuthFailure, Unit>> authFailureOrNot,
  }) = _AuthState;

  factory AuthState.init() => const AuthState(
        userModal: null,
        isAuthenticated: false,
        sendingVerification: false,
        sendingPhoneCode: false,
        signInLoading: false,
        signInGoogleLoading: false,
        signInPhoneLoading: false,
        registerLoading: false,
        authFailureOrNot: None(),
      );
}
