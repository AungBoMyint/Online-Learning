// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:cloud_firestore/cloud_firestore.dart' as _i4;
import 'package:firebase_auth/firebase_auth.dart' as _i3;
import 'package:firebase_storage/firebase_storage.dart' as _i5;
import 'package:get_it/get_it.dart' as _i1;
import 'package:google_sign_in/google_sign_in.dart' as _i6;
import 'package:injectable/injectable.dart' as _i2;

import 'application/auth/bloc/auth_bloc.dart' as _i12;
import 'application/data/data_bloc.dart' as _i13;
import 'application/provider/get_user_id.dart' as _i9;
import 'domain/auth/auth_parent.dart' as _i7;
import 'domain/function/firebase_function_parent.dart' as _i10;
import 'infrastructure/auth_implementation.dart' as _i8;
import 'infrastructure/function/firebase_function_implementation.dart' as _i11;
import 'register_module.dart' as _i14; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
_i1.GetIt $initGetIt(_i1.GetIt get,
    {String? environment, _i2.EnvironmentFilter? environmentFilter}) {
  final gh = _i2.GetItHelper(get, environment, environmentFilter);
  final registerModule = _$RegisterModule();
  gh.lazySingleton<_i3.FirebaseAuth>(() => registerModule.firebaseAuth);
  gh.lazySingleton<_i4.FirebaseFirestore>(
      () => registerModule.firebaseFirestore);
  gh.lazySingleton<_i5.FirebaseStorage>(() => registerModule.firebaseStorage);
  gh.lazySingleton<_i6.GoogleSignIn>(() => registerModule.googleSignIn);
  gh.lazySingleton<_i7.AuthParent>(() => _i8.AuthImplementation(
      get<_i3.FirebaseAuth>(),
      get<_i6.GoogleSignIn>(),
      get<_i4.FirebaseFirestore>()));
  gh.factory<_i9.CurrentUser>(() => _i9.CurrentUser(get<_i3.FirebaseAuth>()));
  gh.lazySingleton<_i10.FirebaseFunctionParent>(() =>
      _i11.FirebaseFunctionImplementation(
          get<_i4.FirebaseFirestore>(), get<_i5.FirebaseStorage>()));
  gh.factory<_i12.AuthBloc>(() => _i12.AuthBloc(get<_i7.AuthParent>()));
  gh.factory<_i13.DataBloc>(
      () => _i13.DataBloc(get<_i10.FirebaseFunctionParent>()));
  return get;
}

class _$RegisterModule extends _i14.RegisterModule {}
