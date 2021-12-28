// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'check_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$CheckEventTearOff {
  const _$CheckEventTearOff();

  CheckCourseExist checkCourseExist({required String courseId}) {
    return CheckCourseExist(
      courseId: courseId,
    );
  }

  CheckModuleExist checkModuleExist({required String moduleId}) {
    return CheckModuleExist(
      moduleId: moduleId,
    );
  }

  CheckLessonExist checkLessonExist({required String lessonId}) {
    return CheckLessonExist(
      lessonId: lessonId,
    );
  }
}

/// @nodoc
const $CheckEvent = _$CheckEventTearOff();

/// @nodoc
mixin _$CheckEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String courseId) checkCourseExist,
    required TResult Function(String moduleId) checkModuleExist,
    required TResult Function(String lessonId) checkLessonExist,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String courseId)? checkCourseExist,
    TResult Function(String moduleId)? checkModuleExist,
    TResult Function(String lessonId)? checkLessonExist,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String courseId)? checkCourseExist,
    TResult Function(String moduleId)? checkModuleExist,
    TResult Function(String lessonId)? checkLessonExist,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CheckCourseExist value) checkCourseExist,
    required TResult Function(CheckModuleExist value) checkModuleExist,
    required TResult Function(CheckLessonExist value) checkLessonExist,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(CheckCourseExist value)? checkCourseExist,
    TResult Function(CheckModuleExist value)? checkModuleExist,
    TResult Function(CheckLessonExist value)? checkLessonExist,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CheckCourseExist value)? checkCourseExist,
    TResult Function(CheckModuleExist value)? checkModuleExist,
    TResult Function(CheckLessonExist value)? checkLessonExist,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CheckEventCopyWith<$Res> {
  factory $CheckEventCopyWith(
          CheckEvent value, $Res Function(CheckEvent) then) =
      _$CheckEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$CheckEventCopyWithImpl<$Res> implements $CheckEventCopyWith<$Res> {
  _$CheckEventCopyWithImpl(this._value, this._then);

  final CheckEvent _value;
  // ignore: unused_field
  final $Res Function(CheckEvent) _then;
}

/// @nodoc
abstract class $CheckCourseExistCopyWith<$Res> {
  factory $CheckCourseExistCopyWith(
          CheckCourseExist value, $Res Function(CheckCourseExist) then) =
      _$CheckCourseExistCopyWithImpl<$Res>;
  $Res call({String courseId});
}

/// @nodoc
class _$CheckCourseExistCopyWithImpl<$Res>
    extends _$CheckEventCopyWithImpl<$Res>
    implements $CheckCourseExistCopyWith<$Res> {
  _$CheckCourseExistCopyWithImpl(
      CheckCourseExist _value, $Res Function(CheckCourseExist) _then)
      : super(_value, (v) => _then(v as CheckCourseExist));

  @override
  CheckCourseExist get _value => super._value as CheckCourseExist;

  @override
  $Res call({
    Object? courseId = freezed,
  }) {
    return _then(CheckCourseExist(
      courseId: courseId == freezed
          ? _value.courseId
          : courseId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$CheckCourseExist implements CheckCourseExist {
  const _$CheckCourseExist({required this.courseId});

  @override
  final String courseId;

  @override
  String toString() {
    return 'CheckEvent.checkCourseExist(courseId: $courseId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is CheckCourseExist &&
            (identical(other.courseId, courseId) ||
                other.courseId == courseId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, courseId);

  @JsonKey(ignore: true)
  @override
  $CheckCourseExistCopyWith<CheckCourseExist> get copyWith =>
      _$CheckCourseExistCopyWithImpl<CheckCourseExist>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String courseId) checkCourseExist,
    required TResult Function(String moduleId) checkModuleExist,
    required TResult Function(String lessonId) checkLessonExist,
  }) {
    return checkCourseExist(courseId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String courseId)? checkCourseExist,
    TResult Function(String moduleId)? checkModuleExist,
    TResult Function(String lessonId)? checkLessonExist,
  }) {
    return checkCourseExist?.call(courseId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String courseId)? checkCourseExist,
    TResult Function(String moduleId)? checkModuleExist,
    TResult Function(String lessonId)? checkLessonExist,
    required TResult orElse(),
  }) {
    if (checkCourseExist != null) {
      return checkCourseExist(courseId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CheckCourseExist value) checkCourseExist,
    required TResult Function(CheckModuleExist value) checkModuleExist,
    required TResult Function(CheckLessonExist value) checkLessonExist,
  }) {
    return checkCourseExist(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(CheckCourseExist value)? checkCourseExist,
    TResult Function(CheckModuleExist value)? checkModuleExist,
    TResult Function(CheckLessonExist value)? checkLessonExist,
  }) {
    return checkCourseExist?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CheckCourseExist value)? checkCourseExist,
    TResult Function(CheckModuleExist value)? checkModuleExist,
    TResult Function(CheckLessonExist value)? checkLessonExist,
    required TResult orElse(),
  }) {
    if (checkCourseExist != null) {
      return checkCourseExist(this);
    }
    return orElse();
  }
}

