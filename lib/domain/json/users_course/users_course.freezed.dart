// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'users_course.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

UserCourse _$UserCourseFromJson(Map<String, dynamic> json) {
  return _UserCourse.fromJson(json);
}

/// @nodoc
class _$UserCourseTearOff {
  const _$UserCourseTearOff();

  _UserCourse call(
      {required String id,
      required String name,
      required String image,
      required Map<String, UserModule> moduleMap}) {
    return _UserCourse(
      id: id,
      name: name,
      image: image,
      moduleMap: moduleMap,
    );
  }

  UserCourse fromJson(Map<String, Object?> json) {
    return UserCourse.fromJson(json);
  }
}

/// @nodoc
const $UserCourse = _$UserCourseTearOff();

/// @nodoc
mixin _$UserCourse {
  String get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get image => throw _privateConstructorUsedError;
  Map<String, UserModule> get moduleMap => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UserCourseCopyWith<UserCourse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserCourseCopyWith<$Res> {
  factory $UserCourseCopyWith(
          UserCourse value, $Res Function(UserCourse) then) =
      _$UserCourseCopyWithImpl<$Res>;
  $Res call(
      {String id,
      String name,
      String image,
      Map<String, UserModule> moduleMap});
}

/// @nodoc
class _$UserCourseCopyWithImpl<$Res> implements $UserCourseCopyWith<$Res> {
  _$UserCourseCopyWithImpl(this._value, this._then);

  final UserCourse _value;
  // ignore: unused_field
  final $Res Function(UserCourse) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? image = freezed,
    Object? moduleMap = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      image: image == freezed
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String,
      moduleMap: moduleMap == freezed
          ? _value.moduleMap
          : moduleMap // ignore: cast_nullable_to_non_nullable
              as Map<String, UserModule>,
    ));
  }
}

/// @nodoc
abstract class _$UserCourseCopyWith<$Res> implements $UserCourseCopyWith<$Res> {
  factory _$UserCourseCopyWith(
          _UserCourse value, $Res Function(_UserCourse) then) =
      __$UserCourseCopyWithImpl<$Res>;
  @override
  $Res call(
      {String id,
      String name,
      String image,
      Map<String, UserModule> moduleMap});
}

/// @nodoc
class __$UserCourseCopyWithImpl<$Res> extends _$UserCourseCopyWithImpl<$Res>
    implements _$UserCourseCopyWith<$Res> {
  __$UserCourseCopyWithImpl(
      _UserCourse _value, $Res Function(_UserCourse) _then)
      : super(_value, (v) => _then(v as _UserCourse));

  @override
  _UserCourse get _value => super._value as _UserCourse;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? image = freezed,
    Object? moduleMap = freezed,
  }) {
    return _then(_UserCourse(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      image: image == freezed
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String,
      moduleMap: moduleMap == freezed
          ? _value.moduleMap
          : moduleMap // ignore: cast_nullable_to_non_nullable
              as Map<String, UserModule>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_UserCourse implements _UserCourse {
  _$_UserCourse(
      {required this.id,
      required this.name,
      required this.image,
      required this.moduleMap});

  factory _$_UserCourse.fromJson(Map<String, dynamic> json) =>
      _$$_UserCourseFromJson(json);

  @override
  final String id;
  @override
  final String name;
  @override
  final String image;
  @override
  final Map<String, UserModule> moduleMap;

  @override
  String toString() {
    return 'UserCourse(id: $id, name: $name, image: $image, moduleMap: $moduleMap)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _UserCourse &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.image, image) || other.image == image) &&
            const DeepCollectionEquality().equals(other.moduleMap, moduleMap));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id, name, image,
      const DeepCollectionEquality().hash(moduleMap));

  @JsonKey(ignore: true)
  @override
  _$UserCourseCopyWith<_UserCourse> get copyWith =>
      __$UserCourseCopyWithImpl<_UserCourse>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_UserCourseToJson(this);
  }
}

abstract class _UserCourse implements UserCourse {
  factory _UserCourse(
      {required String id,
      required String name,
      required String image,
      required Map<String, UserModule> moduleMap}) = _$_UserCourse;

  factory _UserCourse.fromJson(Map<String, dynamic> json) =
      _$_UserCourse.fromJson;

  @override
  String get id;
  @override
  String get name;
  @override
  String get image;
  @override
  Map<String, UserModule> get moduleMap;
  @override
  @JsonKey(ignore: true)
  _$UserCourseCopyWith<_UserCourse> get copyWith =>
      throw _privateConstructorUsedError;
}
