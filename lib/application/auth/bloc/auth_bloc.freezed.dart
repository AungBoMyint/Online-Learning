// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'auth_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$AuthEventTearOff {
  const _$AuthEventTearOff();

  CheckUserAuthenticatedState checkUserAuthenticatedState() {
    return const CheckUserAuthenticatedState();
  }

  UserAuthenticatedOrNot userAuthenticatedOrNot(
      {required bool userAuthenticatedOrNot}) {
    return UserAuthenticatedOrNot(
      userAuthenticatedOrNot: userAuthenticatedOrNot,
    );
  }

  SignInWithEmailAndPassword singInWithEmailAndPassword(
      {required String email, required String password}) {
    return SignInWithEmailAndPassword(
      email: email,
      password: password,
    );
  }

  RegisterWithEmailAndPassword registerWithEmailAndPassword(
      {required String email,
      required String password,
      required String userName}) {
    return RegisterWithEmailAndPassword(
      email: email,
      password: password,
      userName: userName,
    );
  }

  SignInWithPhoneNumber signInWithPhoneNumber(
      {required String phoneNumber,
      required String password,
      required Future<void> Function(
              {required Future<void> Function({required String codeByUser})
                  codeByUser})
          callbackToVerifyWithCode}) {
    return SignInWithPhoneNumber(
      phoneNumber: phoneNumber,
      password: password,
      callbackToVerifyWithCode: callbackToVerifyWithCode,
    );
  }

  SignInWithGoogle signInWithGoogle() {
    return const SignInWithGoogle();
  }

  ListenCurrentUserDocumentChange listenCurrentUserDocumentChange(
      {required String docId}) {
    return ListenCurrentUserDocumentChange(
      docId: docId,
    );
  }

  EventToEmitUserDocumentChange eventToEmitUserDocumentChange(
      {required UserModal userModal}) {
    return EventToEmitUserDocumentChange(
      userModal: userModal,
    );
  }
}

/// @nodoc
const $AuthEvent = _$AuthEventTearOff();

/// @nodoc
mixin _$AuthEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() checkUserAuthenticatedState,
    required TResult Function(bool userAuthenticatedOrNot)
        userAuthenticatedOrNot,
    required TResult Function(String email, String password)
        singInWithEmailAndPassword,
    required TResult Function(String email, String password, String userName)
        registerWithEmailAndPassword,
    required TResult Function(
            String phoneNumber,
            String password,
            Future<void> Function(
                    {required Future<void> Function(
                            {required String codeByUser})
                        codeByUser})
                callbackToVerifyWithCode)
        signInWithPhoneNumber,
    required TResult Function() signInWithGoogle,
    required TResult Function(String docId) listenCurrentUserDocumentChange,
    required TResult Function(UserModal userModal)
        eventToEmitUserDocumentChange,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? checkUserAuthenticatedState,
    TResult Function(bool userAuthenticatedOrNot)? userAuthenticatedOrNot,
    TResult Function(String email, String password)? singInWithEmailAndPassword,
    TResult Function(String email, String password, String userName)?
        registerWithEmailAndPassword,
    TResult Function(
            String phoneNumber,
            String password,
            Future<void> Function(
                    {required Future<void> Function(
                            {required String codeByUser})
                        codeByUser})
                callbackToVerifyWithCode)?
        signInWithPhoneNumber,
    TResult Function()? signInWithGoogle,
    TResult Function(String docId)? listenCurrentUserDocumentChange,
    TResult Function(UserModal userModal)? eventToEmitUserDocumentChange,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? checkUserAuthenticatedState,
    TResult Function(bool userAuthenticatedOrNot)? userAuthenticatedOrNot,
    TResult Function(String email, String password)? singInWithEmailAndPassword,
    TResult Function(String email, String password, String userName)?
        registerWithEmailAndPassword,
    TResult Function(
            String phoneNumber,
            String password,
            Future<void> Function(
                    {required Future<void> Function(
                            {required String codeByUser})
                        codeByUser})
                callbackToVerifyWithCode)?
        signInWithPhoneNumber,
    TResult Function()? signInWithGoogle,
    TResult Function(String docId)? listenCurrentUserDocumentChange,
    TResult Function(UserModal userModal)? eventToEmitUserDocumentChange,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CheckUserAuthenticatedState value)
        checkUserAuthenticatedState,
    required TResult Function(UserAuthenticatedOrNot value)
        userAuthenticatedOrNot,
    required TResult Function(SignInWithEmailAndPassword value)
        singInWithEmailAndPassword,
    required TResult Function(RegisterWithEmailAndPassword value)
        registerWithEmailAndPassword,
    required TResult Function(SignInWithPhoneNumber value)
        signInWithPhoneNumber,
    required TResult Function(SignInWithGoogle value) signInWithGoogle,
    required TResult Function(ListenCurrentUserDocumentChange value)
        listenCurrentUserDocumentChange,
    required TResult Function(EventToEmitUserDocumentChange value)
        eventToEmitUserDocumentChange,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(CheckUserAuthenticatedState value)?
        checkUserAuthenticatedState,
    TResult Function(UserAuthenticatedOrNot value)? userAuthenticatedOrNot,
    TResult Function(SignInWithEmailAndPassword value)?
        singInWithEmailAndPassword,
    TResult Function(RegisterWithEmailAndPassword value)?
        registerWithEmailAndPassword,
    TResult Function(SignInWithPhoneNumber value)? signInWithPhoneNumber,
    TResult Function(SignInWithGoogle value)? signInWithGoogle,
    TResult Function(ListenCurrentUserDocumentChange value)?
        listenCurrentUserDocumentChange,
    TResult Function(EventToEmitUserDocumentChange value)?
        eventToEmitUserDocumentChange,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CheckUserAuthenticatedState value)?
        checkUserAuthenticatedState,
    TResult Function(UserAuthenticatedOrNot value)? userAuthenticatedOrNot,
    TResult Function(SignInWithEmailAndPassword value)?
        singInWithEmailAndPassword,
    TResult Function(RegisterWithEmailAndPassword value)?
        registerWithEmailAndPassword,
    TResult Function(SignInWithPhoneNumber value)? signInWithPhoneNumber,
    TResult Function(SignInWithGoogle value)? signInWithGoogle,
    TResult Function(ListenCurrentUserDocumentChange value)?
        listenCurrentUserDocumentChange,
    TResult Function(EventToEmitUserDocumentChange value)?
        eventToEmitUserDocumentChange,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthEventCopyWith<$Res> {
  factory $AuthEventCopyWith(AuthEvent value, $Res Function(AuthEvent) then) =
      _$AuthEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$AuthEventCopyWithImpl<$Res> implements $AuthEventCopyWith<$Res> {
  _$AuthEventCopyWithImpl(this._value, this._then);

  final AuthEvent _value;
  // ignore: unused_field
  final $Res Function(AuthEvent) _then;
}

/// @nodoc
abstract class $CheckUserAuthenticatedStateCopyWith<$Res> {
  factory $CheckUserAuthenticatedStateCopyWith(
          CheckUserAuthenticatedState value,
          $Res Function(CheckUserAuthenticatedState) then) =
      _$CheckUserAuthenticatedStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$CheckUserAuthenticatedStateCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res>
    implements $CheckUserAuthenticatedStateCopyWith<$Res> {
  _$CheckUserAuthenticatedStateCopyWithImpl(CheckUserAuthenticatedState _value,
      $Res Function(CheckUserAuthenticatedState) _then)
      : super(_value, (v) => _then(v as CheckUserAuthenticatedState));

  @override
  CheckUserAuthenticatedState get _value =>
      super._value as CheckUserAuthenticatedState;
}

/// @nodoc

class _$CheckUserAuthenticatedState implements CheckUserAuthenticatedState {
  const _$CheckUserAuthenticatedState();

  @override
  String toString() {
    return 'AuthEvent.checkUserAuthenticatedState()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is CheckUserAuthenticatedState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() checkUserAuthenticatedState,
    required TResult Function(bool userAuthenticatedOrNot)
        userAuthenticatedOrNot,
    required TResult Function(String email, String password)
        singInWithEmailAndPassword,
    required TResult Function(String email, String password, String userName)
        registerWithEmailAndPassword,
    required TResult Function(
            String phoneNumber,
            String password,
            Future<void> Function(
                    {required Future<void> Function(
                            {required String codeByUser})
                        codeByUser})
                callbackToVerifyWithCode)
        signInWithPhoneNumber,
    required TResult Function() signInWithGoogle,
    required TResult Function(String docId) listenCurrentUserDocumentChange,
    required TResult Function(UserModal userModal)
        eventToEmitUserDocumentChange,
  }) {
    return checkUserAuthenticatedState();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? checkUserAuthenticatedState,
    TResult Function(bool userAuthenticatedOrNot)? userAuthenticatedOrNot,
    TResult Function(String email, String password)? singInWithEmailAndPassword,
    TResult Function(String email, String password, String userName)?
        registerWithEmailAndPassword,
    TResult Function(
            String phoneNumber,
            String password,
            Future<void> Function(
                    {required Future<void> Function(
                            {required String codeByUser})
                        codeByUser})
                callbackToVerifyWithCode)?
        signInWithPhoneNumber,
    TResult Function()? signInWithGoogle,
    TResult Function(String docId)? listenCurrentUserDocumentChange,
    TResult Function(UserModal userModal)? eventToEmitUserDocumentChange,
  }) {
    return checkUserAuthenticatedState?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? checkUserAuthenticatedState,
    TResult Function(bool userAuthenticatedOrNot)? userAuthenticatedOrNot,
    TResult Function(String email, String password)? singInWithEmailAndPassword,
    TResult Function(String email, String password, String userName)?
        registerWithEmailAndPassword,
    TResult Function(
            String phoneNumber,
            String password,
            Future<void> Function(
                    {required Future<void> Function(
                            {required String codeByUser})
                        codeByUser})
                callbackToVerifyWithCode)?
        signInWithPhoneNumber,
    TResult Function()? signInWithGoogle,
    TResult Function(String docId)? listenCurrentUserDocumentChange,
    TResult Function(UserModal userModal)? eventToEmitUserDocumentChange,
    required TResult orElse(),
  }) {
    if (checkUserAuthenticatedState != null) {
      return checkUserAuthenticatedState();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CheckUserAuthenticatedState value)
        checkUserAuthenticatedState,
    required TResult Function(UserAuthenticatedOrNot value)
        userAuthenticatedOrNot,
    required TResult Function(SignInWithEmailAndPassword value)
        singInWithEmailAndPassword,
    required TResult Function(RegisterWithEmailAndPassword value)
        registerWithEmailAndPassword,
    required TResult Function(SignInWithPhoneNumber value)
        signInWithPhoneNumber,
    required TResult Function(SignInWithGoogle value) signInWithGoogle,
    required TResult Function(ListenCurrentUserDocumentChange value)
        listenCurrentUserDocumentChange,
    required TResult Function(EventToEmitUserDocumentChange value)
        eventToEmitUserDocumentChange,
  }) {
    return checkUserAuthenticatedState(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(CheckUserAuthenticatedState value)?
        checkUserAuthenticatedState,
    TResult Function(UserAuthenticatedOrNot value)? userAuthenticatedOrNot,
    TResult Function(SignInWithEmailAndPassword value)?
        singInWithEmailAndPassword,
    TResult Function(RegisterWithEmailAndPassword value)?
        registerWithEmailAndPassword,
    TResult Function(SignInWithPhoneNumber value)? signInWithPhoneNumber,
    TResult Function(SignInWithGoogle value)? signInWithGoogle,
    TResult Function(ListenCurrentUserDocumentChange value)?
        listenCurrentUserDocumentChange,
    TResult Function(EventToEmitUserDocumentChange value)?
        eventToEmitUserDocumentChange,
  }) {
    return checkUserAuthenticatedState?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CheckUserAuthenticatedState value)?
        checkUserAuthenticatedState,
    TResult Function(UserAuthenticatedOrNot value)? userAuthenticatedOrNot,
    TResult Function(SignInWithEmailAndPassword value)?
        singInWithEmailAndPassword,
    TResult Function(RegisterWithEmailAndPassword value)?
        registerWithEmailAndPassword,
    TResult Function(SignInWithPhoneNumber value)? signInWithPhoneNumber,
    TResult Function(SignInWithGoogle value)? signInWithGoogle,
    TResult Function(ListenCurrentUserDocumentChange value)?
        listenCurrentUserDocumentChange,
    TResult Function(EventToEmitUserDocumentChange value)?
        eventToEmitUserDocumentChange,
    required TResult orElse(),
  }) {
    if (checkUserAuthenticatedState != null) {
      return checkUserAuthenticatedState(this);
    }
    return orElse();
  }
}

