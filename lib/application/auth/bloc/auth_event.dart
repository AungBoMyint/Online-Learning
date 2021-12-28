part of 'auth_bloc.dart';

@freezed
class AuthEvent with _$AuthEvent {
  const factory AuthEvent.checkUserAuthenticatedState() =
      CheckUserAuthenticatedState;
  const factory AuthEvent.userAuthenticatedOrNot({
    required bool userAuthenticatedOrNot,
  }) = UserAuthenticatedOrNot;
  const factory AuthEvent.singInWithEmailAndPassword({
    required String email,
    required String password,
  }) = SignInWithEmailAndPassword;
  const factory AuthEvent.registerWithEmailAndPassword({
    required String email,
    required String password,
    required String userName,
  }) = RegisterWithEmailAndPassword;

  //Sign In With Phone Number Event
  const factory AuthEvent.signInWithPhoneNumber({
    required String phoneNumber,
    required String password,
    required Future<void> Function({
      required Future<void> Function({
        required String codeByUser,
      })
          codeByUser,
    })
        callbackToVerifyWithCode,
  }) = SignInWithPhoneNumber;

  //Sign In With Google Event
  const factory AuthEvent.signInWithGoogle() = SignInWithGoogle;

  //Listen Current User Change Event
  const factory AuthEvent.listenCurrentUserDocumentChange({
    required String docId,
  }) = ListenCurrentUserDocumentChange;

  ///Event to emit user Modal
  const factory AuthEvent.eventToEmitUserDocumentChange({
    required UserModal userModal,
  }) = EventToEmitUserDocumentChange;
}