abstract class CheckCourseExist implements CheckEvent {
  const factory CheckCourseExist({required String courseId}) =
      _$CheckCourseExist;

  String get courseId;
  @JsonKey(ignore: true)
  $CheckCourseExistCopyWith<CheckCourseExist> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CheckModuleExistCopyWith<$Res> {
  factory $CheckModuleExistCopyWith(
          CheckModuleExist value, $Res Function(CheckModuleExist) then) =
      _$CheckModuleExistCopyWithImpl<$Res>;
  $Res call({String moduleId});
}

/// @nodoc
class _$CheckModuleExistCopyWithImpl<$Res>
    extends _$CheckEventCopyWithImpl<$Res>
    implements $CheckModuleExistCopyWith<$Res> {
  _$CheckModuleExistCopyWithImpl(
      CheckModuleExist _value, $Res Function(CheckModuleExist) _then)
      : super(_value, (v) => _then(v as CheckModuleExist));

  @override
  CheckModuleExist get _value => super._value as CheckModuleExist;

  @override
  $Res call({
    Object? moduleId = freezed,
  }) {
    return _then(CheckModuleExist(
      moduleId: moduleId == freezed
          ? _value.moduleId
          : moduleId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$CheckModuleExist implements CheckModuleExist {
  const _$CheckModuleExist({required this.moduleId});

  @override
  final String moduleId;

  @override
  String toString() {
    return 'CheckEvent.checkModuleExist(moduleId: $moduleId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is CheckModuleExist &&
            (identical(other.moduleId, moduleId) ||
                other.moduleId == moduleId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, moduleId);

  @JsonKey(ignore: true)
  @override
  $CheckModuleExistCopyWith<CheckModuleExist> get copyWith =>
      _$CheckModuleExistCopyWithImpl<CheckModuleExist>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String courseId) checkCourseExist,
    required TResult Function(String moduleId) checkModuleExist,
    required TResult Function(String lessonId) checkLessonExist,
  }) {
    return checkModuleExist(moduleId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String courseId)? checkCourseExist,
    TResult Function(String moduleId)? checkModuleExist,
    TResult Function(String lessonId)? checkLessonExist,
  }) {
    return checkModuleExist?.call(moduleId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String courseId)? checkCourseExist,
    TResult Function(String moduleId)? checkModuleExist,
    TResult Function(String lessonId)? checkLessonExist,
    required TResult orElse(),
  }) {
    if (checkModuleExist != null) {
      return checkModuleExist(moduleId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CheckCourseExist value) checkCourseExist,
    required TResult Function(CheckModuleExist value) checkModuleExist,
    required TResult Function(CheckLessonExist value) checkLessonExist,
  }) {
    return checkModuleExist(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(CheckCourseExist value)? checkCourseExist,
    TResult Function(CheckModuleExist value)? checkModuleExist,
    TResult Function(CheckLessonExist value)? checkLessonExist,
  }) {
    return checkModuleExist?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CheckCourseExist value)? checkCourseExist,
    TResult Function(CheckModuleExist value)? checkModuleExist,
    TResult Function(CheckLessonExist value)? checkLessonExist,
    required TResult orElse(),
  }) {
    if (checkModuleExist != null) {
      return checkModuleExist(this);
    }
    return orElse();
  }
}

abstract class CheckModuleExist implements CheckEvent {
  const factory CheckModuleExist({required String moduleId}) =
      _$CheckModuleExist;