abstract class CheckUserAuthenticatedState implements AuthEvent {
  const factory CheckUserAuthenticatedState() = _$CheckUserAuthenticatedState;
}

/// @nodoc
abstract class $UserAuthenticatedOrNotCopyWith<$Res> {
  factory $UserAuthenticatedOrNotCopyWith(UserAuthenticatedOrNot value,
          $Res Function(UserAuthenticatedOrNot) then) =
      _$UserAuthenticatedOrNotCopyWithImpl<$Res>;
  $Res call({bool userAuthenticatedOrNot});
}

/// @nodoc
class _$UserAuthenticatedOrNotCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res>
    implements $UserAuthenticatedOrNotCopyWith<$Res> {
  _$UserAuthenticatedOrNotCopyWithImpl(UserAuthenticatedOrNot _value,
      $Res Function(UserAuthenticatedOrNot) _then)
      : super(_value, (v) => _then(v as UserAuthenticatedOrNot));

  @override
  UserAuthenticatedOrNot get _value => super._value as UserAuthenticatedOrNot;

  @override
  $Res call({
    Object? userAuthenticatedOrNot = freezed,
  }) {
    return _then(UserAuthenticatedOrNot(
      userAuthenticatedOrNot: userAuthenticatedOrNot == freezed
          ? _value.userAuthenticatedOrNot
          : userAuthenticatedOrNot // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$UserAuthenticatedOrNot implements UserAuthenticatedOrNot {
  const _$UserAuthenticatedOrNot({required this.userAuthenticatedOrNot});

  @override
  final bool userAuthenticatedOrNot;

  @override
  String toString() {
    return 'AuthEvent.userAuthenticatedOrNot(userAuthenticatedOrNot: $userAuthenticatedOrNot)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is UserAuthenticatedOrNot &&
            (identical(other.userAuthenticatedOrNot, userAuthenticatedOrNot) ||
                other.userAuthenticatedOrNot == userAuthenticatedOrNot));
  }

  @override
  int get hashCode => Object.hash(runtimeType, userAuthenticatedOrNot);

  @JsonKey(ignore: true)
  @override
  $UserAuthenticatedOrNotCopyWith<UserAuthenticatedOrNot> get copyWith =>
      _$UserAuthenticatedOrNotCopyWithImpl<UserAuthenticatedOrNot>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() checkUserAuthenticatedState,
    required TResult Function(bool userAuthenticatedOrNot)
        userAuthenticatedOrNot,
    required TResult Function(String email, String password)
        singInWithEmailAndPassword,
    required TResult Function(String email, String password, String userName)
        registerWithEmailAndPassword,
    required TResult Function(
            String phoneNumber,
            String password,
            Future<void> Function(
                    {required Future<void> Function(
                            {required String codeByUser})
                        codeByUser})
                callbackToVerifyWithCode)
        signInWithPhoneNumber,
    required TResult Function() signInWithGoogle,
    required TResult Function(String docId) listenCurrentUserDocumentChange,
    required TResult Function(UserModal userModal)
        eventToEmitUserDocumentChange,
  }) {
    return userAuthenticatedOrNot(this.userAuthenticatedOrNot);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? checkUserAuthenticatedState,
    TResult Function(bool userAuthenticatedOrNot)? userAuthenticatedOrNot,
    TResult Function(String email, String password)? singInWithEmailAndPassword,
    TResult Function(String email, String password, String userName)?
        registerWithEmailAndPassword,
    TResult Function(
            String phoneNumber,
            String password,
            Future<void> Function(
                    {required Future<void> Function(
                            {required String codeByUser})
                        codeByUser})
                callbackToVerifyWithCode)?
        signInWithPhoneNumber,
    TResult Function()? signInWithGoogle,
    TResult Function(String docId)? listenCurrentUserDocumentChange,
    TResult Function(UserModal userModal)? eventToEmitUserDocumentChange,
  }) {
    return userAuthenticatedOrNot?.call(this.userAuthenticatedOrNot);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? checkUserAuthenticatedState,
    TResult Function(bool userAuthenticatedOrNot)? userAuthenticatedOrNot,
    TResult Function(String email, String password)? singInWithEmailAndPassword,
    TResult Function(String email, String password, String userName)?
        registerWithEmailAndPassword,
    TResult Function(
            String phoneNumber,
            String password,
            Future<void> Function(
                    {required Future<void> Function(
                            {required String codeByUser})
                        codeByUser})
                callbackToVerifyWithCode)?
        signInWithPhoneNumber,
    TResult Function()? signInWithGoogle,
    TResult Function(String docId)? listenCurrentUserDocumentChange,
    TResult Function(UserModal userModal)? eventToEmitUserDocumentChange,
    required TResult orElse(),
  }) {
    if (userAuthenticatedOrNot != null) {
      return userAuthenticatedOrNot(this.userAuthenticatedOrNot);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CheckUserAuthenticatedState value)
        checkUserAuthenticatedState,
    required TResult Function(UserAuthenticatedOrNot value)
        userAuthenticatedOrNot,
    required TResult Function(SignInWithEmailAndPassword value)
        singInWithEmailAndPassword,
    required TResult Function(RegisterWithEmailAndPassword value)
        registerWithEmailAndPassword,
    required TResult Function(SignInWithPhoneNumber value)
        signInWithPhoneNumber,
    required TResult Function(SignInWithGoogle value) signInWithGoogle,
    required TResult Function(ListenCurrentUserDocumentChange value)
        listenCurrentUserDocumentChange,
    required TResult Function(EventToEmitUserDocumentChange value)
        eventToEmitUserDocumentChange,
  }) {
    return userAuthenticatedOrNot(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(CheckUserAuthenticatedState value)?
        checkUserAuthenticatedState,
    TResult Function(UserAuthenticatedOrNot value)? userAuthenticatedOrNot,
    TResult Function(SignInWithEmailAndPassword value)?
        singInWithEmailAndPassword,
    TResult Function(RegisterWithEmailAndPassword value)?
        registerWithEmailAndPassword,
    TResult Function(SignInWithPhoneNumber value)? signInWithPhoneNumber,
    TResult Function(SignInWithGoogle value)? signInWithGoogle,
    TResult Function(ListenCurrentUserDocumentChange value)?
        listenCurrentUserDocumentChange,
    TResult Function(EventToEmitUserDocumentChange value)?
        eventToEmitUserDocumentChange,
  }) {
    return userAuthenticatedOrNot?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CheckUserAuthenticatedState value)?
        checkUserAuthenticatedState,
    TResult Function(UserAuthenticatedOrNot value)? userAuthenticatedOrNot,
    TResult Function(SignInWithEmailAndPassword value)?
        singInWithEmailAndPassword,
    TResult Function(RegisterWithEmailAndPassword value)?
        registerWithEmailAndPassword,
    TResult Function(SignInWithPhoneNumber value)? signInWithPhoneNumber,
    TResult Function(SignInWithGoogle value)? signInWithGoogle,
    TResult Function(ListenCurrentUserDocumentChange value)?
        listenCurrentUserDocumentChange,
    TResult Function(EventToEmitUserDocumentChange value)?
        eventToEmitUserDocumentChange,
    required TResult orElse(),
  }) {
    if (userAuthenticatedOrNot != null) {
      return userAuthenticatedOrNot(this);
    }
    return orElse();
  }
}

