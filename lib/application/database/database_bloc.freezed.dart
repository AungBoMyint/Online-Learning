// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'database_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$DatabaseEventTearOff {
  const _$DatabaseEventTearOff();

  _ListenCurrentUserEnrollCourse listenCurrentUserEnrollCourse() {
    return const _ListenCurrentUserEnrollCourse();
  }

  _AddUserCourseIntoDatabase addUserCourseIntoDatabase(
      {required UserCourse userCourse}) {
    return _AddUserCourseIntoDatabase(
      userCourse: userCourse,
    );
  }

  _AddUserModuleIntoDatabase addUserModuleIntoDatabase(
      {required UserModule userModule, required String courseID}) {
    return _AddUserModuleIntoDatabase(
      userModule: userModule,
      courseID: courseID,
    );
  }

  _AddLessonIdIntoLessonList addLessonIdIntoLessonList(
      {required String lessonID, required String moduleID}) {
    return _AddLessonIdIntoLessonList(
      lessonID: lessonID,
      moduleID: moduleID,
    );
  }
}

/// @nodoc
const $DatabaseEvent = _$DatabaseEventTearOff();

/// @nodoc
mixin _$DatabaseEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() listenCurrentUserEnrollCourse,
    required TResult Function(UserCourse userCourse) addUserCourseIntoDatabase,
    required TResult Function(UserModule userModule, String courseID)
        addUserModuleIntoDatabase,
    required TResult Function(String lessonID, String moduleID)
        addLessonIdIntoLessonList,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? listenCurrentUserEnrollCourse,
    TResult Function(UserCourse userCourse)? addUserCourseIntoDatabase,
    TResult Function(UserModule userModule, String courseID)?
        addUserModuleIntoDatabase,
    TResult Function(String lessonID, String moduleID)?
        addLessonIdIntoLessonList,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? listenCurrentUserEnrollCourse,
    TResult Function(UserCourse userCourse)? addUserCourseIntoDatabase,
    TResult Function(UserModule userModule, String courseID)?
        addUserModuleIntoDatabase,
    TResult Function(String lessonID, String moduleID)?
        addLessonIdIntoLessonList,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ListenCurrentUserEnrollCourse value)
        listenCurrentUserEnrollCourse,
    required TResult Function(_AddUserCourseIntoDatabase value)
        addUserCourseIntoDatabase,
    required TResult Function(_AddUserModuleIntoDatabase value)
        addUserModuleIntoDatabase,
    required TResult Function(_AddLessonIdIntoLessonList value)
        addLessonIdIntoLessonList,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_ListenCurrentUserEnrollCourse value)?
        listenCurrentUserEnrollCourse,
    TResult Function(_AddUserCourseIntoDatabase value)?
        addUserCourseIntoDatabase,
    TResult Function(_AddUserModuleIntoDatabase value)?
        addUserModuleIntoDatabase,
    TResult Function(_AddLessonIdIntoLessonList value)?
        addLessonIdIntoLessonList,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ListenCurrentUserEnrollCourse value)?
        listenCurrentUserEnrollCourse,
    TResult Function(_AddUserCourseIntoDatabase value)?
        addUserCourseIntoDatabase,
    TResult Function(_AddUserModuleIntoDatabase value)?
        addUserModuleIntoDatabase,
    TResult Function(_AddLessonIdIntoLessonList value)?
        addLessonIdIntoLessonList,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DatabaseEventCopyWith<$Res> {
  factory $DatabaseEventCopyWith(
          DatabaseEvent value, $Res Function(DatabaseEvent) then) =
      _$DatabaseEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$DatabaseEventCopyWithImpl<$Res>
    implements $DatabaseEventCopyWith<$Res> {
  _$DatabaseEventCopyWithImpl(this._value, this._then);

  final DatabaseEvent _value;
  // ignore: unused_field
  final $Res Function(DatabaseEvent) _then;
}

/// @nodoc
abstract class _$ListenCurrentUserEnrollCourseCopyWith<$Res> {
  factory _$ListenCurrentUserEnrollCourseCopyWith(
          _ListenCurrentUserEnrollCourse value,
          $Res Function(_ListenCurrentUserEnrollCourse) then) =
      __$ListenCurrentUserEnrollCourseCopyWithImpl<$Res>;
}

/// @nodoc
class __$ListenCurrentUserEnrollCourseCopyWithImpl<$Res>
    extends _$DatabaseEventCopyWithImpl<$Res>
    implements _$ListenCurrentUserEnrollCourseCopyWith<$Res> {
  __$ListenCurrentUserEnrollCourseCopyWithImpl(
      _ListenCurrentUserEnrollCourse _value,
      $Res Function(_ListenCurrentUserEnrollCourse) _then)
      : super(_value, (v) => _then(v as _ListenCurrentUserEnrollCourse));

  @override
  _ListenCurrentUserEnrollCourse get _value =>
      super._value as _ListenCurrentUserEnrollCourse;
}

/// @nodoc

class _$_ListenCurrentUserEnrollCourse
    with DiagnosticableTreeMixin
    implements _ListenCurrentUserEnrollCourse {
  const _$_ListenCurrentUserEnrollCourse();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'DatabaseEvent.listenCurrentUserEnrollCourse()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty(
          'type', 'DatabaseEvent.listenCurrentUserEnrollCourse'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ListenCurrentUserEnrollCourse);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() listenCurrentUserEnrollCourse,
    required TResult Function(UserCourse userCourse) addUserCourseIntoDatabase,
    required TResult Function(UserModule userModule, String courseID)
        addUserModuleIntoDatabase,
    required TResult Function(String lessonID, String moduleID)
        addLessonIdIntoLessonList,
  }) {
    return listenCurrentUserEnrollCourse();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? listenCurrentUserEnrollCourse,
    TResult Function(UserCourse userCourse)? addUserCourseIntoDatabase,
    TResult Function(UserModule userModule, String courseID)?
        addUserModuleIntoDatabase,
    TResult Function(String lessonID, String moduleID)?
        addLessonIdIntoLessonList,
  }) {
    return listenCurrentUserEnrollCourse?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? listenCurrentUserEnrollCourse,
    TResult Function(UserCourse userCourse)? addUserCourseIntoDatabase,
    TResult Function(UserModule userModule, String courseID)?
        addUserModuleIntoDatabase,
    TResult Function(String lessonID, String moduleID)?
        addLessonIdIntoLessonList,
    required TResult orElse(),
  }) {
    if (listenCurrentUserEnrollCourse != null) {
      return listenCurrentUserEnrollCourse();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ListenCurrentUserEnrollCourse value)
        listenCurrentUserEnrollCourse,
    required TResult Function(_AddUserCourseIntoDatabase value)
        addUserCourseIntoDatabase,
    required TResult Function(_AddUserModuleIntoDatabase value)
        addUserModuleIntoDatabase,
    required TResult Function(_AddLessonIdIntoLessonList value)
        addLessonIdIntoLessonList,
  }) {
    return listenCurrentUserEnrollCourse(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_ListenCurrentUserEnrollCourse value)?
        listenCurrentUserEnrollCourse,
    TResult Function(_AddUserCourseIntoDatabase value)?
        addUserCourseIntoDatabase,
    TResult Function(_AddUserModuleIntoDatabase value)?
        addUserModuleIntoDatabase,
    TResult Function(_AddLessonIdIntoLessonList value)?
        addLessonIdIntoLessonList,
  }) {
    return listenCurrentUserEnrollCourse?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ListenCurrentUserEnrollCourse value)?
        listenCurrentUserEnrollCourse,
    TResult Function(_AddUserCourseIntoDatabase value)?
        addUserCourseIntoDatabase,
    TResult Function(_AddUserModuleIntoDatabase value)?
        addUserModuleIntoDatabase,
    TResult Function(_AddLessonIdIntoLessonList value)?
        addLessonIdIntoLessonList,
    required TResult orElse(),
  }) {
    if (listenCurrentUserEnrollCourse != null) {
      return listenCurrentUserEnrollCourse(this);
    }
    return orElse();
  }
}

