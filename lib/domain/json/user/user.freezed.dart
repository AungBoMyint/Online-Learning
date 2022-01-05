// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'user.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

UserModal _$UserModalFromJson(Map<String, dynamic> json) {
  return _UserModal.fromJson(json);
}

/// @nodoc
class _$UserModalTearOff {
  const _$UserModalTearOff();

  _UserModal call(
      {required String? userName,
      required String? email,
      @JsonKey(
          defaultValue:
              "https://w7.pngwing.com/pngs/178/595/png-transparent-user-profile-computer-icons-login-user-avatars.png")
          required String image,
      required int quizScore,
      required bool admin}) {
    return _UserModal(
      userName: userName,
      email: email,
      image: image,
      quizScore: quizScore,
      admin: admin,
    );
  }

  UserModal fromJson(Map<String, Object?> json) {
    return UserModal.fromJson(json);
  }
}

/// @nodoc
const $UserModal = _$UserModalTearOff();

/// @nodoc
mixin _$UserModal {
  String? get userName => throw _privateConstructorUsedError;
  String? get email => throw _privateConstructorUsedError;
  @JsonKey(
      defaultValue:
          "https://w7.pngwing.com/pngs/178/595/png-transparent-user-profile-computer-icons-login-user-avatars.png")
  String get image => throw _privateConstructorUsedError;
  int get quizScore => throw _privateConstructorUsedError;
  bool get admin => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UserModalCopyWith<UserModal> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserModalCopyWith<$Res> {
  factory $UserModalCopyWith(UserModal value, $Res Function(UserModal) then) =
      _$UserModalCopyWithImpl<$Res>;
  $Res call(
      {String? userName,
      String? email,
      @JsonKey(
          defaultValue:
              "https://w7.pngwing.com/pngs/178/595/png-transparent-user-profile-computer-icons-login-user-avatars.png")
          String image,
      int quizScore,
      bool admin});
}

/// @nodoc
class _$UserModalCopyWithImpl<$Res> implements $UserModalCopyWith<$Res> {
  _$UserModalCopyWithImpl(this._value, this._then);

  final UserModal _value;
  // ignore: unused_field
  final $Res Function(UserModal) _then;

  @override
  $Res call({
    Object? userName = freezed,
    Object? email = freezed,
    Object? image = freezed,
    Object? quizScore = freezed,
    Object? admin = freezed,
  }) {
    return _then(_value.copyWith(
      userName: userName == freezed
          ? _value.userName
          : userName // ignore: cast_nullable_to_non_nullable
              as String?,
      email: email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      image: image == freezed
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String,
      quizScore: quizScore == freezed
          ? _value.quizScore
          : quizScore // ignore: cast_nullable_to_non_nullable
              as int,
      admin: admin == freezed
          ? _value.admin
          : admin // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
abstract class _$UserModalCopyWith<$Res> implements $UserModalCopyWith<$Res> {
  factory _$UserModalCopyWith(
          _UserModal value, $Res Function(_UserModal) then) =
      __$UserModalCopyWithImpl<$Res>;
  @override
  $Res call(
      {String? userName,
      String? email,
      @JsonKey(
          defaultValue:
              "https://w7.pngwing.com/pngs/178/595/png-transparent-user-profile-computer-icons-login-user-avatars.png")
          String image,
      int quizScore,
      bool admin});
}

/// @nodoc
class __$UserModalCopyWithImpl<$Res> extends _$UserModalCopyWithImpl<$Res>
    implements _$UserModalCopyWith<$Res> {
  __$UserModalCopyWithImpl(_UserModal _value, $Res Function(_UserModal) _then)
      : super(_value, (v) => _then(v as _UserModal));

  @override
  _UserModal get _value => super._value as _UserModal;

  @override
  $Res call({
    Object? userName = freezed,
    Object? email = freezed,
    Object? image = freezed,
    Object? quizScore = freezed,
    Object? admin = freezed,
  }) {
    return _then(_UserModal(
      userName: userName == freezed
          ? _value.userName
          : userName // ignore: cast_nullable_to_non_nullable
              as String?,
      email: email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      image: image == freezed
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String,
      quizScore: quizScore == freezed
          ? _value.quizScore
          : quizScore // ignore: cast_nullable_to_non_nullable
              as int,
      admin: admin == freezed
          ? _value.admin
          : admin // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_UserModal implements _UserModal {
  _$_UserModal(
      {required this.userName,
      required this.email,
      @JsonKey(
          defaultValue:
              "https://w7.pngwing.com/pngs/178/595/png-transparent-user-profile-computer-icons-login-user-avatars.png")
          required this.image,
      required this.quizScore,
      required this.admin});

  factory _$_UserModal.fromJson(Map<String, dynamic> json) =>
      _$$_UserModalFromJson(json);

  @override
  final String? userName;
  @override
  final String? email;
  @override
  @JsonKey(
      defaultValue:
          "https://w7.pngwing.com/pngs/178/595/png-transparent-user-profile-computer-icons-login-user-avatars.png")
  final String image;
  @override
  final int quizScore;
  @override
  final bool admin;

  @override
  String toString() {
    return 'UserModal(userName: $userName, email: $email, image: $image, quizScore: $quizScore, admin: $admin)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _UserModal &&
            (identical(other.userName, userName) ||
                other.userName == userName) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.image, image) || other.image == image) &&
            (identical(other.quizScore, quizScore) ||
                other.quizScore == quizScore) &&
            (identical(other.admin, admin) || other.admin == admin));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, userName, email, image, quizScore, admin);

  @JsonKey(ignore: true)
  @override
  _$UserModalCopyWith<_UserModal> get copyWith =>
      __$UserModalCopyWithImpl<_UserModal>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_UserModalToJson(this);
  }
}

abstract class _UserModal implements UserModal {
  factory _UserModal(
      {required String? userName,
      required String? email,
      @JsonKey(
          defaultValue:
              "https://w7.pngwing.com/pngs/178/595/png-transparent-user-profile-computer-icons-login-user-avatars.png")
          required String image,
      required int quizScore,
      required bool admin}) = _$_UserModal;

  factory _UserModal.fromJson(Map<String, dynamic> json) =
      _$_UserModal.fromJson;

  @override
  String? get userName;
  @override
  String? get email;
  @override
  @JsonKey(
      defaultValue:
          "https://w7.pngwing.com/pngs/178/595/png-transparent-user-profile-computer-icons-login-user-avatars.png")
  String get image;
  @override
  int get quizScore;
  @override
  bool get admin;
  @override
  @JsonKey(ignore: true)
  _$UserModalCopyWith<_UserModal> get copyWith =>
      throw _privateConstructorUsedError;
}