abstract class UserAuthenticatedOrNot implements AuthEvent {
  const factory UserAuthenticatedOrNot({required bool userAuthenticatedOrNot}) =
      _$UserAuthenticatedOrNot;

  bool get userAuthenticatedOrNot;
  @JsonKey(ignore: true)
  $UserAuthenticatedOrNotCopyWith<UserAuthenticatedOrNot> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SignInWithEmailAndPasswordCopyWith<$Res> {
  factory $SignInWithEmailAndPasswordCopyWith(SignInWithEmailAndPassword value,
          $Res Function(SignInWithEmailAndPassword) then) =
      _$SignInWithEmailAndPasswordCopyWithImpl<$Res>;
  $Res call({String email, String password});
}

/// @nodoc
class _$SignInWithEmailAndPasswordCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res>
    implements $SignInWithEmailAndPasswordCopyWith<$Res> {
  _$SignInWithEmailAndPasswordCopyWithImpl(SignInWithEmailAndPassword _value,
      $Res Function(SignInWithEmailAndPassword) _then)
      : super(_value, (v) => _then(v as SignInWithEmailAndPassword));

  @override
  SignInWithEmailAndPassword get _value =>
      super._value as SignInWithEmailAndPassword;

  @override
  $Res call({
    Object? email = freezed,
    Object? password = freezed,
  }) {
    return _then(SignInWithEmailAndPassword(
      email: email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      password: password == freezed
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$SignInWithEmailAndPassword implements SignInWithEmailAndPassword {
  const _$SignInWithEmailAndPassword(
      {required this.email, required this.password});

  @override
  final String email;
  @override
  final String password;

  @override
  String toString() {
    return 'AuthEvent.singInWithEmailAndPassword(email: $email, password: $password)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is SignInWithEmailAndPassword &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.password, password) ||
                other.password == password));
  }

  @override
  int get hashCode => Object.hash(runtimeType, email, password);

  @JsonKey(ignore: true)
  @override
  $SignInWithEmailAndPasswordCopyWith<SignInWithEmailAndPassword>
      get copyWith =>
          _$SignInWithEmailAndPasswordCopyWithImpl<SignInWithEmailAndPassword>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() checkUserAuthenticatedState,
    required TResult Function(bool userAuthenticatedOrNot)
        userAuthenticatedOrNot,
    required TResult Function(String email, String password)
        singInWithEmailAndPassword,
    required TResult Function(String email, String password, String userName)
        registerWithEmailAndPassword,
    required TResult Function(
            String phoneNumber,
            String password,
            Future<void> Function(
                    {required Future<void> Function(
                            {required String codeByUser})
                        codeByUser})
                callbackToVerifyWithCode)
        signInWithPhoneNumber,
    required TResult Function() signInWithGoogle,
    required TResult Function(String docId) listenCurrentUserDocumentChange,
    required TResult Function(UserModal userModal)
        eventToEmitUserDocumentChange,
  }) {
    return singInWithEmailAndPassword(email, password);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? checkUserAuthenticatedState,
    TResult Function(bool userAuthenticatedOrNot)? userAuthenticatedOrNot,
    TResult Function(String email, String password)? singInWithEmailAndPassword,
    TResult Function(String email, String password, String userName)?
        registerWithEmailAndPassword,
    TResult Function(
            String phoneNumber,
            String password,
            Future<void> Function(
                    {required Future<void> Function(
                            {required String codeByUser})
                        codeByUser})
                callbackToVerifyWithCode)?
        signInWithPhoneNumber,
    TResult Function()? signInWithGoogle,
    TResult Function(String docId)? listenCurrentUserDocumentChange,
    TResult Function(UserModal userModal)? eventToEmitUserDocumentChange,
  }) {
    return singInWithEmailAndPassword?.call(email, password);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? checkUserAuthenticatedState,
    TResult Function(bool userAuthenticatedOrNot)? userAuthenticatedOrNot,
    TResult Function(String email, String password)? singInWithEmailAndPassword,
    TResult Function(String email, String password, String userName)?
        registerWithEmailAndPassword,
    TResult Function(
            String phoneNumber,
            String password,
            Future<void> Function(
                    {required Future<void> Function(
                            {required String codeByUser})
                        codeByUser})
                callbackToVerifyWithCode)?
        signInWithPhoneNumber,
    TResult Function()? signInWithGoogle,
    TResult Function(String docId)? listenCurrentUserDocumentChange,
    TResult Function(UserModal userModal)? eventToEmitUserDocumentChange,
    required TResult orElse(),
  }) {
    if (singInWithEmailAndPassword != null) {
      return singInWithEmailAndPassword(email, password);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CheckUserAuthenticatedState value)
        checkUserAuthenticatedState,
    required TResult Function(UserAuthenticatedOrNot value)
        userAuthenticatedOrNot,
    required TResult Function(SignInWithEmailAndPassword value)
        singInWithEmailAndPassword,
    required TResult Function(RegisterWithEmailAndPassword value)
        registerWithEmailAndPassword,
    required TResult Function(SignInWithPhoneNumber value)
        signInWithPhoneNumber,
    required TResult Function(SignInWithGoogle value) signInWithGoogle,
    required TResult Function(ListenCurrentUserDocumentChange value)
        listenCurrentUserDocumentChange,
    required TResult Function(EventToEmitUserDocumentChange value)
        eventToEmitUserDocumentChange,
  }) {
    return singInWithEmailAndPassword(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(CheckUserAuthenticatedState value)?
        checkUserAuthenticatedState,
    TResult Function(UserAuthenticatedOrNot value)? userAuthenticatedOrNot,
    TResult Function(SignInWithEmailAndPassword value)?
        singInWithEmailAndPassword,
    TResult Function(RegisterWithEmailAndPassword value)?
        registerWithEmailAndPassword,
    TResult Function(SignInWithPhoneNumber value)? signInWithPhoneNumber,
    TResult Function(SignInWithGoogle value)? signInWithGoogle,
    TResult Function(ListenCurrentUserDocumentChange value)?
        listenCurrentUserDocumentChange,
    TResult Function(EventToEmitUserDocumentChange value)?
        eventToEmitUserDocumentChange,
  }) {
    return singInWithEmailAndPassword?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CheckUserAuthenticatedState value)?
        checkUserAuthenticatedState,
    TResult Function(UserAuthenticatedOrNot value)? userAuthenticatedOrNot,
    TResult Function(SignInWithEmailAndPassword value)?
        singInWithEmailAndPassword,
    TResult Function(RegisterWithEmailAndPassword value)?
        registerWithEmailAndPassword,
    TResult Function(SignInWithPhoneNumber value)? signInWithPhoneNumber,
    TResult Function(SignInWithGoogle value)? signInWithGoogle,
    TResult Function(ListenCurrentUserDocumentChange value)?
        listenCurrentUserDocumentChange,
    TResult Function(EventToEmitUserDocumentChange value)?
        eventToEmitUserDocumentChange,
    required TResult orElse(),
  }) {
    if (singInWithEmailAndPassword != null) {
      return singInWithEmailAndPassword(this);
    }
    return orElse();
  }
}

abstract class SignInWithEmailAndPassword implements AuthEvent {
  const factory SignInWithEmailAndPassword(
      {required String email,
      required String password}) = _$SignInWithEmailAndPassword;