abstract class _ListenCurrentUserEnrollCourse implements DatabaseEvent {
  const factory _ListenCurrentUserEnrollCourse() =
      _$_ListenCurrentUserEnrollCourse;
}

/// @nodoc
abstract class _$AddUserCourseIntoDatabaseCopyWith<$Res> {
  factory _$AddUserCourseIntoDatabaseCopyWith(_AddUserCourseIntoDatabase value,
          $Res Function(_AddUserCourseIntoDatabase) then) =
      __$AddUserCourseIntoDatabaseCopyWithImpl<$Res>;
  $Res call({UserCourse userCourse});

  $UserCourseCopyWith<$Res> get userCourse;
}

/// @nodoc
class __$AddUserCourseIntoDatabaseCopyWithImpl<$Res>
    extends _$DatabaseEventCopyWithImpl<$Res>
    implements _$AddUserCourseIntoDatabaseCopyWith<$Res> {
  __$AddUserCourseIntoDatabaseCopyWithImpl(_AddUserCourseIntoDatabase _value,
      $Res Function(_AddUserCourseIntoDatabase) _then)
      : super(_value, (v) => _then(v as _AddUserCourseIntoDatabase));

  @override
  _AddUserCourseIntoDatabase get _value =>
      super._value as _AddUserCourseIntoDatabase;

  @override
  $Res call({
    Object? userCourse = freezed,
  }) {
    return _then(_AddUserCourseIntoDatabase(
      userCourse: userCourse == freezed
          ? _value.userCourse
          : userCourse // ignore: cast_nullable_to_non_nullable
              as UserCourse,
    ));
  }

  @override
  $UserCourseCopyWith<$Res> get userCourse {
    return $UserCourseCopyWith<$Res>(_value.userCourse, (value) {
      return _then(_value.copyWith(userCourse: value));
    });
  }
}

