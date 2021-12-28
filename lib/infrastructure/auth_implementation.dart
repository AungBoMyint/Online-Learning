import 'dart:async';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/services.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:injectable/injectable.dart';
import 'package:online_learning/domain/auth/auth_failure.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:dartz/dartz.dart';
import 'package:online_learning/domain/auth/auth_parent.dart';
import 'package:online_learning/domain/json/user/user.dart';

@LazySingleton(as: AuthParent)
class AuthImplementation extends AuthParent {
  final FirebaseAuth _firebaseAuth;
  final GoogleSignIn _googleSignIn;
  final FirebaseFirestore _firebaseFirestore;
  AuthImplementation(
      this._firebaseAuth, this._googleSignIn, this._firebaseFirestore);

  ///Get User Change
  @override
  Stream<User?> listenUserChange() {
    return _firebaseAuth.userChanges();
  }

  @override
  Future<Either<AuthFailure, Unit>> registerWithEmailAndPassword({
    required String email,
    required String password,
    required String userName,
    required Function(bool) sendVerification,
  }) async {
    try {
      await _firebaseAuth
          .createUserWithEmailAndPassword(email: email, password: password)
          .then((userCredential) async {
        final user = userCredential.user;
        if (user != null) {
          user.updateDisplayName(userName);
          if (!user.emailVerified) {
            await user
                .sendEmailVerification()
                //Then we notify that we have send email
                .then((value) => sendVerification(true));
          }
        }
      });
      return const Right(unit);
    } on FirebaseAuthException catch (e) {
      if (e.code == 'weak-password') {
        return const Left(AuthFailure.weakPassword());
      } else if (e.code == 'email-already-in-use') {
        return const Left(AuthFailure.emailAlreadyInUse());
      } else if (e.code == 'invalid-email') {
        return const Left(AuthFailure.invalidEmail());
      } else {
        return const Left(AuthFailure.serverError());
      }
    }
  }

  @override
  Future<Either<AuthFailure, Unit>> signInWithEmailAndPassword(
      {required String email, required String password}) async {
    try {
      await _firebaseAuth.signInWithEmailAndPassword(
        email: email,
        password: password,
      );
      return const Right(unit);
    } on FirebaseAuthException catch (e) {
      switch (e.code) {
        case "invalid-email":
          return const Left(AuthFailure.invalidEmail());
        case "user-disabled":
          return const Left(AuthFailure.userDisabled());
        case "user-not-found":
          return const Left(AuthFailure.userNotFound());
        case "wrong-password":
          return const Left(AuthFailure.wrongPassword());
        default:
          return const Left(AuthFailure.serverError());
      }
    }
  }

  ///Sign In With Google
  @override
  Future<Either<AuthFailure, Unit>> signInWithGoogle() async {
    try {
      final GoogleSignInAccount? googleUser = await _googleSignIn.signIn();

      // Obtain the auth details from the request
      final GoogleSignInAuthentication? googleAuth =
          await googleUser?.authentication;

      // Create a new credential
      final credential = GoogleAuthProvider.credential(
        accessToken: googleAuth?.accessToken,
        idToken: googleAuth?.idToken,
      );

      // Once signed in, return the UserCredential
      return await FirebaseAuth.instance
          .signInWithCredential(credential)
          .then((value) {
        return const Right(unit);
      });
    } on PlatformException catch (e) {
      print("PlatformException: $e");
      return const Left(AuthFailure.cancelByUser());
    }
  }

  //Get Current User's Document
  @override
  Future<DocumentSnapshot?> getCurrentUserDocument(
      {required String userId}) async {
    return _firebaseFirestore.collection('users').doc(userId).get();
  }

  //Listen Current User Document Change
  @override
  Stream<DocumentSnapshot<UserModal>> listenCurrentUserDocument({
    required String userId,
  }) async* {
    yield* _firebaseFirestore
        .collection('users')
        .doc(userId)
        .withConverter<UserModal>(
          fromFirestore: (snapshot, _) => UserModal.fromJson(snapshot.data()!),
          toFirestore: (userModal, _) => userModal.toJson(),
        )
        .snapshots();
  }

  //Add Current User to 'user' Collection
  @override
  Future<void> addCurrentUserToFirebaseFirestore({
    required UserModal? user,
  }) async {
    final Map<String, dynamic> userJson = user!.toJson();
    await _firebaseFirestore.collection('users').doc(user.userId).set(userJson);
  }

  /*@override
  Future<Either<AuthFailure, Unit>> signInWithPhoneNumber({
    required String phoneNumber,
    required String password,
    required void Function({
      required bool sendPhoneCode,
      required void Function(String phoneCode) confirmCallback,
    })
        sendPhoneCode,
  }) async {
    final Completer _completer = Completer();
    await _firebaseAuth.verifyPhoneNumber(
      phoneNumber: phoneNumber,
      verificationCompleted: (PhoneAuthCredential credential) async {
        await _firebaseAuth
            .signInWithCredential(credential)
            .then((value) => _completer.complete(const Right(unit)));
      },
      verificationFailed: (FirebaseAuthException e) {
        if (e.code == 'invalid-phone-number') {
          _completer.complete(const Left(AuthFailure.invalidPhoneNumber()));
        }
      },
      codeSent: (String verificationId, int? resendToken) async {
        sendPhoneCode(
            sendPhoneCode: true,
            confirmCallback: (String phoneCode) async {
              PhoneAuthCredential phoneAuthCredential =
                  PhoneAuthProvider.credential(
                      verificationId: verificationId, smsCode: phoneCode);
              //Sign In
              await _firebaseAuth
                  .signInWithCredential(phoneAuthCredential)
                  .then((value) => _completer.complete(const Right(unit)));
            });
      },
      codeAutoRetrievalTimeout: (String verificationId) {},
    );

    return _completer.future.then((value) => value);
  }*/
}
