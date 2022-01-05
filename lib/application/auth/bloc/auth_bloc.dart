import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:bloc_concurrency/bloc_concurrency.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:online_learning/domain/auth/auth_failure.dart';
import 'package:online_learning/domain/auth/auth_parent.dart';
import 'package:online_learning/domain/json/user/user.dart';

part 'auth_event.dart';
part 'auth_state.dart';
part 'auth_bloc.freezed.dart';

@injectable
class AuthBloc extends Bloc<AuthEvent, AuthState> {
  final AuthParent _authParent;
  AuthBloc(this._authParent) : super(AuthState.init()) {
    on<CheckUserAuthenticatedState>(
      (event, emit) async {
        _authParent.listenUserChange().listen((user) async {
          if (user != null) {
            ///We Get Current User's document change
            _authParent
                .getCurrentUserDocument(userId: user.uid)
                .then((document) async {
              //Document is not exist . we add this User into Firestore...
              if ((!document!.exists && user.emailVerified)) {
                await _authParent.addCurrentUserToFirebaseFirestore(
                  user: UserModal(
                    userName: user.displayName ?? "",
                    email: user.email ?? "",
                    image: user.photoURL ?? "",
                    quizScore: 0,
                    admin: false,
                  ),
                );
              }
            });
            add(const UserAuthenticatedOrNot(userAuthenticatedOrNot: true));
            add(ListenCurrentUserDocumentChange(docId: user.uid));
          } else {
            add(const UserAuthenticatedOrNot(userAuthenticatedOrNot: false));
          }
        });
        //Listening User Change Stream
      },
      transformer: sequential(),
    );

    ///User Authenticted Or Not Event
    on<UserAuthenticatedOrNot>((event, emit) {
      emit(state.copyWith(
        isAuthenticated: event.userAuthenticatedOrNot,
      ));
    });

    //Listen Current User Document change
    on<ListenCurrentUserDocumentChange>(
      (event, emit) async {
        await emit.onEach(
          _authParent.listenCurrentUserDocument(userId: event.docId),
          onData: (userModalSnapshot) {
            final userModal = userModalSnapshot as DocumentSnapshot<UserModal>;

            ///Emit User Modal Change
            add(EventToEmitUserDocumentChange(userModal: userModal.data()!));
          },
        );
      },
      transformer: restartable(),
    );

    on<EventToEmitUserDocumentChange>((event, emit) => emit(state.copyWith(
          userModal: event.userModal,
        )));

    ///Sign In With Email And Password
    on<SignInWithEmailAndPassword>(
      (event, emit) async {
        emit(state.copyWith(
          authFailureOrNot: none(),
          signInLoading: true,
        ));
        await _authParent
            .signInWithEmailAndPassword(
          email: event.email,
          password: event.password,
        )
            .then((failureOrNot) {
          emit(state.copyWith(
            signInLoading: false,
            authFailureOrNot: optionOf(failureOrNot),
          ));
        });
      },
      transformer: sequential(),
    );

    ///Register With Email And Password
    on<RegisterWithEmailAndPassword>(
      (event, emit) async {
        emit(state.copyWith(
          registerLoading: true,
          authFailureOrNot: none(),
        ));
        await _authParent
            .registerWithEmailAndPassword(
          email: event.email,
          password: event.password,
          userName: event.userName,
          sendVerification: (value) =>
              emit(state.copyWith(sendingVerification: value)),
        )
            .then((value) {
          emit(state.copyWith(
            registerLoading: false,
            sendingVerification: false,
            authFailureOrNot: optionOf(value),
          ));
        });
      },
      transformer: sequential(),
    );

    //Sign In With Google
    on<SignInWithGoogle>((event, emit) async {
      emit(state.copyWith(signInGoogleLoading: true));
      await _authParent
          .signInWithGoogle()
          .then((value) => state.copyWith(signInGoogleLoading: false));
    }, transformer: sequential());

    //Sign In With Phone Number
    /* on<SignInWithPhoneNumber>(
      (event, emit) async {
        emit(state.copyWith(
          signInLoading: true,
          authFailureOrNot: none(),
        ));
        await _authParent
            .signInWithPhoneNumber(
                phoneNumber: event.phoneNumber,
                password: event.password,
                sendPhoneCode: (
                    {required void Function(String) confirmCallback,
                    required bool sendPhoneCode}) {
                  ///Notify User To Input Phone Code
                  final callBackUiEventVisa = event.callbackToVerifyWithCode;
                  callBackUiEventVisa(
                      codeByUser: ({required String codeByUser}) async {
                    confirmCallback;
                  });
                })
            .then((value) => emit(state.copyWith(
                  signInPhoneLoading: false,
                  authFailureOrNot: optionOf(value),
                )));
      },
      transformer: sequential(),
    );*/
  }

  @override
  void onChange(Change<AuthState> change) {
    super.onChange(change);
  }

  @override
  void onTransition(Transition<AuthEvent, AuthState> transition) {
    super.onTransition(transition);
  }
}