/// @nodoc

class _$_AddUserCourseIntoDatabase
    with DiagnosticableTreeMixin
    implements _AddUserCourseIntoDatabase {
  const _$_AddUserCourseIntoDatabase({required this.userCourse});

  @override
  final UserCourse userCourse;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'DatabaseEvent.addUserCourseIntoDatabase(userCourse: $userCourse)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty(
          'type', 'DatabaseEvent.addUserCourseIntoDatabase'))
      ..add(DiagnosticsProperty('userCourse', userCourse));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _AddUserCourseIntoDatabase &&
            (identical(other.userCourse, userCourse) ||
                other.userCourse == userCourse));
  }

  @override
  int get hashCode => Object.hash(runtimeType, userCourse);

  @JsonKey(ignore: true)
  @override
  _$AddUserCourseIntoDatabaseCopyWith<_AddUserCourseIntoDatabase>
      get copyWith =>
          __$AddUserCourseIntoDatabaseCopyWithImpl<_AddUserCourseIntoDatabase>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() listenCurrentUserEnrollCourse,
    required TResult Function(UserCourse userCourse) addUserCourseIntoDatabase,
    required TResult Function(UserModule userModule, String courseID)
        addUserModuleIntoDatabase,
    required TResult Function(String lessonID, String moduleID)
        addLessonIdIntoLessonList,
  }) {
    return addUserCourseIntoDatabase(userCourse);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? listenCurrentUserEnrollCourse,
    TResult Function(UserCourse userCourse)? addUserCourseIntoDatabase,
    TResult Function(UserModule userModule, String courseID)?
        addUserModuleIntoDatabase,
    TResult Function(String lessonID, String moduleID)?
        addLessonIdIntoLessonList,
  }) {
    return addUserCourseIntoDatabase?.call(userCourse);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? listenCurrentUserEnrollCourse,
    TResult Function(UserCourse userCourse)? addUserCourseIntoDatabase,
    TResult Function(UserModule userModule, String courseID)?
        addUserModuleIntoDatabase,
    TResult Function(String lessonID, String moduleID)?
        addLessonIdIntoLessonList,
    required TResult orElse(),
  }) {
    if (addUserCourseIntoDatabase != null) {
      return addUserCourseIntoDatabase(userCourse);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ListenCurrentUserEnrollCourse value)
        listenCurrentUserEnrollCourse,
    required TResult Function(_AddUserCourseIntoDatabase value)
        addUserCourseIntoDatabase,
    required TResult Function(_AddUserModuleIntoDatabase value)
        addUserModuleIntoDatabase,
    required TResult Function(_AddLessonIdIntoLessonList value)
        addLessonIdIntoLessonList,
  }) {
    return addUserCourseIntoDatabase(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_ListenCurrentUserEnrollCourse value)?
        listenCurrentUserEnrollCourse,
    TResult Function(_AddUserCourseIntoDatabase value)?
        addUserCourseIntoDatabase,
    TResult Function(_AddUserModuleIntoDatabase value)?
        addUserModuleIntoDatabase,
    TResult Function(_AddLessonIdIntoLessonList value)?
        addLessonIdIntoLessonList,
  }) {
    return addUserCourseIntoDatabase?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ListenCurrentUserEnrollCourse value)?
        listenCurrentUserEnrollCourse,
    TResult Function(_AddUserCourseIntoDatabase value)?
        addUserCourseIntoDatabase,
    TResult Function(_AddUserModuleIntoDatabase value)?
        addUserModuleIntoDatabase,
    TResult Function(_AddLessonIdIntoLessonList value)?
        addLessonIdIntoLessonList,
    required TResult orElse(),
  }) {
    if (addUserCourseIntoDatabase != null) {
      return addUserCourseIntoDatabase(this);
    }
    return orElse();
  }
}