  String get email;
  String get password;
  @JsonKey(ignore: true)
  $SignInWithEmailAndPasswordCopyWith<SignInWithEmailAndPassword>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RegisterWithEmailAndPasswordCopyWith<$Res> {
  factory $RegisterWithEmailAndPasswordCopyWith(
          RegisterWithEmailAndPassword value,
          $Res Function(RegisterWithEmailAndPassword) then) =
      _$RegisterWithEmailAndPasswordCopyWithImpl<$Res>;
  $Res call({String email, String password, String userName});
}

/// @nodoc
class _$RegisterWithEmailAndPasswordCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res>
    implements $RegisterWithEmailAndPasswordCopyWith<$Res> {
  _$RegisterWithEmailAndPasswordCopyWithImpl(
      RegisterWithEmailAndPassword _value,
      $Res Function(RegisterWithEmailAndPassword) _then)
      : super(_value, (v) => _then(v as RegisterWithEmailAndPassword));

  @override
  RegisterWithEmailAndPassword get _value =>
      super._value as RegisterWithEmailAndPassword;

  @override
  $Res call({
    Object? email = freezed,
    Object? password = freezed,
    Object? userName = freezed,
  }) {
    return _then(RegisterWithEmailAndPassword(
      email: email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      password: password == freezed
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
      userName: userName == freezed
          ? _value.userName
          : userName // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$RegisterWithEmailAndPassword implements RegisterWithEmailAndPassword {
  const _$RegisterWithEmailAndPassword(
      {required this.email, required this.password, required this.userName});

  @override
  final String email;
  @override
  final String password;
  @override
  final String userName;

  @override
  String toString() {
    return 'AuthEvent.registerWithEmailAndPassword(email: $email, password: $password, userName: $userName)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is RegisterWithEmailAndPassword &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.password, password) ||
                other.password == password) &&
            (identical(other.userName, userName) ||
                other.userName == userName));
  }

  @override
  int get hashCode => Object.hash(runtimeType, email, password, userName);

  @JsonKey(ignore: true)
  @override
  $RegisterWithEmailAndPasswordCopyWith<RegisterWithEmailAndPassword>
      get copyWith => _$RegisterWithEmailAndPasswordCopyWithImpl<
          RegisterWithEmailAndPassword>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() checkUserAuthenticatedState,
    required TResult Function(bool userAuthenticatedOrNot)
        userAuthenticatedOrNot,
    required TResult Function(String email, String password)
        singInWithEmailAndPassword,
    required TResult Function(String email, String password, String userName)
        registerWithEmailAndPassword,
    required TResult Function(
            String phoneNumber,
            String password,
            Future<void> Function(
                    {required Future<void> Function(
                            {required String codeByUser})
                        codeByUser})
                callbackToVerifyWithCode)
        signInWithPhoneNumber,
    required TResult Function() signInWithGoogle,
    required TResult Function(String docId) listenCurrentUserDocumentChange,
    required TResult Function(UserModal userModal)
        eventToEmitUserDocumentChange,
  }) {
    return registerWithEmailAndPassword(email, password, userName);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? checkUserAuthenticatedState,
    TResult Function(bool userAuthenticatedOrNot)? userAuthenticatedOrNot,
    TResult Function(String email, String password)? singInWithEmailAndPassword,
    TResult Function(String email, String password, String userName)?
        registerWithEmailAndPassword,
    TResult Function(
            String phoneNumber,
            String password,
            Future<void> Function(
                    {required Future<void> Function(
                            {required String codeByUser})
                        codeByUser})
                callbackToVerifyWithCode)?
        signInWithPhoneNumber,
    TResult Function()? signInWithGoogle,
    TResult Function(String docId)? listenCurrentUserDocumentChange,
    TResult Function(UserModal userModal)? eventToEmitUserDocumentChange,
  }) {
    return registerWithEmailAndPassword?.call(email, password, userName);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? checkUserAuthenticatedState,
    TResult Function(bool userAuthenticatedOrNot)? userAuthenticatedOrNot,
    TResult Function(String email, String password)? singInWithEmailAndPassword,
    TResult Function(String email, String password, String userName)?
        registerWithEmailAndPassword,
    TResult Function(
            String phoneNumber,
            String password,
            Future<void> Function(
                    {required Future<void> Function(
                            {required String codeByUser})
                        codeByUser})
                callbackToVerifyWithCode)?
        signInWithPhoneNumber,
    TResult Function()? signInWithGoogle,
    TResult Function(String docId)? listenCurrentUserDocumentChange,
    TResult Function(UserModal userModal)? eventToEmitUserDocumentChange,
    required TResult orElse(),
  }) {
    if (registerWithEmailAndPassword != null) {
      return registerWithEmailAndPassword(email, password, userName);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CheckUserAuthenticatedState value)
        checkUserAuthenticatedState,
    required TResult Function(UserAuthenticatedOrNot value)
        userAuthenticatedOrNot,
    required TResult Function(SignInWithEmailAndPassword value)
        singInWithEmailAndPassword,
    required TResult Function(RegisterWithEmailAndPassword value)
        registerWithEmailAndPassword,
    required TResult Function(SignInWithPhoneNumber value)
        signInWithPhoneNumber,
    required TResult Function(SignInWithGoogle value) signInWithGoogle,
    required TResult Function(ListenCurrentUserDocumentChange value)
        listenCurrentUserDocumentChange,
    required TResult Function(EventToEmitUserDocumentChange value)
        eventToEmitUserDocumentChange,
  }) {
    return registerWithEmailAndPassword(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(CheckUserAuthenticatedState value)?
        checkUserAuthenticatedState,
    TResult Function(UserAuthenticatedOrNot value)? userAuthenticatedOrNot,
    TResult Function(SignInWithEmailAndPassword value)?
        singInWithEmailAndPassword,
    TResult Function(RegisterWithEmailAndPassword value)?
        registerWithEmailAndPassword,
    TResult Function(SignInWithPhoneNumber value)? signInWithPhoneNumber,
    TResult Function(SignInWithGoogle value)? signInWithGoogle,
    TResult Function(ListenCurrentUserDocumentChange value)?
        listenCurrentUserDocumentChange,
    TResult Function(EventToEmitUserDocumentChange value)?
        eventToEmitUserDocumentChange,
  }) {
    return registerWithEmailAndPassword?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CheckUserAuthenticatedState value)?
        checkUserAuthenticatedState,
    TResult Function(UserAuthenticatedOrNot value)? userAuthenticatedOrNot,
    TResult Function(SignInWithEmailAndPassword value)?
        singInWithEmailAndPassword,
    TResult Function(RegisterWithEmailAndPassword value)?
        registerWithEmailAndPassword,
    TResult Function(SignInWithPhoneNumber value)? signInWithPhoneNumber,
    TResult Function(SignInWithGoogle value)? signInWithGoogle,
    TResult Function(ListenCurrentUserDocumentChange value)?
        listenCurrentUserDocumentChange,
    TResult Function(EventToEmitUserDocumentChange value)?
        eventToEmitUserDocumentChange,
    required TResult orElse(),
  }) {
    if (registerWithEmailAndPassword != null) {
      return registerWithEmailAndPassword(this);
    }
    return orElse();
  }
}

abstract class RegisterWithEmailAndPassword implements AuthEvent {
  const factory RegisterWithEmailAndPassword(
      {required String email,
      required String password,
      required String userName}) = _$RegisterWithEmailAndPassword;

  String get email;
  String get password;
  String get userName;
  @JsonKey(ignore: true)
  $RegisterWithEmailAndPasswordCopyWith<RegisterWithEmailAndPassword>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SignInWithPhoneNumberCopyWith<$Res> {
  factory $SignInWithPhoneNumberCopyWith(SignInWithPhoneNumber value,
          $Res Function(SignInWithPhoneNumber) then) =
      _$SignInWithPhoneNumberCopyWithImpl<$Res>;
  $Res call(
      {String phoneNumber,
      String password,
      Future<void> Function(
              {required Future<void> Function({required String codeByUser})
                  codeByUser})
          callbackToVerifyWithCode});
}

/// @nodoc
class _$SignInWithPhoneNumberCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res>
    implements $SignInWithPhoneNumberCopyWith<$Res> {
  _$SignInWithPhoneNumberCopyWithImpl(
      SignInWithPhoneNumber _value, $Res Function(SignInWithPhoneNumber) _then)
      : super(_value, (v) => _then(v as SignInWithPhoneNumber));

  @override
  SignInWithPhoneNumber get _value => super._value as SignInWithPhoneNumber;

  @override
  $Res call({
    Object? phoneNumber = freezed,
    Object? password = freezed,
    Object? callbackToVerifyWithCode = freezed,
  }) {
    return _then(SignInWithPhoneNumber(
      phoneNumber: phoneNumber == freezed
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String,
      password: password == freezed
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
      callbackToVerifyWithCode: callbackToVerifyWithCode == freezed
          ? _value.callbackToVerifyWithCode
          : callbackToVerifyWithCode // ignore: cast_nullable_to_non_nullable
              as Future<void> Function(
                  {required Future<void> Function({required String codeByUser})
                      codeByUser}),
    ));
  }
}

/// @nodoc

class _$SignInWithPhoneNumber implements SignInWithPhoneNumber {
  const _$SignInWithPhoneNumber(
      {required this.phoneNumber,
      required this.password,
      required this.callbackToVerifyWithCode});

  @override
  final String phoneNumber;
  @override
  final String password;
  @override
  final Future<void> Function(
      {required Future<void> Function({required String codeByUser})
          codeByUser}) callbackToVerifyWithCode;

  @override
  String toString() {
    return 'AuthEvent.signInWithPhoneNumber(phoneNumber: $phoneNumber, password: $password, callbackToVerifyWithCode: $callbackToVerifyWithCode)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is SignInWithPhoneNumber &&
            (identical(other.phoneNumber, phoneNumber) ||
                other.phoneNumber == phoneNumber) &&
            (identical(other.password, password) ||
                other.password == password) &&
            (identical(
                    other.callbackToVerifyWithCode, callbackToVerifyWithCode) ||
                other.callbackToVerifyWithCode == callbackToVerifyWithCode));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, phoneNumber, password, callbackToVerifyWithCode);

