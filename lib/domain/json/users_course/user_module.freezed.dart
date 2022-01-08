// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'user_module.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

UserModule _$UserModuleFromJson(Map<String, dynamic> json) {
  return _UserModule.fromJson(json);
}

/// @nodoc
class _$UserModuleTearOff {
  const _$UserModuleTearOff();

  _UserModule call(
      {required String isCompleted, required List<String> lessonIdList}) {
    return _UserModule(
      isCompleted: isCompleted,
      lessonIdList: lessonIdList,
    );
  }

  UserModule fromJson(Map<String, Object?> json) {
    return UserModule.fromJson(json);
  }
}

/// @nodoc
const $UserModule = _$UserModuleTearOff();

/// @nodoc
mixin _$UserModule {
  String get isCompleted => throw _privateConstructorUsedError;
  List<String> get lessonIdList => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UserModuleCopyWith<UserModule> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserModuleCopyWith<$Res> {
  factory $UserModuleCopyWith(
          UserModule value, $Res Function(UserModule) then) =
      _$UserModuleCopyWithImpl<$Res>;
  $Res call({String isCompleted, List<String> lessonIdList});
}

/// @nodoc
class _$UserModuleCopyWithImpl<$Res> implements $UserModuleCopyWith<$Res> {
  _$UserModuleCopyWithImpl(this._value, this._then);

  final UserModule _value;
  // ignore: unused_field
  final $Res Function(UserModule) _then;

  @override
  $Res call({
    Object? isCompleted = freezed,
    Object? lessonIdList = freezed,
  }) {
    return _then(_value.copyWith(
      isCompleted: isCompleted == freezed
          ? _value.isCompleted
          : isCompleted // ignore: cast_nullable_to_non_nullable
              as String,
      lessonIdList: lessonIdList == freezed
          ? _value.lessonIdList
          : lessonIdList // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc
abstract class _$UserModuleCopyWith<$Res> implements $UserModuleCopyWith<$Res> {
  factory _$UserModuleCopyWith(
          _UserModule value, $Res Function(_UserModule) then) =
      __$UserModuleCopyWithImpl<$Res>;
  @override
  $Res call({String isCompleted, List<String> lessonIdList});
}

/// @nodoc
class __$UserModuleCopyWithImpl<$Res> extends _$UserModuleCopyWithImpl<$Res>
    implements _$UserModuleCopyWith<$Res> {
  __$UserModuleCopyWithImpl(
      _UserModule _value, $Res Function(_UserModule) _then)
      : super(_value, (v) => _then(v as _UserModule));

  @override
  _UserModule get _value => super._value as _UserModule;

  @override
  $Res call({
    Object? isCompleted = freezed,
    Object? lessonIdList = freezed,
  }) {
    return _then(_UserModule(
      isCompleted: isCompleted == freezed
          ? _value.isCompleted
          : isCompleted // ignore: cast_nullable_to_non_nullable
              as String,
      lessonIdList: lessonIdList == freezed
          ? _value.lessonIdList
          : lessonIdList // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_UserModule implements _UserModule {
  _$_UserModule({required this.isCompleted, required this.lessonIdList});

  factory _$_UserModule.fromJson(Map<String, dynamic> json) =>
      _$$_UserModuleFromJson(json);

  @override
  final String isCompleted;
  @override
  final List<String> lessonIdList;

  @override
  String toString() {
    return 'UserModule(isCompleted: $isCompleted, lessonIdList: $lessonIdList)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _UserModule &&
            (identical(other.isCompleted, isCompleted) ||
                other.isCompleted == isCompleted) &&
            const DeepCollectionEquality()
                .equals(other.lessonIdList, lessonIdList));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isCompleted,
      const DeepCollectionEquality().hash(lessonIdList));

  @JsonKey(ignore: true)
  @override
  _$UserModuleCopyWith<_UserModule> get copyWith =>
      __$UserModuleCopyWithImpl<_UserModule>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_UserModuleToJson(this);
  }
}

abstract class _UserModule implements UserModule {
  factory _UserModule(
      {required String isCompleted,
      required List<String> lessonIdList}) = _$_UserModule;

  factory _UserModule.fromJson(Map<String, dynamic> json) =
      _$_UserModule.fromJson;

  @override
  String get isCompleted;
  @override
  List<String> get lessonIdList;
  @override
  @JsonKey(ignore: true)
  _$UserModuleCopyWith<_UserModule> get copyWith =>
      throw _privateConstructorUsedError;
}