abstract class _AddUserCourseIntoDatabase implements DatabaseEvent {
  const factory _AddUserCourseIntoDatabase({required UserCourse userCourse}) =
      _$_AddUserCourseIntoDatabase;

  UserCourse get userCourse;
  @JsonKey(ignore: true)
  _$AddUserCourseIntoDatabaseCopyWith<_AddUserCourseIntoDatabase>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$AddUserModuleIntoDatabaseCopyWith<$Res> {
  factory _$AddUserModuleIntoDatabaseCopyWith(_AddUserModuleIntoDatabase value,
          $Res Function(_AddUserModuleIntoDatabase) then) =
      __$AddUserModuleIntoDatabaseCopyWithImpl<$Res>;
  $Res call({UserModule userModule, String courseID});

  $UserModuleCopyWith<$Res> get userModule;
}

/// @nodoc
class __$AddUserModuleIntoDatabaseCopyWithImpl<$Res>
    extends _$DatabaseEventCopyWithImpl<$Res>
    implements _$AddUserModuleIntoDatabaseCopyWith<$Res> {
  __$AddUserModuleIntoDatabaseCopyWithImpl(_AddUserModuleIntoDatabase _value,
      $Res Function(_AddUserModuleIntoDatabase) _then)
      : super(_value, (v) => _then(v as _AddUserModuleIntoDatabase));

  @override
  _AddUserModuleIntoDatabase get _value =>
      super._value as _AddUserModuleIntoDatabase;

  @override
  $Res call({
    Object? userModule = freezed,
    Object? courseID = freezed,
  }) {
    return _then(_AddUserModuleIntoDatabase(
      userModule: userModule == freezed
          ? _value.userModule
          : userModule // ignore: cast_nullable_to_non_nullable
              as UserModule,
      courseID: courseID == freezed
          ? _value.courseID
          : courseID // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }

  @override
  $UserModuleCopyWith<$Res> get userModule {
    return $UserModuleCopyWith<$Res>(_value.userModule, (value) {
      return _then(_value.copyWith(userModule: value));
    });
  }
}

/// @nodoc

class _$_AddUserModuleIntoDatabase
    with DiagnosticableTreeMixin
    implements _AddUserModuleIntoDatabase {
  const _$_AddUserModuleIntoDatabase(
      {required this.userModule, required this.courseID});

  @override
  final UserModule userModule;
  @override
  final String courseID;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'DatabaseEvent.addUserModuleIntoDatabase(userModule: $userModule, courseID: $courseID)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty(
          'type', 'DatabaseEvent.addUserModuleIntoDatabase'))
      ..add(DiagnosticsProperty('userModule', userModule))
      ..add(DiagnosticsProperty('courseID', courseID));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _AddUserModuleIntoDatabase &&
            (identical(other.userModule, userModule) ||
                other.userModule == userModule) &&
            (identical(other.courseID, courseID) ||
                other.courseID == courseID));
  }