  @JsonKey(ignore: true)
  @override
  $SignInWithPhoneNumberCopyWith<SignInWithPhoneNumber> get copyWith =>
      _$SignInWithPhoneNumberCopyWithImpl<SignInWithPhoneNumber>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() checkUserAuthenticatedState,
    required TResult Function(bool userAuthenticatedOrNot)
        userAuthenticatedOrNot,
    required TResult Function(String email, String password)
        singInWithEmailAndPassword,
    required TResult Function(String email, String password, String userName)
        registerWithEmailAndPassword,
    required TResult Function(
            String phoneNumber,
            String password,
            Future<void> Function(
                    {required Future<void> Function(
                            {required String codeByUser})
                        codeByUser})
                callbackToVerifyWithCode)
        signInWithPhoneNumber,
    required TResult Function() signInWithGoogle,
    required TResult Function(String docId) listenCurrentUserDocumentChange,
    required TResult Function(UserModal userModal)
        eventToEmitUserDocumentChange,
  }) {
    return signInWithPhoneNumber(
        phoneNumber, password, callbackToVerifyWithCode);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? checkUserAuthenticatedState,
    TResult Function(bool userAuthenticatedOrNot)? userAuthenticatedOrNot,
    TResult Function(String email, String password)? singInWithEmailAndPassword,
    TResult Function(String email, String password, String userName)?
        registerWithEmailAndPassword,
    TResult Function(
            String phoneNumber,
            String password,
            Future<void> Function(
                    {required Future<void> Function(
                            {required String codeByUser})
                        codeByUser})
                callbackToVerifyWithCode)?
        signInWithPhoneNumber,
    TResult Function()? signInWithGoogle,
    TResult Function(String docId)? listenCurrentUserDocumentChange,
    TResult Function(UserModal userModal)? eventToEmitUserDocumentChange,
  }) {
    return signInWithPhoneNumber?.call(
        phoneNumber, password, callbackToVerifyWithCode);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? checkUserAuthenticatedState,
    TResult Function(bool userAuthenticatedOrNot)? userAuthenticatedOrNot,
    TResult Function(String email, String password)? singInWithEmailAndPassword,
    TResult Function(String email, String password, String userName)?
        registerWithEmailAndPassword,
    TResult Function(
            String phoneNumber,
            String password,
            Future<void> Function(
                    {required Future<void> Function(
                            {required String codeByUser})
                        codeByUser})
                callbackToVerifyWithCode)?
        signInWithPhoneNumber,
    TResult Function()? signInWithGoogle,
    TResult Function(String docId)? listenCurrentUserDocumentChange,
    TResult Function(UserModal userModal)? eventToEmitUserDocumentChange,
    required TResult orElse(),
  }) {
    if (signInWithPhoneNumber != null) {
      return signInWithPhoneNumber(
          phoneNumber, password, callbackToVerifyWithCode);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CheckUserAuthenticatedState value)
        checkUserAuthenticatedState,
    required TResult Function(UserAuthenticatedOrNot value)
        userAuthenticatedOrNot,
    required TResult Function(SignInWithEmailAndPassword value)
        singInWithEmailAndPassword,
    required TResult Function(RegisterWithEmailAndPassword value)
        registerWithEmailAndPassword,
    required TResult Function(SignInWithPhoneNumber value)
        signInWithPhoneNumber,
    required TResult Function(SignInWithGoogle value) signInWithGoogle,
    required TResult Function(ListenCurrentUserDocumentChange value)
        listenCurrentUserDocumentChange,
    required TResult Function(EventToEmitUserDocumentChange value)
        eventToEmitUserDocumentChange,
  }) {
    return signInWithPhoneNumber(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(CheckUserAuthenticatedState value)?
        checkUserAuthenticatedState,
    TResult Function(UserAuthenticatedOrNot value)? userAuthenticatedOrNot,
    TResult Function(SignInWithEmailAndPassword value)?
        singInWithEmailAndPassword,
    TResult Function(RegisterWithEmailAndPassword value)?
        registerWithEmailAndPassword,
    TResult Function(SignInWithPhoneNumber value)? signInWithPhoneNumber,
    TResult Function(SignInWithGoogle value)? signInWithGoogle,
    TResult Function(ListenCurrentUserDocumentChange value)?
        listenCurrentUserDocumentChange,
    TResult Function(EventToEmitUserDocumentChange value)?
        eventToEmitUserDocumentChange,
  }) {
    return signInWithPhoneNumber?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CheckUserAuthenticatedState value)?
        checkUserAuthenticatedState,
    TResult Function(UserAuthenticatedOrNot value)? userAuthenticatedOrNot,
    TResult Function(SignInWithEmailAndPassword value)?
        singInWithEmailAndPassword,
    TResult Function(RegisterWithEmailAndPassword value)?
        registerWithEmailAndPassword,
    TResult Function(SignInWithPhoneNumber value)? signInWithPhoneNumber,
    TResult Function(SignInWithGoogle value)? signInWithGoogle,
    TResult Function(ListenCurrentUserDocumentChange value)?
        listenCurrentUserDocumentChange,
    TResult Function(EventToEmitUserDocumentChange value)?
        eventToEmitUserDocumentChange,
    required TResult orElse(),
  }) {
    if (signInWithPhoneNumber != null) {
      return signInWithPhoneNumber(this);
    }
    return orElse();
  }
}

abstract class SignInWithPhoneNumber implements AuthEvent {
  const factory SignInWithPhoneNumber(
      {required String phoneNumber,
      required String password,
      required Future<void> Function(
              {required Future<void> Function({required String codeByUser})
                  codeByUser})
          callbackToVerifyWithCode}) = _$SignInWithPhoneNumber;

  String get phoneNumber;
  String get password;
  Future<void> Function(
      {required Future<void> Function({required String codeByUser})
          codeByUser}) get callbackToVerifyWithCode;
  @JsonKey(ignore: true)
  $SignInWithPhoneNumberCopyWith<SignInWithPhoneNumber> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SignInWithGoogleCopyWith<$Res> {
  factory $SignInWithGoogleCopyWith(
          SignInWithGoogle value, $Res Function(SignInWithGoogle) then) =
      _$SignInWithGoogleCopyWithImpl<$Res>;
}

/// @nodoc
class _$SignInWithGoogleCopyWithImpl<$Res> extends _$AuthEventCopyWithImpl<$Res>
    implements $SignInWithGoogleCopyWith<$Res> {
  _$SignInWithGoogleCopyWithImpl(
      SignInWithGoogle _value, $Res Function(SignInWithGoogle) _then)
      : super(_value, (v) => _then(v as SignInWithGoogle));

  @override
  SignInWithGoogle get _value => super._value as SignInWithGoogle;
}

/// @nodoc

class _$SignInWithGoogle implements SignInWithGoogle {
  const _$SignInWithGoogle();

  @override
  String toString() {
    return 'AuthEvent.signInWithGoogle()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is SignInWithGoogle);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() checkUserAuthenticatedState,
    required TResult Function(bool userAuthenticatedOrNot)
        userAuthenticatedOrNot,
    required TResult Function(String email, String password)
        singInWithEmailAndPassword,
    required TResult Function(String email, String password, String userName)
        registerWithEmailAndPassword,
    required TResult Function(
            String phoneNumber,
            String password,
            Future<void> Function(
                    {required Future<void> Function(
                            {required String codeByUser})
                        codeByUser})
                callbackToVerifyWithCode)
        signInWithPhoneNumber,
    required TResult Function() signInWithGoogle,
    required TResult Function(String docId) listenCurrentUserDocumentChange,
    required TResult Function(UserModal userModal)
        eventToEmitUserDocumentChange,
  }) {
    return signInWithGoogle();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? checkUserAuthenticatedState,
    TResult Function(bool userAuthenticatedOrNot)? userAuthenticatedOrNot,
    TResult Function(String email, String password)? singInWithEmailAndPassword,
    TResult Function(String email, String password, String userName)?
        registerWithEmailAndPassword,
    TResult Function(
            String phoneNumber,
            String password,
            Future<void> Function(
                    {required Future<void> Function(
                            {required String codeByUser})
                        codeByUser})
                callbackToVerifyWithCode)?
        signInWithPhoneNumber,
    TResult Function()? signInWithGoogle,
    TResult Function(String docId)? listenCurrentUserDocumentChange,
    TResult Function(UserModal userModal)? eventToEmitUserDocumentChange,
  }) {
    return signInWithGoogle?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? checkUserAuthenticatedState,
    TResult Function(bool userAuthenticatedOrNot)? userAuthenticatedOrNot,
    TResult Function(String email, String password)? singInWithEmailAndPassword,
    TResult Function(String email, String password, String userName)?
        registerWithEmailAndPassword,
    TResult Function(
            String phoneNumber,
            String password,
            Future<void> Function(
                    {required Future<void> Function(
                            {required String codeByUser})
                        codeByUser})
                callbackToVerifyWithCode)?
        signInWithPhoneNumber,
    TResult Function()? signInWithGoogle,
    TResult Function(String docId)? listenCurrentUserDocumentChange,
    TResult Function(UserModal userModal)? eventToEmitUserDocumentChange,
    required TResult orElse(),
  }) {
    if (signInWithGoogle != null) {
      return signInWithGoogle();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CheckUserAuthenticatedState value)
        checkUserAuthenticatedState,
    required TResult Function(UserAuthenticatedOrNot value)
        userAuthenticatedOrNot,
    required TResult Function(SignInWithEmailAndPassword value)
        singInWithEmailAndPassword,
    required TResult Function(RegisterWithEmailAndPassword value)
        registerWithEmailAndPassword,
    required TResult Function(SignInWithPhoneNumber value)
        signInWithPhoneNumber,
    required TResult Function(SignInWithGoogle value) signInWithGoogle,
    required TResult Function(ListenCurrentUserDocumentChange value)
        listenCurrentUserDocumentChange,
    required TResult Function(EventToEmitUserDocumentChange value)
        eventToEmitUserDocumentChange,
  }) {
    return signInWithGoogle(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(CheckUserAuthenticatedState value)?
        checkUserAuthenticatedState,
    TResult Function(UserAuthenticatedOrNot value)? userAuthenticatedOrNot,
    TResult Function(SignInWithEmailAndPassword value)?
        singInWithEmailAndPassword,
    TResult Function(RegisterWithEmailAndPassword value)?
        registerWithEmailAndPassword,
    TResult Function(SignInWithPhoneNumber value)? signInWithPhoneNumber,
    TResult Function(SignInWithGoogle value)? signInWithGoogle,
    TResult Function(ListenCurrentUserDocumentChange value)?
        listenCurrentUserDocumentChange,
    TResult Function(EventToEmitUserDocumentChange value)?
        eventToEmitUserDocumentChange,
  }) {
    return signInWithGoogle?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CheckUserAuthenticatedState value)?
        checkUserAuthenticatedState,
    TResult Function(UserAuthenticatedOrNot value)? userAuthenticatedOrNot,
    TResult Function(SignInWithEmailAndPassword value)?
        singInWithEmailAndPassword,
    TResult Function(RegisterWithEmailAndPassword value)?
        registerWithEmailAndPassword,
    TResult Function(SignInWithPhoneNumber value)? signInWithPhoneNumber,
    TResult Function(SignInWithGoogle value)? signInWithGoogle,
    TResult Function(ListenCurrentUserDocumentChange value)?
        listenCurrentUserDocumentChange,
    TResult Function(EventToEmitUserDocumentChange value)?
        eventToEmitUserDocumentChange,
    required TResult orElse(),
  }) {
    if (signInWithGoogle != null) {
      return signInWithGoogle(this);
    }
    return orElse();
  }
}

