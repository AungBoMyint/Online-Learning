import 'dart:async';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:online_learning/domain/auth/auth_failure.dart';
import 'package:online_learning/domain/json/user/user.dart';

abstract class AuthParent {
  Stream<User?> listenUserChange();
  Future<void> addCurrentUserToFirebaseFirestore({
    required UserModal? user,
  });
  Future<Either<AuthFailure, Unit>?> signInWithEmailAndPassword({
    required String email,
    required String password,
  });
  Future<Either<AuthFailure, Unit>> registerWithEmailAndPassword({
    required String email,
    required String password,
    required String userName,
    required Function(bool) sendVerification,
  });
  Future<Either<AuthFailure, Unit>> signInWithGoogle();
  Future<DocumentSnapshot?> getCurrentUserDocument({required String userId});
  Stream<DocumentSnapshot<UserModal>> listenCurrentUserDocument({
    required String userId,
  });

  /*Future<Either<AuthFailure, Unit>> signInWithPhoneNumber({
    required String phoneNumber,
    required String password,
    required void Function({
      required bool sendPhoneCode,
      required void Function(
        String phoneCode,
      )
          confirmCallback,
    })
        sendPhoneCode,
  });*/
}