  @override
  int get hashCode => Object.hash(runtimeType, userModule, courseID);

  @JsonKey(ignore: true)
  @override
  _$AddUserModuleIntoDatabaseCopyWith<_AddUserModuleIntoDatabase>
      get copyWith =>
          __$AddUserModuleIntoDatabaseCopyWithImpl<_AddUserModuleIntoDatabase>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() listenCurrentUserEnrollCourse,
    required TResult Function(UserCourse userCourse) addUserCourseIntoDatabase,
    required TResult Function(UserModule userModule, String courseID)
        addUserModuleIntoDatabase,
    required TResult Function(String lessonID, String moduleID)
        addLessonIdIntoLessonList,
  }) {
    return addUserModuleIntoDatabase(userModule, courseID);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? listenCurrentUserEnrollCourse,
    TResult Function(UserCourse userCourse)? addUserCourseIntoDatabase,
    TResult Function(UserModule userModule, String courseID)?
        addUserModuleIntoDatabase,
    TResult Function(String lessonID, String moduleID)?
        addLessonIdIntoLessonList,
  }) {
    return addUserModuleIntoDatabase?.call(userModule, courseID);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? listenCurrentUserEnrollCourse,
    TResult Function(UserCourse userCourse)? addUserCourseIntoDatabase,
    TResult Function(UserModule userModule, String courseID)?
        addUserModuleIntoDatabase,
    TResult Function(String lessonID, String moduleID)?
        addLessonIdIntoLessonList,
    required TResult orElse(),
  }) {
    if (addUserModuleIntoDatabase != null) {
      return addUserModuleIntoDatabase(userModule, courseID);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ListenCurrentUserEnrollCourse value)
        listenCurrentUserEnrollCourse,
    required TResult Function(_AddUserCourseIntoDatabase value)
        addUserCourseIntoDatabase,
    required TResult Function(_AddUserModuleIntoDatabase value)
        addUserModuleIntoDatabase,
    required TResult Function(_AddLessonIdIntoLessonList value)
        addLessonIdIntoLessonList,
  }) {
    return addUserModuleIntoDatabase(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_ListenCurrentUserEnrollCourse value)?
        listenCurrentUserEnrollCourse,
    TResult Function(_AddUserCourseIntoDatabase value)?
        addUserCourseIntoDatabase,
    TResult Function(_AddUserModuleIntoDatabase value)?
        addUserModuleIntoDatabase,
    TResult Function(_AddLessonIdIntoLessonList value)?
        addLessonIdIntoLessonList,
  }) {
    return addUserModuleIntoDatabase?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ListenCurrentUserEnrollCourse value)?
        listenCurrentUserEnrollCourse,
    TResult Function(_AddUserCourseIntoDatabase value)?
        addUserCourseIntoDatabase,
    TResult Function(_AddUserModuleIntoDatabase value)?
        addUserModuleIntoDatabase,
    TResult Function(_AddLessonIdIntoLessonList value)?
        addLessonIdIntoLessonList,
    required TResult orElse(),
  }) {
    if (addUserModuleIntoDatabase != null) {
      return addUserModuleIntoDatabase(this);
    }
    return orElse();
  }
}