abstract class SignInWithGoogle implements AuthEvent {
  const factory SignInWithGoogle() = _$SignInWithGoogle;
}

/// @nodoc
abstract class $ListenCurrentUserDocumentChangeCopyWith<$Res> {
  factory $ListenCurrentUserDocumentChangeCopyWith(
          ListenCurrentUserDocumentChange value,
          $Res Function(ListenCurrentUserDocumentChange) then) =
      _$ListenCurrentUserDocumentChangeCopyWithImpl<$Res>;
  $Res call({String docId});
}

/// @nodoc
class _$ListenCurrentUserDocumentChangeCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res>
    implements $ListenCurrentUserDocumentChangeCopyWith<$Res> {
  _$ListenCurrentUserDocumentChangeCopyWithImpl(
      ListenCurrentUserDocumentChange _value,
      $Res Function(ListenCurrentUserDocumentChange) _then)
      : super(_value, (v) => _then(v as ListenCurrentUserDocumentChange));

  @override
  ListenCurrentUserDocumentChange get _value =>
      super._value as ListenCurrentUserDocumentChange;

  @override
  $Res call({
    Object? docId = freezed,
  }) {
    return _then(ListenCurrentUserDocumentChange(
      docId: docId == freezed
          ? _value.docId
          : docId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ListenCurrentUserDocumentChange
    implements ListenCurrentUserDocumentChange {
  const _$ListenCurrentUserDocumentChange({required this.docId});

  @override
  final String docId;

  @override
  String toString() {
    return 'AuthEvent.listenCurrentUserDocumentChange(docId: $docId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is ListenCurrentUserDocumentChange &&
            (identical(other.docId, docId) || other.docId == docId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, docId);

  @JsonKey(ignore: true)
  @override
  $ListenCurrentUserDocumentChangeCopyWith<ListenCurrentUserDocumentChange>
      get copyWith => _$ListenCurrentUserDocumentChangeCopyWithImpl<
          ListenCurrentUserDocumentChange>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() checkUserAuthenticatedState,
    required TResult Function(bool userAuthenticatedOrNot)
        userAuthenticatedOrNot,
    required TResult Function(String email, String password)
        singInWithEmailAndPassword,
    required TResult Function(String email, String password, String userName)
        registerWithEmailAndPassword,
    required TResult Function(
            String phoneNumber,
            String password,
            Future<void> Function(
                    {required Future<void> Function(
                            {required String codeByUser})
                        codeByUser})
                callbackToVerifyWithCode)
        signInWithPhoneNumber,
    required TResult Function() signInWithGoogle,
    required TResult Function(String docId) listenCurrentUserDocumentChange,
    required TResult Function(UserModal userModal)
        eventToEmitUserDocumentChange,
  }) {
    return listenCurrentUserDocumentChange(docId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? checkUserAuthenticatedState,
    TResult Function(bool userAuthenticatedOrNot)? userAuthenticatedOrNot,
    TResult Function(String email, String password)? singInWithEmailAndPassword,
    TResult Function(String email, String password, String userName)?
        registerWithEmailAndPassword,
    TResult Function(
            String phoneNumber,
            String password,
            Future<void> Function(
                    {required Future<void> Function(
                            {required String codeByUser})
                        codeByUser})
                callbackToVerifyWithCode)?
        signInWithPhoneNumber,
    TResult Function()? signInWithGoogle,
    TResult Function(String docId)? listenCurrentUserDocumentChange,
    TResult Function(UserModal userModal)? eventToEmitUserDocumentChange,
  }) {
    return listenCurrentUserDocumentChange?.call(docId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? checkUserAuthenticatedState,
    TResult Function(bool userAuthenticatedOrNot)? userAuthenticatedOrNot,
    TResult Function(String email, String password)? singInWithEmailAndPassword,
    TResult Function(String email, String password, String userName)?
        registerWithEmailAndPassword,
    TResult Function(
            String phoneNumber,
            String password,
            Future<void> Function(
                    {required Future<void> Function(
                            {required String codeByUser})
                        codeByUser})
                callbackToVerifyWithCode)?
        signInWithPhoneNumber,
    TResult Function()? signInWithGoogle,
    TResult Function(String docId)? listenCurrentUserDocumentChange,
    TResult Function(UserModal userModal)? eventToEmitUserDocumentChange,
    required TResult orElse(),
  }) {
    if (listenCurrentUserDocumentChange != null) {
      return listenCurrentUserDocumentChange(docId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CheckUserAuthenticatedState value)
        checkUserAuthenticatedState,
    required TResult Function(UserAuthenticatedOrNot value)
        userAuthenticatedOrNot,
    required TResult Function(SignInWithEmailAndPassword value)
        singInWithEmailAndPassword,
    required TResult Function(RegisterWithEmailAndPassword value)
        registerWithEmailAndPassword,
    required TResult Function(SignInWithPhoneNumber value)
        signInWithPhoneNumber,
    required TResult Function(SignInWithGoogle value) signInWithGoogle,
    required TResult Function(ListenCurrentUserDocumentChange value)
        listenCurrentUserDocumentChange,
    required TResult Function(EventToEmitUserDocumentChange value)
        eventToEmitUserDocumentChange,
  }) {
    return listenCurrentUserDocumentChange(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(CheckUserAuthenticatedState value)?
        checkUserAuthenticatedState,
    TResult Function(UserAuthenticatedOrNot value)? userAuthenticatedOrNot,
    TResult Function(SignInWithEmailAndPassword value)?
        singInWithEmailAndPassword,
    TResult Function(RegisterWithEmailAndPassword value)?
        registerWithEmailAndPassword,
    TResult Function(SignInWithPhoneNumber value)? signInWithPhoneNumber,
    TResult Function(SignInWithGoogle value)? signInWithGoogle,
    TResult Function(ListenCurrentUserDocumentChange value)?
        listenCurrentUserDocumentChange,
    TResult Function(EventToEmitUserDocumentChange value)?
        eventToEmitUserDocumentChange,
  }) {
    return listenCurrentUserDocumentChange?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CheckUserAuthenticatedState value)?
        checkUserAuthenticatedState,
    TResult Function(UserAuthenticatedOrNot value)? userAuthenticatedOrNot,
    TResult Function(SignInWithEmailAndPassword value)?
        singInWithEmailAndPassword,
    TResult Function(RegisterWithEmailAndPassword value)?
        registerWithEmailAndPassword,
    TResult Function(SignInWithPhoneNumber value)? signInWithPhoneNumber,
    TResult Function(SignInWithGoogle value)? signInWithGoogle,
    TResult Function(ListenCurrentUserDocumentChange value)?
        listenCurrentUserDocumentChange,
    TResult Function(EventToEmitUserDocumentChange value)?
        eventToEmitUserDocumentChange,
    required TResult orElse(),
  }) {
    if (listenCurrentUserDocumentChange != null) {
      return listenCurrentUserDocumentChange(this);
    }
    return orElse();
  }
}

abstract class ListenCurrentUserDocumentChange implements AuthEvent {
  const factory ListenCurrentUserDocumentChange({required String docId}) =
      _$ListenCurrentUserDocumentChange;

  String get docId;
  @JsonKey(ignore: true)
  $ListenCurrentUserDocumentChangeCopyWith<ListenCurrentUserDocumentChange>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EventToEmitUserDocumentChangeCopyWith<$Res> {
  factory $EventToEmitUserDocumentChangeCopyWith(
          EventToEmitUserDocumentChange value,
          $Res Function(EventToEmitUserDocumentChange) then) =
      _$EventToEmitUserDocumentChangeCopyWithImpl<$Res>;
  $Res call({UserModal userModal});

  $UserModalCopyWith<$Res> get userModal;
}

/// @nodoc
class _$EventToEmitUserDocumentChangeCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res>
    implements $EventToEmitUserDocumentChangeCopyWith<$Res> {
  _$EventToEmitUserDocumentChangeCopyWithImpl(
      EventToEmitUserDocumentChange _value,
      $Res Function(EventToEmitUserDocumentChange) _then)
      : super(_value, (v) => _then(v as EventToEmitUserDocumentChange));

  @override
  EventToEmitUserDocumentChange get _value =>
      super._value as EventToEmitUserDocumentChange;

  @override
  $Res call({
    Object? userModal = freezed,
  }) {
    return _then(EventToEmitUserDocumentChange(
      userModal: userModal == freezed
          ? _value.userModal
          : userModal // ignore: cast_nullable_to_non_nullable
              as UserModal,
    ));
  }

  @override
  $UserModalCopyWith<$Res> get userModal {
    return $UserModalCopyWith<$Res>(_value.userModal, (value) {
      return _then(_value.copyWith(userModal: value));
    });
  }
}

/// @nodoc

class _$EventToEmitUserDocumentChange implements EventToEmitUserDocumentChange {
  const _$EventToEmitUserDocumentChange({required this.userModal});

  @override
  final UserModal userModal;

  @override
  String toString() {
    return 'AuthEvent.eventToEmitUserDocumentChange(userModal: $userModal)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is EventToEmitUserDocumentChange &&
            (identical(other.userModal, userModal) ||
                other.userModal == userModal));
  }

  @override
  int get hashCode => Object.hash(runtimeType, userModal);

  @JsonKey(ignore: true)
  @override
  $EventToEmitUserDocumentChangeCopyWith<EventToEmitUserDocumentChange>
      get copyWith => _$EventToEmitUserDocumentChangeCopyWithImpl<
          EventToEmitUserDocumentChange>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() checkUserAuthenticatedState,
    required TResult Function(bool userAuthenticatedOrNot)
        userAuthenticatedOrNot,
    required TResult Function(String email, String password)
        singInWithEmailAndPassword,
    required TResult Function(String email, String password, String userName)
        registerWithEmailAndPassword,
    required TResult Function(
            String phoneNumber,
            String password,
            Future<void> Function(
                    {required Future<void> Function(
                            {required String codeByUser})
                        codeByUser})
                callbackToVerifyWithCode)
        signInWithPhoneNumber,
    required TResult Function() signInWithGoogle,
    required TResult Function(String docId) listenCurrentUserDocumentChange,
    required TResult Function(UserModal userModal)
        eventToEmitUserDocumentChange,
  }) {
    return eventToEmitUserDocumentChange(userModal);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? checkUserAuthenticatedState,
    TResult Function(bool userAuthenticatedOrNot)? userAuthenticatedOrNot,
    TResult Function(String email, String password)? singInWithEmailAndPassword,
    TResult Function(String email, String password, String userName)?
        registerWithEmailAndPassword,
    TResult Function(
            String phoneNumber,
            String password,
            Future<void> Function(
                    {required Future<void> Function(
                            {required String codeByUser})
                        codeByUser})
                callbackToVerifyWithCode)?
        signInWithPhoneNumber,
    TResult Function()? signInWithGoogle,
    TResult Function(String docId)? listenCurrentUserDocumentChange,
    TResult Function(UserModal userModal)? eventToEmitUserDocumentChange,
  }) {
    return eventToEmitUserDocumentChange?.call(userModal);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? checkUserAuthenticatedState,
    TResult Function(bool userAuthenticatedOrNot)? userAuthenticatedOrNot,
    TResult Function(String email, String password)? singInWithEmailAndPassword,
    TResult Function(String email, String password, String userName)?
        registerWithEmailAndPassword,
    TResult Function(
            String phoneNumber,
            String password,
            Future<void> Function(
                    {required Future<void> Function(
                            {required String codeByUser})
                        codeByUser})
                callbackToVerifyWithCode)?
        signInWithPhoneNumber,
    TResult Function()? signInWithGoogle,
    TResult Function(String docId)? listenCurrentUserDocumentChange,
    TResult Function(UserModal userModal)? eventToEmitUserDocumentChange,
    required TResult orElse(),
  }) {
    if (eventToEmitUserDocumentChange != null) {
      return eventToEmitUserDocumentChange(userModal);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CheckUserAuthenticatedState value)
        checkUserAuthenticatedState,
    required TResult Function(UserAuthenticatedOrNot value)
        userAuthenticatedOrNot,
    required TResult Function(SignInWithEmailAndPassword value)
        singInWithEmailAndPassword,
    required TResult Function(RegisterWithEmailAndPassword value)
        registerWithEmailAndPassword,
    required TResult Function(SignInWithPhoneNumber value)
        signInWithPhoneNumber,
    required TResult Function(SignInWithGoogle value) signInWithGoogle,
    required TResult Function(ListenCurrentUserDocumentChange value)
        listenCurrentUserDocumentChange,
    required TResult Function(EventToEmitUserDocumentChange value)
        eventToEmitUserDocumentChange,
  }) {
    return eventToEmitUserDocumentChange(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(CheckUserAuthenticatedState value)?
        checkUserAuthenticatedState,
    TResult Function(UserAuthenticatedOrNot value)? userAuthenticatedOrNot,
    TResult Function(SignInWithEmailAndPassword value)?
        singInWithEmailAndPassword,
    TResult Function(RegisterWithEmailAndPassword value)?
        registerWithEmailAndPassword,
    TResult Function(SignInWithPhoneNumber value)? signInWithPhoneNumber,
    TResult Function(SignInWithGoogle value)? signInWithGoogle,
    TResult Function(ListenCurrentUserDocumentChange value)?
        listenCurrentUserDocumentChange,
    TResult Function(EventToEmitUserDocumentChange value)?
        eventToEmitUserDocumentChange,
  }) {
    return eventToEmitUserDocumentChange?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CheckUserAuthenticatedState value)?
        checkUserAuthenticatedState,
    TResult Function(UserAuthenticatedOrNot value)? userAuthenticatedOrNot,
    TResult Function(SignInWithEmailAndPassword value)?
        singInWithEmailAndPassword,
    TResult Function(RegisterWithEmailAndPassword value)?
        registerWithEmailAndPassword,
    TResult Function(SignInWithPhoneNumber value)? signInWithPhoneNumber,
    TResult Function(SignInWithGoogle value)? signInWithGoogle,
    TResult Function(ListenCurrentUserDocumentChange value)?
        listenCurrentUserDocumentChange,
    TResult Function(EventToEmitUserDocumentChange value)?
        eventToEmitUserDocumentChange,
    required TResult orElse(),
  }) {
    if (eventToEmitUserDocumentChange != null) {
      return eventToEmitUserDocumentChange(this);
    }
    return orElse();
  }
}