  String get moduleId;
  @JsonKey(ignore: true)
  $CheckModuleExistCopyWith<CheckModuleExist> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CheckLessonExistCopyWith<$Res> {
  factory $CheckLessonExistCopyWith(
          CheckLessonExist value, $Res Function(CheckLessonExist) then) =
      _$CheckLessonExistCopyWithImpl<$Res>;
  $Res call({String lessonId});
}

/// @nodoc
class _$CheckLessonExistCopyWithImpl<$Res>
    extends _$CheckEventCopyWithImpl<$Res>
    implements $CheckLessonExistCopyWith<$Res> {
  _$CheckLessonExistCopyWithImpl(
      CheckLessonExist _value, $Res Function(CheckLessonExist) _then)
      : super(_value, (v) => _then(v as CheckLessonExist));

  @override
  CheckLessonExist get _value => super._value as CheckLessonExist;

  @override
  $Res call({
    Object? lessonId = freezed,
  }) {
    return _then(CheckLessonExist(
      lessonId: lessonId == freezed
          ? _value.lessonId
          : lessonId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$CheckLessonExist implements CheckLessonExist {
  const _$CheckLessonExist({required this.lessonId});

  @override
  final String lessonId;

  @override
  String toString() {
    return 'CheckEvent.checkLessonExist(lessonId: $lessonId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is CheckLessonExist &&
            (identical(other.lessonId, lessonId) ||
                other.lessonId == lessonId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, lessonId);

  @JsonKey(ignore: true)
  @override
  $CheckLessonExistCopyWith<CheckLessonExist> get copyWith =>
      _$CheckLessonExistCopyWithImpl<CheckLessonExist>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String courseId) checkCourseExist,
    required TResult Function(String moduleId) checkModuleExist,
    required TResult Function(String lessonId) checkLessonExist,
  }) {
    return checkLessonExist(lessonId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String courseId)? checkCourseExist,
    TResult Function(String moduleId)? checkModuleExist,
    TResult Function(String lessonId)? checkLessonExist,
  }) {
    return checkLessonExist?.call(lessonId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String courseId)? checkCourseExist,
    TResult Function(String moduleId)? checkModuleExist,
    TResult Function(String lessonId)? checkLessonExist,
    required TResult orElse(),
  }) {
    if (checkLessonExist != null) {
      return checkLessonExist(lessonId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CheckCourseExist value) checkCourseExist,
    required TResult Function(CheckModuleExist value) checkModuleExist,
    required TResult Function(CheckLessonExist value) checkLessonExist,
  }) {
    return checkLessonExist(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(CheckCourseExist value)? checkCourseExist,
    TResult Function(CheckModuleExist value)? checkModuleExist,
    TResult Function(CheckLessonExist value)? checkLessonExist,
  }) {
    return checkLessonExist?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CheckCourseExist value)? checkCourseExist,
    TResult Function(CheckModuleExist value)? checkModuleExist,
    TResult Function(CheckLessonExist value)? checkLessonExist,
    required TResult orElse(),
  }) {
    if (checkLessonExist != null) {
      return checkLessonExist(this);
    }
    return orElse();
  }
}

abstract class CheckLessonExist implements CheckEvent {
  const factory CheckLessonExist({required String lessonId}) =
      _$CheckLessonExist;

  String get lessonId;
  @JsonKey(ignore: true)
  $CheckLessonExistCopyWith<CheckLessonExist> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$CheckStateTearOff {
  const _$CheckStateTearOff();

  _Initial initial() {
    return const _Initial();
  }
}

/// @nodoc
const $CheckState = _$CheckStateTearOff();

/// @nodoc
mixin _$CheckState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CheckStateCopyWith<$Res> {
  factory $CheckStateCopyWith(
          CheckState value, $Res Function(CheckState) then) =
      _$CheckStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$CheckStateCopyWithImpl<$Res> implements $CheckStateCopyWith<$Res> {
  _$CheckStateCopyWithImpl(this._value, this._then);

  final CheckState _value;
  // ignore: unused_field
  final $Res Function(CheckState) _then;
}

/// @nodoc
abstract class _$InitialCopyWith<$Res> {
  factory _$InitialCopyWith(_Initial value, $Res Function(_Initial) then) =
      __$InitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$InitialCopyWithImpl<$Res> extends _$CheckStateCopyWithImpl<$Res>
    implements _$InitialCopyWith<$Res> {
  __$InitialCopyWithImpl(_Initial _value, $Res Function(_Initial) _then)
      : super(_value, (v) => _then(v as _Initial));

  @override
  _Initial get _value => super._value as _Initial;
}

/// @nodoc

class _$_Initial implements _Initial {
  const _$_Initial();

  @override
  String toString() {
    return 'CheckState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _Initial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements CheckState {
  const factory _Initial() = _$_Initial;
}