abstract class _AddUserModuleIntoDatabase implements DatabaseEvent {
  const factory _AddUserModuleIntoDatabase(
      {required UserModule userModule,
      required String courseID}) = _$_AddUserModuleIntoDatabase;

  UserModule get userModule;
  String get courseID;
  @JsonKey(ignore: true)
  _$AddUserModuleIntoDatabaseCopyWith<_AddUserModuleIntoDatabase>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$AddLessonIdIntoLessonListCopyWith<$Res> {
  factory _$AddLessonIdIntoLessonListCopyWith(_AddLessonIdIntoLessonList value,
          $Res Function(_AddLessonIdIntoLessonList) then) =
      __$AddLessonIdIntoLessonListCopyWithImpl<$Res>;
  $Res call({String lessonID, String moduleID});
}

/// @nodoc
class __$AddLessonIdIntoLessonListCopyWithImpl<$Res>
    extends _$DatabaseEventCopyWithImpl<$Res>
    implements _$AddLessonIdIntoLessonListCopyWith<$Res> {
  __$AddLessonIdIntoLessonListCopyWithImpl(_AddLessonIdIntoLessonList _value,
      $Res Function(_AddLessonIdIntoLessonList) _then)
      : super(_value, (v) => _then(v as _AddLessonIdIntoLessonList));

  @override
  _AddLessonIdIntoLessonList get _value =>
      super._value as _AddLessonIdIntoLessonList;

  @override
  $Res call({
    Object? lessonID = freezed,
    Object? moduleID = freezed,
  }) {
    return _then(_AddLessonIdIntoLessonList(
      lessonID: lessonID == freezed
          ? _value.lessonID
          : lessonID // ignore: cast_nullable_to_non_nullable
              as String,
      moduleID: moduleID == freezed
          ? _value.moduleID
          : moduleID // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_AddLessonIdIntoLessonList
    with DiagnosticableTreeMixin
    implements _AddLessonIdIntoLessonList {
  const _$_AddLessonIdIntoLessonList(
      {required this.lessonID, required this.moduleID});

  @override
  final String lessonID;
  @override
  final String moduleID;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'DatabaseEvent.addLessonIdIntoLessonList(lessonID: $lessonID, moduleID: $moduleID)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty(
          'type', 'DatabaseEvent.addLessonIdIntoLessonList'))
      ..add(DiagnosticsProperty('lessonID', lessonID))
      ..add(DiagnosticsProperty('moduleID', moduleID));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _AddLessonIdIntoLessonList &&
            (identical(other.lessonID, lessonID) ||
                other.lessonID == lessonID) &&
            (identical(other.moduleID, moduleID) ||
                other.moduleID == moduleID));
  }

  @override
  int get hashCode => Object.hash(runtimeType, lessonID, moduleID);

  @JsonKey(ignore: true)
  @override
  _$AddLessonIdIntoLessonListCopyWith<_AddLessonIdIntoLessonList>
      get copyWith =>
          __$AddLessonIdIntoLessonListCopyWithImpl<_AddLessonIdIntoLessonList>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() listenCurrentUserEnrollCourse,
    required TResult Function(UserCourse userCourse) addUserCourseIntoDatabase,
    required TResult Function(UserModule userModule, String courseID)
        addUserModuleIntoDatabase,
    required TResult Function(String lessonID, String moduleID)
        addLessonIdIntoLessonList,
  }) {
    return addLessonIdIntoLessonList(lessonID, moduleID);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? listenCurrentUserEnrollCourse,
    TResult Function(UserCourse userCourse)? addUserCourseIntoDatabase,
    TResult Function(UserModule userModule, String courseID)?
        addUserModuleIntoDatabase,
    TResult Function(String lessonID, String moduleID)?
        addLessonIdIntoLessonList,
  }) {
    return addLessonIdIntoLessonList?.call(lessonID, moduleID);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? listenCurrentUserEnrollCourse,
    TResult Function(UserCourse userCourse)? addUserCourseIntoDatabase,
    TResult Function(UserModule userModule, String courseID)?
        addUserModuleIntoDatabase,
    TResult Function(String lessonID, String moduleID)?
        addLessonIdIntoLessonList,
    required TResult orElse(),
  }) {
    if (addLessonIdIntoLessonList != null) {
      return addLessonIdIntoLessonList(lessonID, moduleID);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ListenCurrentUserEnrollCourse value)
        listenCurrentUserEnrollCourse,
    required TResult Function(_AddUserCourseIntoDatabase value)
        addUserCourseIntoDatabase,
    required TResult Function(_AddUserModuleIntoDatabase value)
        addUserModuleIntoDatabase,
    required TResult Function(_AddLessonIdIntoLessonList value)
        addLessonIdIntoLessonList,
  }) {
    return addLessonIdIntoLessonList(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_ListenCurrentUserEnrollCourse value)?
        listenCurrentUserEnrollCourse,
    TResult Function(_AddUserCourseIntoDatabase value)?
        addUserCourseIntoDatabase,
    TResult Function(_AddUserModuleIntoDatabase value)?
        addUserModuleIntoDatabase,
    TResult Function(_AddLessonIdIntoLessonList value)?
        addLessonIdIntoLessonList,
  }) {
    return addLessonIdIntoLessonList?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ListenCurrentUserEnrollCourse value)?
        listenCurrentUserEnrollCourse,
    TResult Function(_AddUserCourseIntoDatabase value)?
        addUserCourseIntoDatabase,
    TResult Function(_AddUserModuleIntoDatabase value)?
        addUserModuleIntoDatabase,
    TResult Function(_AddLessonIdIntoLessonList value)?
        addLessonIdIntoLessonList,
    required TResult orElse(),
  }) {
    if (addLessonIdIntoLessonList != null) {
      return addLessonIdIntoLessonList(this);
    }
    return orElse();
  }
}