abstract class EventToEmitUserDocumentChange implements AuthEvent {
  const factory EventToEmitUserDocumentChange({required UserModal userModal}) =
      _$EventToEmitUserDocumentChange;

  UserModal get userModal;
  @JsonKey(ignore: true)
  $EventToEmitUserDocumentChangeCopyWith<EventToEmitUserDocumentChange>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
class _$AuthStateTearOff {
  const _$AuthStateTearOff();

  _AuthState call(
      {required bool isAuthenticated,
      required bool sendingVerification,
      required bool sendingPhoneCode,
      required bool signInLoading,
      required bool signInPhoneLoading,
      required bool signInGoogleLoading,
      required bool registerLoading,
      required UserModal? userModal,
      required Option<Either<AuthFailure, Unit>> authFailureOrNot}) {
    return _AuthState(
      isAuthenticated: isAuthenticated,
      sendingVerification: sendingVerification,
      sendingPhoneCode: sendingPhoneCode,
      signInLoading: signInLoading,
      signInPhoneLoading: signInPhoneLoading,
      signInGoogleLoading: signInGoogleLoading,
      registerLoading: registerLoading,
      userModal: userModal,
      authFailureOrNot: authFailureOrNot,
    );
  }
}

/// @nodoc
const $AuthState = _$AuthStateTearOff();

/// @nodoc
mixin _$AuthState {
  bool get isAuthenticated => throw _privateConstructorUsedError;
  bool get sendingVerification => throw _privateConstructorUsedError;
  bool get sendingPhoneCode => throw _privateConstructorUsedError;
  bool get signInLoading => throw _privateConstructorUsedError;
  bool get signInPhoneLoading => throw _privateConstructorUsedError;
  bool get signInGoogleLoading => throw _privateConstructorUsedError;
  bool get registerLoading => throw _privateConstructorUsedError;
  UserModal? get userModal => throw _privateConstructorUsedError;
  Option<Either<AuthFailure, Unit>> get authFailureOrNot =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AuthStateCopyWith<AuthState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthStateCopyWith<$Res> {
  factory $AuthStateCopyWith(AuthState value, $Res Function(AuthState) then) =
      _$AuthStateCopyWithImpl<$Res>;
  $Res call(
      {bool isAuthenticated,
      bool sendingVerification,
      bool sendingPhoneCode,
      bool signInLoading,
      bool signInPhoneLoading,
      bool signInGoogleLoading,
      bool registerLoading,
      UserModal? userModal,
      Option<Either<AuthFailure, Unit>> authFailureOrNot});

  $UserModalCopyWith<$Res>? get userModal;
}

/// @nodoc
class _$AuthStateCopyWithImpl<$Res> implements $AuthStateCopyWith<$Res> {
  _$AuthStateCopyWithImpl(this._value, this._then);

  final AuthState _value;
  // ignore: unused_field
  final $Res Function(AuthState) _then;

  @override
  $Res call({
    Object? isAuthenticated = freezed,
    Object? sendingVerification = freezed,
    Object? sendingPhoneCode = freezed,
    Object? signInLoading = freezed,
    Object? signInPhoneLoading = freezed,
    Object? signInGoogleLoading = freezed,
    Object? registerLoading = freezed,
    Object? userModal = freezed,
    Object? authFailureOrNot = freezed,
  }) {
    return _then(_value.copyWith(
      isAuthenticated: isAuthenticated == freezed
          ? _value.isAuthenticated
          : isAuthenticated // ignore: cast_nullable_to_non_nullable
              as bool,
      sendingVerification: sendingVerification == freezed
          ? _value.sendingVerification
          : sendingVerification // ignore: cast_nullable_to_non_nullable
              as bool,
      sendingPhoneCode: sendingPhoneCode == freezed
          ? _value.sendingPhoneCode
          : sendingPhoneCode // ignore: cast_nullable_to_non_nullable
              as bool,
      signInLoading: signInLoading == freezed
          ? _value.signInLoading
          : signInLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      signInPhoneLoading: signInPhoneLoading == freezed
          ? _value.signInPhoneLoading
          : signInPhoneLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      signInGoogleLoading: signInGoogleLoading == freezed
          ? _value.signInGoogleLoading
          : signInGoogleLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      registerLoading: registerLoading == freezed
          ? _value.registerLoading
          : registerLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      userModal: userModal == freezed
          ? _value.userModal
          : userModal // ignore: cast_nullable_to_non_nullable
              as UserModal?,
      authFailureOrNot: authFailureOrNot == freezed
          ? _value.authFailureOrNot
          : authFailureOrNot // ignore: cast_nullable_to_non_nullable
              as Option<Either<AuthFailure, Unit>>,
    ));
  }

  @override
  $UserModalCopyWith<$Res>? get userModal {
    if (_value.userModal == null) {
      return null;
    }

    return $UserModalCopyWith<$Res>(_value.userModal!, (value) {
      return _then(_value.copyWith(userModal: value));
    });
  }
}

/// @nodoc
abstract class _$AuthStateCopyWith<$Res> implements $AuthStateCopyWith<$Res> {
  factory _$AuthStateCopyWith(
          _AuthState value, $Res Function(_AuthState) then) =
      __$AuthStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {bool isAuthenticated,
      bool sendingVerification,
      bool sendingPhoneCode,
      bool signInLoading,
      bool signInPhoneLoading,
      bool signInGoogleLoading,
      bool registerLoading,
      UserModal? userModal,
      Option<Either<AuthFailure, Unit>> authFailureOrNot});

  @override
  $UserModalCopyWith<$Res>? get userModal;
}

/// @nodoc
class __$AuthStateCopyWithImpl<$Res> extends _$AuthStateCopyWithImpl<$Res>
    implements _$AuthStateCopyWith<$Res> {
  __$AuthStateCopyWithImpl(_AuthState _value, $Res Function(_AuthState) _then)
      : super(_value, (v) => _then(v as _AuthState));

  @override
  _AuthState get _value => super._value as _AuthState;

  @override
  $Res call({
    Object? isAuthenticated = freezed,
    Object? sendingVerification = freezed,
    Object? sendingPhoneCode = freezed,
    Object? signInLoading = freezed,
    Object? signInPhoneLoading = freezed,
    Object? signInGoogleLoading = freezed,
    Object? registerLoading = freezed,
    Object? userModal = freezed,
    Object? authFailureOrNot = freezed,
  }) {
    return _then(_AuthState(
      isAuthenticated: isAuthenticated == freezed
          ? _value.isAuthenticated
          : isAuthenticated // ignore: cast_nullable_to_non_nullable
              as bool,
      sendingVerification: sendingVerification == freezed
          ? _value.sendingVerification
          : sendingVerification // ignore: cast_nullable_to_non_nullable
              as bool,
      sendingPhoneCode: sendingPhoneCode == freezed
          ? _value.sendingPhoneCode
          : sendingPhoneCode // ignore: cast_nullable_to_non_nullable
              as bool,
      signInLoading: signInLoading == freezed
          ? _value.signInLoading
          : signInLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      signInPhoneLoading: signInPhoneLoading == freezed
          ? _value.signInPhoneLoading
          : signInPhoneLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      signInGoogleLoading: signInGoogleLoading == freezed
          ? _value.signInGoogleLoading
          : signInGoogleLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      registerLoading: registerLoading == freezed
          ? _value.registerLoading
          : registerLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      userModal: userModal == freezed
          ? _value.userModal
          : userModal // ignore: cast_nullable_to_non_nullable
              as UserModal?,
      authFailureOrNot: authFailureOrNot == freezed
          ? _value.authFailureOrNot
          : authFailureOrNot // ignore: cast_nullable_to_non_nullable
              as Option<Either<AuthFailure, Unit>>,
    ));
  }
}

/// @nodoc

class _$_AuthState implements _AuthState {
  const _$_AuthState(
      {required this.isAuthenticated,
      required this.sendingVerification,
      required this.sendingPhoneCode,
      required this.signInLoading,
      required this.signInPhoneLoading,
      required this.signInGoogleLoading,
      required this.registerLoading,
      required this.userModal,
      required this.authFailureOrNot});