abstract class _AddLessonIdIntoLessonList implements DatabaseEvent {
  const factory _AddLessonIdIntoLessonList(
      {required String lessonID,
      required String moduleID}) = _$_AddLessonIdIntoLessonList;

  String get lessonID;
  String get moduleID;
  @JsonKey(ignore: true)
  _$AddLessonIdIntoLessonListCopyWith<_AddLessonIdIntoLessonList>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
class _$DatabaseStateTearOff {
  const _$DatabaseStateTearOff();

  _Initial initial() {
    return const _Initial();
  }
}

/// @nodoc
const $DatabaseState = _$DatabaseStateTearOff();

/// @nodoc
mixin _$DatabaseState {
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
abstract class $DatabaseStateCopyWith<$Res> {
  factory $DatabaseStateCopyWith(
          DatabaseState value, $Res Function(DatabaseState) then) =
      _$DatabaseStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$DatabaseStateCopyWithImpl<$Res>
    implements $DatabaseStateCopyWith<$Res> {
  _$DatabaseStateCopyWithImpl(this._value, this._then);

  final DatabaseState _value;
  // ignore: unused_field
  final $Res Function(DatabaseState) _then;
}

/// @nodoc
abstract class _$InitialCopyWith<$Res> {
  factory _$InitialCopyWith(_Initial value, $Res Function(_Initial) then) =
      __$InitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$InitialCopyWithImpl<$Res> extends _$DatabaseStateCopyWithImpl<$Res>
    implements _$InitialCopyWith<$Res> {
  __$InitialCopyWithImpl(_Initial _value, $Res Function(_Initial) _then)
      : super(_value, (v) => _then(v as _Initial));

  @override
  _Initial get _value => super._value as _Initial;
}

/// @nodoc

class _$_Initial with DiagnosticableTreeMixin implements _Initial {
  const _$_Initial();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'DatabaseState.initial()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties..add(DiagnosticsProperty('type', 'DatabaseState.initial'));
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

abstract class _Initial implements DatabaseState {
  const factory _Initial() = _$_Initial;
}