  @override
  final bool isAuthenticated;
  @override
  final bool sendingVerification;
  @override
  final bool sendingPhoneCode;
  @override
  final bool signInLoading;
  @override
  final bool signInPhoneLoading;
  @override
  final bool signInGoogleLoading;
  @override
  final bool registerLoading;
  @override
  final UserModal? userModal;
  @override
  final Option<Either<AuthFailure, Unit>> authFailureOrNot;

  @override
  String toString() {
    return 'AuthState(isAuthenticated: $isAuthenticated, sendingVerification: $sendingVerification, sendingPhoneCode: $sendingPhoneCode, signInLoading: $signInLoading, signInPhoneLoading: $signInPhoneLoading, signInGoogleLoading: $signInGoogleLoading, registerLoading: $registerLoading, userModal: $userModal, authFailureOrNot: $authFailureOrNot)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _AuthState &&
            (identical(other.isAuthenticated, isAuthenticated) ||
                other.isAuthenticated == isAuthenticated) &&
            (identical(other.sendingVerification, sendingVerification) ||
                other.sendingVerification == sendingVerification) &&
            (identical(other.sendingPhoneCode, sendingPhoneCode) ||
                other.sendingPhoneCode == sendingPhoneCode) &&
            (identical(other.signInLoading, signInLoading) ||
                other.signInLoading == signInLoading) &&
            (identical(other.signInPhoneLoading, signInPhoneLoading) ||
                other.signInPhoneLoading == signInPhoneLoading) &&
            (identical(other.signInGoogleLoading, signInGoogleLoading) ||
                other.signInGoogleLoading == signInGoogleLoading) &&
            (identical(other.registerLoading, registerLoading) ||
                other.registerLoading == registerLoading) &&
            (identical(other.userModal, userModal) ||
                other.userModal == userModal) &&
            (identical(other.authFailureOrNot, authFailureOrNot) ||
                other.authFailureOrNot == authFailureOrNot));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      isAuthenticated,
      sendingVerification,
      sendingPhoneCode,
      signInLoading,
      signInPhoneLoading,
      signInGoogleLoading,
      registerLoading,
      userModal,
      authFailureOrNot);

  @JsonKey(ignore: true)
  @override
  _$AuthStateCopyWith<_AuthState> get copyWith =>
      __$AuthStateCopyWithImpl<_AuthState>(this, _$identity);
}

abstract class _AuthState implements AuthState {
  const factory _AuthState(
          {required bool isAuthenticated,
          required bool sendingVerification,
          required bool sendingPhoneCode,
          required bool signInLoading,
          required bool signInPhoneLoading,
          required bool signInGoogleLoading,
          required bool registerLoading,
          required UserModal? userModal,
          required Option<Either<AuthFailure, Unit>> authFailureOrNot}) =
      _$_AuthState;

  @override
  bool get isAuthenticated;
  @override
  bool get sendingVerification;
  @override
  bool get sendingPhoneCode;
  @override
  bool get signInLoading;
  @override
  bool get signInPhoneLoading;
  @override
  bool get signInGoogleLoading;
  @override
  bool get registerLoading;
  @override
  UserModal? get userModal;
  @override
  Option<Either<AuthFailure, Unit>> get authFailureOrNot;
  @override
  @JsonKey(ignore: true)
  _$AuthStateCopyWith<_AuthState> get copyWith =>
      throw _privateConstructorUsedError;
}
