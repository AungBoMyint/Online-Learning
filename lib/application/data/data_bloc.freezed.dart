// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'data_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$DataEventTearOff {
  const _$DataEventTearOff();

  UploadCourseToFirebase uploadCourseToFirebase({required Course course}) {
    return UploadCourseToFirebase(
      course: course,
    );
  }

  UploadModuleToFirebase uploadModuleToFirebase(
      {required Module module, required String courseId}) {
    return UploadModuleToFirebase(
      module: module,
      courseId: courseId,
    );
  }

  UploadLessonToFirebase uploadLessonToFirebase(
      {required Lesson listLesson, required String moduleId}) {
    return UploadLessonToFirebase(
      listLesson: listLesson,
      moduleId: moduleId,
    );
  }

  UploadLessonImageOrVideoOrDescription uploadLessonImageOrVideoOrDescription(
      {required List<LessonImageOrDescriptionOrVideo> lesson,
      required String lessonId}) {
    return UploadLessonImageOrVideoOrDescription(
      lesson: lesson,
      lessonId: lessonId,
    );
  }

  UpdateUserProfile updateUserProfile({required UserModal userModal}) {
    return UpdateUserProfile(
      userModal: userModal,
    );
  }

  ListenAllCourse listenAllCourse() {
    return const ListenAllCourse();
  }

  ListenCurrentUserOwnCourse listenCurrentUserOwnCourses() {
    return const ListenCurrentUserOwnCourse();
  }

  GetCurrentCourseModules getCurrentCourseModules({required String courseId}) {
    return GetCurrentCourseModules(
      courseId: courseId,
    );
  }

  GetCurrentModuleLessons getCurrentModuleLessons({required String moduleId}) {
    return GetCurrentModuleLessons(
      moduleId: moduleId,
    );
  }

  GetCurrentLessonLessonContents getCurrentLessonLessonContents(
      {required String lessonId}) {
    return GetCurrentLessonLessonContents(
      lessonId: lessonId,
    );
  }

  EmitCourseListStream emitCourseListStream(
      {required List<Course> courseList}) {
    return EmitCourseListStream(
      courseList: courseList,
    );
  }

  EmitCurrentUserCourseListStream emitCurrentUserCourseListStream(
      {required List<Course> courseList}) {
    return EmitCurrentUserCourseListStream(
      courseList: courseList,
    );
  }
}

/// @nodoc
const $DataEvent = _$DataEventTearOff();

/// @nodoc
mixin _$DataEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Course course) uploadCourseToFirebase,
    required TResult Function(Module module, String courseId)
        uploadModuleToFirebase,
    required TResult Function(Lesson listLesson, String moduleId)
        uploadLessonToFirebase,
    required TResult Function(
            List<LessonImageOrDescriptionOrVideo> lesson, String lessonId)
        uploadLessonImageOrVideoOrDescription,
    required TResult Function(UserModal userModal) updateUserProfile,
    required TResult Function() listenAllCourse,
    required TResult Function() listenCurrentUserOwnCourses,
    required TResult Function(String courseId) getCurrentCourseModules,
    required TResult Function(String moduleId) getCurrentModuleLessons,
    required TResult Function(String lessonId) getCurrentLessonLessonContents,
    required TResult Function(List<Course> courseList) emitCourseListStream,
    required TResult Function(List<Course> courseList)
        emitCurrentUserCourseListStream,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(Course course)? uploadCourseToFirebase,
    TResult Function(Module module, String courseId)? uploadModuleToFirebase,
    TResult Function(Lesson listLesson, String moduleId)?
        uploadLessonToFirebase,
    TResult Function(
            List<LessonImageOrDescriptionOrVideo> lesson, String lessonId)?
        uploadLessonImageOrVideoOrDescription,
    TResult Function(UserModal userModal)? updateUserProfile,
    TResult Function()? listenAllCourse,
    TResult Function()? listenCurrentUserOwnCourses,
    TResult Function(String courseId)? getCurrentCourseModules,
    TResult Function(String moduleId)? getCurrentModuleLessons,
    TResult Function(String lessonId)? getCurrentLessonLessonContents,
    TResult Function(List<Course> courseList)? emitCourseListStream,
    TResult Function(List<Course> courseList)? emitCurrentUserCourseListStream,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Course course)? uploadCourseToFirebase,
    TResult Function(Module module, String courseId)? uploadModuleToFirebase,
    TResult Function(Lesson listLesson, String moduleId)?
        uploadLessonToFirebase,
    TResult Function(
            List<LessonImageOrDescriptionOrVideo> lesson, String lessonId)?
        uploadLessonImageOrVideoOrDescription,
    TResult Function(UserModal userModal)? updateUserProfile,
    TResult Function()? listenAllCourse,
    TResult Function()? listenCurrentUserOwnCourses,
    TResult Function(String courseId)? getCurrentCourseModules,
    TResult Function(String moduleId)? getCurrentModuleLessons,
    TResult Function(String lessonId)? getCurrentLessonLessonContents,
    TResult Function(List<Course> courseList)? emitCourseListStream,
    TResult Function(List<Course> courseList)? emitCurrentUserCourseListStream,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(UploadCourseToFirebase value)
        uploadCourseToFirebase,
    required TResult Function(UploadModuleToFirebase value)
        uploadModuleToFirebase,
    required TResult Function(UploadLessonToFirebase value)
        uploadLessonToFirebase,
    required TResult Function(UploadLessonImageOrVideoOrDescription value)
        uploadLessonImageOrVideoOrDescription,
    required TResult Function(UpdateUserProfile value) updateUserProfile,
    required TResult Function(ListenAllCourse value) listenAllCourse,
    required TResult Function(ListenCurrentUserOwnCourse value)
        listenCurrentUserOwnCourses,
    required TResult Function(GetCurrentCourseModules value)
        getCurrentCourseModules,
    required TResult Function(GetCurrentModuleLessons value)
        getCurrentModuleLessons,
    required TResult Function(GetCurrentLessonLessonContents value)
        getCurrentLessonLessonContents,
    required TResult Function(EmitCourseListStream value) emitCourseListStream,
    required TResult Function(EmitCurrentUserCourseListStream value)
        emitCurrentUserCourseListStream,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(UploadCourseToFirebase value)? uploadCourseToFirebase,
    TResult Function(UploadModuleToFirebase value)? uploadModuleToFirebase,
    TResult Function(UploadLessonToFirebase value)? uploadLessonToFirebase,
    TResult Function(UploadLessonImageOrVideoOrDescription value)?
        uploadLessonImageOrVideoOrDescription,
    TResult Function(UpdateUserProfile value)? updateUserProfile,
    TResult Function(ListenAllCourse value)? listenAllCourse,
    TResult Function(ListenCurrentUserOwnCourse value)?
        listenCurrentUserOwnCourses,
    TResult Function(GetCurrentCourseModules value)? getCurrentCourseModules,
    TResult Function(GetCurrentModuleLessons value)? getCurrentModuleLessons,
    TResult Function(GetCurrentLessonLessonContents value)?
        getCurrentLessonLessonContents,
    TResult Function(EmitCourseListStream value)? emitCourseListStream,
    TResult Function(EmitCurrentUserCourseListStream value)?
        emitCurrentUserCourseListStream,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UploadCourseToFirebase value)? uploadCourseToFirebase,
    TResult Function(UploadModuleToFirebase value)? uploadModuleToFirebase,
    TResult Function(UploadLessonToFirebase value)? uploadLessonToFirebase,
    TResult Function(UploadLessonImageOrVideoOrDescription value)?
        uploadLessonImageOrVideoOrDescription,
    TResult Function(UpdateUserProfile value)? updateUserProfile,
    TResult Function(ListenAllCourse value)? listenAllCourse,
    TResult Function(ListenCurrentUserOwnCourse value)?
        listenCurrentUserOwnCourses,
    TResult Function(GetCurrentCourseModules value)? getCurrentCourseModules,
    TResult Function(GetCurrentModuleLessons value)? getCurrentModuleLessons,
    TResult Function(GetCurrentLessonLessonContents value)?
        getCurrentLessonLessonContents,
    TResult Function(EmitCourseListStream value)? emitCourseListStream,
    TResult Function(EmitCurrentUserCourseListStream value)?
        emitCurrentUserCourseListStream,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DataEventCopyWith<$Res> {
  factory $DataEventCopyWith(DataEvent value, $Res Function(DataEvent) then) =
      _$DataEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$DataEventCopyWithImpl<$Res> implements $DataEventCopyWith<$Res> {
  _$DataEventCopyWithImpl(this._value, this._then);

  final DataEvent _value;
  // ignore: unused_field
  final $Res Function(DataEvent) _then;
}

/// @nodoc
abstract class $UploadCourseToFirebaseCopyWith<$Res> {
  factory $UploadCourseToFirebaseCopyWith(UploadCourseToFirebase value,
          $Res Function(UploadCourseToFirebase) then) =
      _$UploadCourseToFirebaseCopyWithImpl<$Res>;
  $Res call({Course course});

  $CourseCopyWith<$Res> get course;
}

/// @nodoc
class _$UploadCourseToFirebaseCopyWithImpl<$Res>
    extends _$DataEventCopyWithImpl<$Res>
    implements $UploadCourseToFirebaseCopyWith<$Res> {
  _$UploadCourseToFirebaseCopyWithImpl(UploadCourseToFirebase _value,
      $Res Function(UploadCourseToFirebase) _then)
      : super(_value, (v) => _then(v as UploadCourseToFirebase));

  @override
  UploadCourseToFirebase get _value => super._value as UploadCourseToFirebase;

  @override
  $Res call({
    Object? course = freezed,
  }) {
    return _then(UploadCourseToFirebase(
      course: course == freezed
          ? _value.course
          : course // ignore: cast_nullable_to_non_nullable
              as Course,
    ));
  }

  @override
  $CourseCopyWith<$Res> get course {
    return $CourseCopyWith<$Res>(_value.course, (value) {
      return _then(_value.copyWith(course: value));
    });
  }
}

/// @nodoc

class _$UploadCourseToFirebase implements UploadCourseToFirebase {
  const _$UploadCourseToFirebase({required this.course});

  @override
  final Course course;

  @override
  String toString() {
    return 'DataEvent.uploadCourseToFirebase(course: $course)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is UploadCourseToFirebase &&
            (identical(other.course, course) || other.course == course));
  }

  @override
  int get hashCode => Object.hash(runtimeType, course);

  @JsonKey(ignore: true)
  @override
  $UploadCourseToFirebaseCopyWith<UploadCourseToFirebase> get copyWith =>
      _$UploadCourseToFirebaseCopyWithImpl<UploadCourseToFirebase>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Course course) uploadCourseToFirebase,
    required TResult Function(Module module, String courseId)
        uploadModuleToFirebase,
    required TResult Function(Lesson listLesson, String moduleId)
        uploadLessonToFirebase,
    required TResult Function(
            List<LessonImageOrDescriptionOrVideo> lesson, String lessonId)
        uploadLessonImageOrVideoOrDescription,
    required TResult Function(UserModal userModal) updateUserProfile,
    required TResult Function() listenAllCourse,
    required TResult Function() listenCurrentUserOwnCourses,
    required TResult Function(String courseId) getCurrentCourseModules,
    required TResult Function(String moduleId) getCurrentModuleLessons,
    required TResult Function(String lessonId) getCurrentLessonLessonContents,
    required TResult Function(List<Course> courseList) emitCourseListStream,
    required TResult Function(List<Course> courseList)
        emitCurrentUserCourseListStream,
  }) {
    return uploadCourseToFirebase(course);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(Course course)? uploadCourseToFirebase,
    TResult Function(Module module, String courseId)? uploadModuleToFirebase,
    TResult Function(Lesson listLesson, String moduleId)?
        uploadLessonToFirebase,
    TResult Function(
            List<LessonImageOrDescriptionOrVideo> lesson, String lessonId)?
        uploadLessonImageOrVideoOrDescription,
    TResult Function(UserModal userModal)? updateUserProfile,
    TResult Function()? listenAllCourse,
    TResult Function()? listenCurrentUserOwnCourses,
    TResult Function(String courseId)? getCurrentCourseModules,
    TResult Function(String moduleId)? getCurrentModuleLessons,
    TResult Function(String lessonId)? getCurrentLessonLessonContents,
    TResult Function(List<Course> courseList)? emitCourseListStream,
    TResult Function(List<Course> courseList)? emitCurrentUserCourseListStream,
  }) {
    return uploadCourseToFirebase?.call(course);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Course course)? uploadCourseToFirebase,
    TResult Function(Module module, String courseId)? uploadModuleToFirebase,
    TResult Function(Lesson listLesson, String moduleId)?
        uploadLessonToFirebase,
    TResult Function(
            List<LessonImageOrDescriptionOrVideo> lesson, String lessonId)?
        uploadLessonImageOrVideoOrDescription,
    TResult Function(UserModal userModal)? updateUserProfile,
    TResult Function()? listenAllCourse,
    TResult Function()? listenCurrentUserOwnCourses,
    TResult Function(String courseId)? getCurrentCourseModules,
    TResult Function(String moduleId)? getCurrentModuleLessons,
    TResult Function(String lessonId)? getCurrentLessonLessonContents,
    TResult Function(List<Course> courseList)? emitCourseListStream,
    TResult Function(List<Course> courseList)? emitCurrentUserCourseListStream,
    required TResult orElse(),
  }) {
    if (uploadCourseToFirebase != null) {
      return uploadCourseToFirebase(course);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(UploadCourseToFirebase value)
        uploadCourseToFirebase,
    required TResult Function(UploadModuleToFirebase value)
        uploadModuleToFirebase,
    required TResult Function(UploadLessonToFirebase value)
        uploadLessonToFirebase,
    required TResult Function(UploadLessonImageOrVideoOrDescription value)
        uploadLessonImageOrVideoOrDescription,
    required TResult Function(UpdateUserProfile value) updateUserProfile,
    required TResult Function(ListenAllCourse value) listenAllCourse,
    required TResult Function(ListenCurrentUserOwnCourse value)
        listenCurrentUserOwnCourses,
    required TResult Function(GetCurrentCourseModules value)
        getCurrentCourseModules,
    required TResult Function(GetCurrentModuleLessons value)
        getCurrentModuleLessons,
    required TResult Function(GetCurrentLessonLessonContents value)
        getCurrentLessonLessonContents,
    required TResult Function(EmitCourseListStream value) emitCourseListStream,
    required TResult Function(EmitCurrentUserCourseListStream value)
        emitCurrentUserCourseListStream,
  }) {
    return uploadCourseToFirebase(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(UploadCourseToFirebase value)? uploadCourseToFirebase,
    TResult Function(UploadModuleToFirebase value)? uploadModuleToFirebase,
    TResult Function(UploadLessonToFirebase value)? uploadLessonToFirebase,
    TResult Function(UploadLessonImageOrVideoOrDescription value)?
        uploadLessonImageOrVideoOrDescription,
    TResult Function(UpdateUserProfile value)? updateUserProfile,
    TResult Function(ListenAllCourse value)? listenAllCourse,
    TResult Function(ListenCurrentUserOwnCourse value)?
        listenCurrentUserOwnCourses,
    TResult Function(GetCurrentCourseModules value)? getCurrentCourseModules,
    TResult Function(GetCurrentModuleLessons value)? getCurrentModuleLessons,
    TResult Function(GetCurrentLessonLessonContents value)?
        getCurrentLessonLessonContents,
    TResult Function(EmitCourseListStream value)? emitCourseListStream,
    TResult Function(EmitCurrentUserCourseListStream value)?
        emitCurrentUserCourseListStream,
  }) {
    return uploadCourseToFirebase?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UploadCourseToFirebase value)? uploadCourseToFirebase,
    TResult Function(UploadModuleToFirebase value)? uploadModuleToFirebase,
    TResult Function(UploadLessonToFirebase value)? uploadLessonToFirebase,
    TResult Function(UploadLessonImageOrVideoOrDescription value)?
        uploadLessonImageOrVideoOrDescription,
    TResult Function(UpdateUserProfile value)? updateUserProfile,
    TResult Function(ListenAllCourse value)? listenAllCourse,
    TResult Function(ListenCurrentUserOwnCourse value)?
        listenCurrentUserOwnCourses,
    TResult Function(GetCurrentCourseModules value)? getCurrentCourseModules,
    TResult Function(GetCurrentModuleLessons value)? getCurrentModuleLessons,
    TResult Function(GetCurrentLessonLessonContents value)?
        getCurrentLessonLessonContents,
    TResult Function(EmitCourseListStream value)? emitCourseListStream,
    TResult Function(EmitCurrentUserCourseListStream value)?
        emitCurrentUserCourseListStream,
    required TResult orElse(),
  }) {
    if (uploadCourseToFirebase != null) {
      return uploadCourseToFirebase(this);
    }
    return orElse();
  }
}

abstract class UploadCourseToFirebase implements DataEvent {
  const factory UploadCourseToFirebase({required Course course}) =
      _$UploadCourseToFirebase;

  Course get course;
  @JsonKey(ignore: true)
  $UploadCourseToFirebaseCopyWith<UploadCourseToFirebase> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UploadModuleToFirebaseCopyWith<$Res> {
  factory $UploadModuleToFirebaseCopyWith(UploadModuleToFirebase value,
          $Res Function(UploadModuleToFirebase) then) =
      _$UploadModuleToFirebaseCopyWithImpl<$Res>;
  $Res call({Module module, String courseId});

  $ModuleCopyWith<$Res> get module;
}

/// @nodoc
class _$UploadModuleToFirebaseCopyWithImpl<$Res>
    extends _$DataEventCopyWithImpl<$Res>
    implements $UploadModuleToFirebaseCopyWith<$Res> {
  _$UploadModuleToFirebaseCopyWithImpl(UploadModuleToFirebase _value,
      $Res Function(UploadModuleToFirebase) _then)
      : super(_value, (v) => _then(v as UploadModuleToFirebase));

  @override
  UploadModuleToFirebase get _value => super._value as UploadModuleToFirebase;

  @override
  $Res call({
    Object? module = freezed,
    Object? courseId = freezed,
  }) {
    return _then(UploadModuleToFirebase(
      module: module == freezed
          ? _value.module
          : module // ignore: cast_nullable_to_non_nullable
              as Module,
      courseId: courseId == freezed
          ? _value.courseId
          : courseId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }

  @override
  $ModuleCopyWith<$Res> get module {
    return $ModuleCopyWith<$Res>(_value.module, (value) {
      return _then(_value.copyWith(module: value));
    });
  }
}

/// @nodoc

class _$UploadModuleToFirebase implements UploadModuleToFirebase {
  const _$UploadModuleToFirebase(
      {required this.module, required this.courseId});

  @override
  final Module module;
  @override
  final String courseId;

  @override
  String toString() {
    return 'DataEvent.uploadModuleToFirebase(module: $module, courseId: $courseId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is UploadModuleToFirebase &&
            (identical(other.module, module) || other.module == module) &&
            (identical(other.courseId, courseId) ||
                other.courseId == courseId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, module, courseId);

  @JsonKey(ignore: true)
  @override
  $UploadModuleToFirebaseCopyWith<UploadModuleToFirebase> get copyWith =>
      _$UploadModuleToFirebaseCopyWithImpl<UploadModuleToFirebase>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Course course) uploadCourseToFirebase,
    required TResult Function(Module module, String courseId)
        uploadModuleToFirebase,
    required TResult Function(Lesson listLesson, String moduleId)
        uploadLessonToFirebase,
    required TResult Function(
            List<LessonImageOrDescriptionOrVideo> lesson, String lessonId)
        uploadLessonImageOrVideoOrDescription,
    required TResult Function(UserModal userModal) updateUserProfile,
    required TResult Function() listenAllCourse,
    required TResult Function() listenCurrentUserOwnCourses,
    required TResult Function(String courseId) getCurrentCourseModules,
    required TResult Function(String moduleId) getCurrentModuleLessons,
    required TResult Function(String lessonId) getCurrentLessonLessonContents,
    required TResult Function(List<Course> courseList) emitCourseListStream,
    required TResult Function(List<Course> courseList)
        emitCurrentUserCourseListStream,
  }) {
    return uploadModuleToFirebase(module, courseId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(Course course)? uploadCourseToFirebase,
    TResult Function(Module module, String courseId)? uploadModuleToFirebase,
    TResult Function(Lesson listLesson, String moduleId)?
        uploadLessonToFirebase,
    TResult Function(
            List<LessonImageOrDescriptionOrVideo> lesson, String lessonId)?
        uploadLessonImageOrVideoOrDescription,
    TResult Function(UserModal userModal)? updateUserProfile,
    TResult Function()? listenAllCourse,
    TResult Function()? listenCurrentUserOwnCourses,
    TResult Function(String courseId)? getCurrentCourseModules,
    TResult Function(String moduleId)? getCurrentModuleLessons,
    TResult Function(String lessonId)? getCurrentLessonLessonContents,
    TResult Function(List<Course> courseList)? emitCourseListStream,
    TResult Function(List<Course> courseList)? emitCurrentUserCourseListStream,
  }) {
    return uploadModuleToFirebase?.call(module, courseId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Course course)? uploadCourseToFirebase,
    TResult Function(Module module, String courseId)? uploadModuleToFirebase,
    TResult Function(Lesson listLesson, String moduleId)?
        uploadLessonToFirebase,
    TResult Function(
            List<LessonImageOrDescriptionOrVideo> lesson, String lessonId)?
        uploadLessonImageOrVideoOrDescription,
    TResult Function(UserModal userModal)? updateUserProfile,
    TResult Function()? listenAllCourse,
    TResult Function()? listenCurrentUserOwnCourses,
    TResult Function(String courseId)? getCurrentCourseModules,
    TResult Function(String moduleId)? getCurrentModuleLessons,
    TResult Function(String lessonId)? getCurrentLessonLessonContents,
    TResult Function(List<Course> courseList)? emitCourseListStream,
    TResult Function(List<Course> courseList)? emitCurrentUserCourseListStream,
    required TResult orElse(),
  }) {
    if (uploadModuleToFirebase != null) {
      return uploadModuleToFirebase(module, courseId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(UploadCourseToFirebase value)
        uploadCourseToFirebase,
    required TResult Function(UploadModuleToFirebase value)
        uploadModuleToFirebase,
    required TResult Function(UploadLessonToFirebase value)
        uploadLessonToFirebase,
    required TResult Function(UploadLessonImageOrVideoOrDescription value)
        uploadLessonImageOrVideoOrDescription,
    required TResult Function(UpdateUserProfile value) updateUserProfile,
    required TResult Function(ListenAllCourse value) listenAllCourse,
    required TResult Function(ListenCurrentUserOwnCourse value)
        listenCurrentUserOwnCourses,
    required TResult Function(GetCurrentCourseModules value)
        getCurrentCourseModules,
    required TResult Function(GetCurrentModuleLessons value)
        getCurrentModuleLessons,
    required TResult Function(GetCurrentLessonLessonContents value)
        getCurrentLessonLessonContents,
    required TResult Function(EmitCourseListStream value) emitCourseListStream,
    required TResult Function(EmitCurrentUserCourseListStream value)
        emitCurrentUserCourseListStream,
  }) {
    return uploadModuleToFirebase(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(UploadCourseToFirebase value)? uploadCourseToFirebase,
    TResult Function(UploadModuleToFirebase value)? uploadModuleToFirebase,
    TResult Function(UploadLessonToFirebase value)? uploadLessonToFirebase,
    TResult Function(UploadLessonImageOrVideoOrDescription value)?
        uploadLessonImageOrVideoOrDescription,
    TResult Function(UpdateUserProfile value)? updateUserProfile,
    TResult Function(ListenAllCourse value)? listenAllCourse,
    TResult Function(ListenCurrentUserOwnCourse value)?
        listenCurrentUserOwnCourses,
    TResult Function(GetCurrentCourseModules value)? getCurrentCourseModules,
    TResult Function(GetCurrentModuleLessons value)? getCurrentModuleLessons,
    TResult Function(GetCurrentLessonLessonContents value)?
        getCurrentLessonLessonContents,
    TResult Function(EmitCourseListStream value)? emitCourseListStream,
    TResult Function(EmitCurrentUserCourseListStream value)?
        emitCurrentUserCourseListStream,
  }) {
    return uploadModuleToFirebase?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UploadCourseToFirebase value)? uploadCourseToFirebase,
    TResult Function(UploadModuleToFirebase value)? uploadModuleToFirebase,
    TResult Function(UploadLessonToFirebase value)? uploadLessonToFirebase,
    TResult Function(UploadLessonImageOrVideoOrDescription value)?
        uploadLessonImageOrVideoOrDescription,
    TResult Function(UpdateUserProfile value)? updateUserProfile,
    TResult Function(ListenAllCourse value)? listenAllCourse,
    TResult Function(ListenCurrentUserOwnCourse value)?
        listenCurrentUserOwnCourses,
    TResult Function(GetCurrentCourseModules value)? getCurrentCourseModules,
    TResult Function(GetCurrentModuleLessons value)? getCurrentModuleLessons,
    TResult Function(GetCurrentLessonLessonContents value)?
        getCurrentLessonLessonContents,
    TResult Function(EmitCourseListStream value)? emitCourseListStream,
    TResult Function(EmitCurrentUserCourseListStream value)?
        emitCurrentUserCourseListStream,
    required TResult orElse(),
  }) {
    if (uploadModuleToFirebase != null) {
      return uploadModuleToFirebase(this);
    }
    return orElse();
  }
}

abstract class UploadModuleToFirebase implements DataEvent {
  const factory UploadModuleToFirebase(
      {required Module module,
      required String courseId}) = _$UploadModuleToFirebase;

  Module get module;
  String get courseId;
  @JsonKey(ignore: true)
  $UploadModuleToFirebaseCopyWith<UploadModuleToFirebase> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UploadLessonToFirebaseCopyWith<$Res> {
  factory $UploadLessonToFirebaseCopyWith(UploadLessonToFirebase value,
          $Res Function(UploadLessonToFirebase) then) =
      _$UploadLessonToFirebaseCopyWithImpl<$Res>;
  $Res call({Lesson listLesson, String moduleId});

  $LessonCopyWith<$Res> get listLesson;
}

/// @nodoc
class _$UploadLessonToFirebaseCopyWithImpl<$Res>
    extends _$DataEventCopyWithImpl<$Res>
    implements $UploadLessonToFirebaseCopyWith<$Res> {
  _$UploadLessonToFirebaseCopyWithImpl(UploadLessonToFirebase _value,
      $Res Function(UploadLessonToFirebase) _then)
      : super(_value, (v) => _then(v as UploadLessonToFirebase));

  @override
  UploadLessonToFirebase get _value => super._value as UploadLessonToFirebase;

  @override
  $Res call({
    Object? listLesson = freezed,
    Object? moduleId = freezed,
  }) {
    return _then(UploadLessonToFirebase(
      listLesson: listLesson == freezed
          ? _value.listLesson
          : listLesson // ignore: cast_nullable_to_non_nullable
              as Lesson,
      moduleId: moduleId == freezed
          ? _value.moduleId
          : moduleId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }

  @override
  $LessonCopyWith<$Res> get listLesson {
    return $LessonCopyWith<$Res>(_value.listLesson, (value) {
      return _then(_value.copyWith(listLesson: value));
    });
  }
}

/// @nodoc

class _$UploadLessonToFirebase implements UploadLessonToFirebase {
  const _$UploadLessonToFirebase(
      {required this.listLesson, required this.moduleId});

  @override
  final Lesson listLesson;
  @override
  final String moduleId;

  @override
  String toString() {
    return 'DataEvent.uploadLessonToFirebase(listLesson: $listLesson, moduleId: $moduleId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is UploadLessonToFirebase &&
            (identical(other.listLesson, listLesson) ||
                other.listLesson == listLesson) &&
            (identical(other.moduleId, moduleId) ||
                other.moduleId == moduleId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, listLesson, moduleId);

  @JsonKey(ignore: true)
  @override
  $UploadLessonToFirebaseCopyWith<UploadLessonToFirebase> get copyWith =>
      _$UploadLessonToFirebaseCopyWithImpl<UploadLessonToFirebase>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Course course) uploadCourseToFirebase,
    required TResult Function(Module module, String courseId)
        uploadModuleToFirebase,
    required TResult Function(Lesson listLesson, String moduleId)
        uploadLessonToFirebase,
    required TResult Function(
            List<LessonImageOrDescriptionOrVideo> lesson, String lessonId)
        uploadLessonImageOrVideoOrDescription,
    required TResult Function(UserModal userModal) updateUserProfile,
    required TResult Function() listenAllCourse,
    required TResult Function() listenCurrentUserOwnCourses,
    required TResult Function(String courseId) getCurrentCourseModules,
    required TResult Function(String moduleId) getCurrentModuleLessons,
    required TResult Function(String lessonId) getCurrentLessonLessonContents,
    required TResult Function(List<Course> courseList) emitCourseListStream,
    required TResult Function(List<Course> courseList)
        emitCurrentUserCourseListStream,
  }) {
    return uploadLessonToFirebase(listLesson, moduleId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(Course course)? uploadCourseToFirebase,
    TResult Function(Module module, String courseId)? uploadModuleToFirebase,
    TResult Function(Lesson listLesson, String moduleId)?
        uploadLessonToFirebase,
    TResult Function(
            List<LessonImageOrDescriptionOrVideo> lesson, String lessonId)?
        uploadLessonImageOrVideoOrDescription,
    TResult Function(UserModal userModal)? updateUserProfile,
    TResult Function()? listenAllCourse,
    TResult Function()? listenCurrentUserOwnCourses,
    TResult Function(String courseId)? getCurrentCourseModules,
    TResult Function(String moduleId)? getCurrentModuleLessons,
    TResult Function(String lessonId)? getCurrentLessonLessonContents,
    TResult Function(List<Course> courseList)? emitCourseListStream,
    TResult Function(List<Course> courseList)? emitCurrentUserCourseListStream,
  }) {
    return uploadLessonToFirebase?.call(listLesson, moduleId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Course course)? uploadCourseToFirebase,
    TResult Function(Module module, String courseId)? uploadModuleToFirebase,
    TResult Function(Lesson listLesson, String moduleId)?
        uploadLessonToFirebase,
    TResult Function(
            List<LessonImageOrDescriptionOrVideo> lesson, String lessonId)?
        uploadLessonImageOrVideoOrDescription,
    TResult Function(UserModal userModal)? updateUserProfile,
    TResult Function()? listenAllCourse,
    TResult Function()? listenCurrentUserOwnCourses,
    TResult Function(String courseId)? getCurrentCourseModules,
    TResult Function(String moduleId)? getCurrentModuleLessons,
    TResult Function(String lessonId)? getCurrentLessonLessonContents,
    TResult Function(List<Course> courseList)? emitCourseListStream,
    TResult Function(List<Course> courseList)? emitCurrentUserCourseListStream,
    required TResult orElse(),
  }) {
    if (uploadLessonToFirebase != null) {
      return uploadLessonToFirebase(listLesson, moduleId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(UploadCourseToFirebase value)
        uploadCourseToFirebase,
    required TResult Function(UploadModuleToFirebase value)
        uploadModuleToFirebase,
    required TResult Function(UploadLessonToFirebase value)
        uploadLessonToFirebase,
    required TResult Function(UploadLessonImageOrVideoOrDescription value)
        uploadLessonImageOrVideoOrDescription,
    required TResult Function(UpdateUserProfile value) updateUserProfile,
    required TResult Function(ListenAllCourse value) listenAllCourse,
    required TResult Function(ListenCurrentUserOwnCourse value)
        listenCurrentUserOwnCourses,
    required TResult Function(GetCurrentCourseModules value)
        getCurrentCourseModules,
    required TResult Function(GetCurrentModuleLessons value)
        getCurrentModuleLessons,
    required TResult Function(GetCurrentLessonLessonContents value)
        getCurrentLessonLessonContents,
    required TResult Function(EmitCourseListStream value) emitCourseListStream,
    required TResult Function(EmitCurrentUserCourseListStream value)
        emitCurrentUserCourseListStream,
  }) {
    return uploadLessonToFirebase(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(UploadCourseToFirebase value)? uploadCourseToFirebase,
    TResult Function(UploadModuleToFirebase value)? uploadModuleToFirebase,
    TResult Function(UploadLessonToFirebase value)? uploadLessonToFirebase,
    TResult Function(UploadLessonImageOrVideoOrDescription value)?
        uploadLessonImageOrVideoOrDescription,
    TResult Function(UpdateUserProfile value)? updateUserProfile,
    TResult Function(ListenAllCourse value)? listenAllCourse,
    TResult Function(ListenCurrentUserOwnCourse value)?
        listenCurrentUserOwnCourses,
    TResult Function(GetCurrentCourseModules value)? getCurrentCourseModules,
    TResult Function(GetCurrentModuleLessons value)? getCurrentModuleLessons,
    TResult Function(GetCurrentLessonLessonContents value)?
        getCurrentLessonLessonContents,
    TResult Function(EmitCourseListStream value)? emitCourseListStream,
    TResult Function(EmitCurrentUserCourseListStream value)?
        emitCurrentUserCourseListStream,
  }) {
    return uploadLessonToFirebase?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UploadCourseToFirebase value)? uploadCourseToFirebase,
    TResult Function(UploadModuleToFirebase value)? uploadModuleToFirebase,
    TResult Function(UploadLessonToFirebase value)? uploadLessonToFirebase,
    TResult Function(UploadLessonImageOrVideoOrDescription value)?
        uploadLessonImageOrVideoOrDescription,
    TResult Function(UpdateUserProfile value)? updateUserProfile,
    TResult Function(ListenAllCourse value)? listenAllCourse,
    TResult Function(ListenCurrentUserOwnCourse value)?
        listenCurrentUserOwnCourses,
    TResult Function(GetCurrentCourseModules value)? getCurrentCourseModules,
    TResult Function(GetCurrentModuleLessons value)? getCurrentModuleLessons,
    TResult Function(GetCurrentLessonLessonContents value)?
        getCurrentLessonLessonContents,
    TResult Function(EmitCourseListStream value)? emitCourseListStream,
    TResult Function(EmitCurrentUserCourseListStream value)?
        emitCurrentUserCourseListStream,
    required TResult orElse(),
  }) {
    if (uploadLessonToFirebase != null) {
      return uploadLessonToFirebase(this);
    }
    return orElse();
  }
}

abstract class UploadLessonToFirebase implements DataEvent {
  const factory UploadLessonToFirebase(
      {required Lesson listLesson,
      required String moduleId}) = _$UploadLessonToFirebase;

  Lesson get listLesson;
  String get moduleId;
  @JsonKey(ignore: true)
  $UploadLessonToFirebaseCopyWith<UploadLessonToFirebase> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UploadLessonImageOrVideoOrDescriptionCopyWith<$Res> {
  factory $UploadLessonImageOrVideoOrDescriptionCopyWith(
          UploadLessonImageOrVideoOrDescription value,
          $Res Function(UploadLessonImageOrVideoOrDescription) then) =
      _$UploadLessonImageOrVideoOrDescriptionCopyWithImpl<$Res>;
  $Res call({List<LessonImageOrDescriptionOrVideo> lesson, String lessonId});
}

/// @nodoc
class _$UploadLessonImageOrVideoOrDescriptionCopyWithImpl<$Res>
    extends _$DataEventCopyWithImpl<$Res>
    implements $UploadLessonImageOrVideoOrDescriptionCopyWith<$Res> {
  _$UploadLessonImageOrVideoOrDescriptionCopyWithImpl(
      UploadLessonImageOrVideoOrDescription _value,
      $Res Function(UploadLessonImageOrVideoOrDescription) _then)
      : super(_value, (v) => _then(v as UploadLessonImageOrVideoOrDescription));

  @override
  UploadLessonImageOrVideoOrDescription get _value =>
      super._value as UploadLessonImageOrVideoOrDescription;

  @override
  $Res call({
    Object? lesson = freezed,
    Object? lessonId = freezed,
  }) {
    return _then(UploadLessonImageOrVideoOrDescription(
      lesson: lesson == freezed
          ? _value.lesson
          : lesson // ignore: cast_nullable_to_non_nullable
              as List<LessonImageOrDescriptionOrVideo>,
      lessonId: lessonId == freezed
          ? _value.lessonId
          : lessonId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$UploadLessonImageOrVideoOrDescription
    implements UploadLessonImageOrVideoOrDescription {
  const _$UploadLessonImageOrVideoOrDescription(
      {required this.lesson, required this.lessonId});

  @override
  final List<LessonImageOrDescriptionOrVideo> lesson;
  @override
  final String lessonId;

  @override
  String toString() {
    return 'DataEvent.uploadLessonImageOrVideoOrDescription(lesson: $lesson, lessonId: $lessonId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is UploadLessonImageOrVideoOrDescription &&
            const DeepCollectionEquality().equals(other.lesson, lesson) &&
            (identical(other.lessonId, lessonId) ||
                other.lessonId == lessonId));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(lesson), lessonId);

  @JsonKey(ignore: true)
  @override
  $UploadLessonImageOrVideoOrDescriptionCopyWith<
          UploadLessonImageOrVideoOrDescription>
      get copyWith => _$UploadLessonImageOrVideoOrDescriptionCopyWithImpl<
          UploadLessonImageOrVideoOrDescription>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Course course) uploadCourseToFirebase,
    required TResult Function(Module module, String courseId)
        uploadModuleToFirebase,
    required TResult Function(Lesson listLesson, String moduleId)
        uploadLessonToFirebase,
    required TResult Function(
            List<LessonImageOrDescriptionOrVideo> lesson, String lessonId)
        uploadLessonImageOrVideoOrDescription,
    required TResult Function(UserModal userModal) updateUserProfile,
    required TResult Function() listenAllCourse,
    required TResult Function() listenCurrentUserOwnCourses,
    required TResult Function(String courseId) getCurrentCourseModules,
    required TResult Function(String moduleId) getCurrentModuleLessons,
    required TResult Function(String lessonId) getCurrentLessonLessonContents,
    required TResult Function(List<Course> courseList) emitCourseListStream,
    required TResult Function(List<Course> courseList)
        emitCurrentUserCourseListStream,
  }) {
    return uploadLessonImageOrVideoOrDescription(lesson, lessonId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(Course course)? uploadCourseToFirebase,
    TResult Function(Module module, String courseId)? uploadModuleToFirebase,
    TResult Function(Lesson listLesson, String moduleId)?
        uploadLessonToFirebase,
    TResult Function(
            List<LessonImageOrDescriptionOrVideo> lesson, String lessonId)?
        uploadLessonImageOrVideoOrDescription,
    TResult Function(UserModal userModal)? updateUserProfile,
    TResult Function()? listenAllCourse,
    TResult Function()? listenCurrentUserOwnCourses,
    TResult Function(String courseId)? getCurrentCourseModules,
    TResult Function(String moduleId)? getCurrentModuleLessons,
    TResult Function(String lessonId)? getCurrentLessonLessonContents,
    TResult Function(List<Course> courseList)? emitCourseListStream,
    TResult Function(List<Course> courseList)? emitCurrentUserCourseListStream,
  }) {
    return uploadLessonImageOrVideoOrDescription?.call(lesson, lessonId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Course course)? uploadCourseToFirebase,
    TResult Function(Module module, String courseId)? uploadModuleToFirebase,
    TResult Function(Lesson listLesson, String moduleId)?
        uploadLessonToFirebase,
    TResult Function(
            List<LessonImageOrDescriptionOrVideo> lesson, String lessonId)?
        uploadLessonImageOrVideoOrDescription,
    TResult Function(UserModal userModal)? updateUserProfile,
    TResult Function()? listenAllCourse,
    TResult Function()? listenCurrentUserOwnCourses,
    TResult Function(String courseId)? getCurrentCourseModules,
    TResult Function(String moduleId)? getCurrentModuleLessons,
    TResult Function(String lessonId)? getCurrentLessonLessonContents,
    TResult Function(List<Course> courseList)? emitCourseListStream,
    TResult Function(List<Course> courseList)? emitCurrentUserCourseListStream,
    required TResult orElse(),
  }) {
    if (uploadLessonImageOrVideoOrDescription != null) {
      return uploadLessonImageOrVideoOrDescription(lesson, lessonId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(UploadCourseToFirebase value)
        uploadCourseToFirebase,
    required TResult Function(UploadModuleToFirebase value)
        uploadModuleToFirebase,
    required TResult Function(UploadLessonToFirebase value)
        uploadLessonToFirebase,
    required TResult Function(UploadLessonImageOrVideoOrDescription value)
        uploadLessonImageOrVideoOrDescription,
    required TResult Function(UpdateUserProfile value) updateUserProfile,
    required TResult Function(ListenAllCourse value) listenAllCourse,
    required TResult Function(ListenCurrentUserOwnCourse value)
        listenCurrentUserOwnCourses,
    required TResult Function(GetCurrentCourseModules value)
        getCurrentCourseModules,
    required TResult Function(GetCurrentModuleLessons value)
        getCurrentModuleLessons,
    required TResult Function(GetCurrentLessonLessonContents value)
        getCurrentLessonLessonContents,
    required TResult Function(EmitCourseListStream value) emitCourseListStream,
    required TResult Function(EmitCurrentUserCourseListStream value)
        emitCurrentUserCourseListStream,
  }) {
    return uploadLessonImageOrVideoOrDescription(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(UploadCourseToFirebase value)? uploadCourseToFirebase,
    TResult Function(UploadModuleToFirebase value)? uploadModuleToFirebase,
    TResult Function(UploadLessonToFirebase value)? uploadLessonToFirebase,
    TResult Function(UploadLessonImageOrVideoOrDescription value)?
        uploadLessonImageOrVideoOrDescription,
    TResult Function(UpdateUserProfile value)? updateUserProfile,
    TResult Function(ListenAllCourse value)? listenAllCourse,
    TResult Function(ListenCurrentUserOwnCourse value)?
        listenCurrentUserOwnCourses,
    TResult Function(GetCurrentCourseModules value)? getCurrentCourseModules,
    TResult Function(GetCurrentModuleLessons value)? getCurrentModuleLessons,
    TResult Function(GetCurrentLessonLessonContents value)?
        getCurrentLessonLessonContents,
    TResult Function(EmitCourseListStream value)? emitCourseListStream,
    TResult Function(EmitCurrentUserCourseListStream value)?
        emitCurrentUserCourseListStream,
  }) {
    return uploadLessonImageOrVideoOrDescription?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UploadCourseToFirebase value)? uploadCourseToFirebase,
    TResult Function(UploadModuleToFirebase value)? uploadModuleToFirebase,
    TResult Function(UploadLessonToFirebase value)? uploadLessonToFirebase,
    TResult Function(UploadLessonImageOrVideoOrDescription value)?
        uploadLessonImageOrVideoOrDescription,
    TResult Function(UpdateUserProfile value)? updateUserProfile,
    TResult Function(ListenAllCourse value)? listenAllCourse,
    TResult Function(ListenCurrentUserOwnCourse value)?
        listenCurrentUserOwnCourses,
    TResult Function(GetCurrentCourseModules value)? getCurrentCourseModules,
    TResult Function(GetCurrentModuleLessons value)? getCurrentModuleLessons,
    TResult Function(GetCurrentLessonLessonContents value)?
        getCurrentLessonLessonContents,
    TResult Function(EmitCourseListStream value)? emitCourseListStream,
    TResult Function(EmitCurrentUserCourseListStream value)?
        emitCurrentUserCourseListStream,
    required TResult orElse(),
  }) {
    if (uploadLessonImageOrVideoOrDescription != null) {
      return uploadLessonImageOrVideoOrDescription(this);
    }
    return orElse();
  }
}

abstract class UploadLessonImageOrVideoOrDescription implements DataEvent {
  const factory UploadLessonImageOrVideoOrDescription(
      {required List<LessonImageOrDescriptionOrVideo> lesson,
      required String lessonId}) = _$UploadLessonImageOrVideoOrDescription;

  List<LessonImageOrDescriptionOrVideo> get lesson;
  String get lessonId;
  @JsonKey(ignore: true)
  $UploadLessonImageOrVideoOrDescriptionCopyWith<
          UploadLessonImageOrVideoOrDescription>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UpdateUserProfileCopyWith<$Res> {
  factory $UpdateUserProfileCopyWith(
          UpdateUserProfile value, $Res Function(UpdateUserProfile) then) =
      _$UpdateUserProfileCopyWithImpl<$Res>;
  $Res call({UserModal userModal});
}

/// @nodoc
class _$UpdateUserProfileCopyWithImpl<$Res>
    extends _$DataEventCopyWithImpl<$Res>
    implements $UpdateUserProfileCopyWith<$Res> {
  _$UpdateUserProfileCopyWithImpl(
      UpdateUserProfile _value, $Res Function(UpdateUserProfile) _then)
      : super(_value, (v) => _then(v as UpdateUserProfile));

  @override
  UpdateUserProfile get _value => super._value as UpdateUserProfile;

  @override
  $Res call({
    Object? userModal = freezed,
  }) {
    return _then(UpdateUserProfile(
      userModal: userModal == freezed
          ? _value.userModal
          : userModal // ignore: cast_nullable_to_non_nullable
              as UserModal,
    ));
  }
}

/// @nodoc

class _$UpdateUserProfile implements UpdateUserProfile {
  const _$UpdateUserProfile({required this.userModal});

  @override
  final UserModal userModal;

  @override
  String toString() {
    return 'DataEvent.updateUserProfile(userModal: $userModal)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is UpdateUserProfile &&
            (identical(other.userModal, userModal) ||
                other.userModal == userModal));
  }

  @override
  int get hashCode => Object.hash(runtimeType, userModal);

  @JsonKey(ignore: true)
  @override
  $UpdateUserProfileCopyWith<UpdateUserProfile> get copyWith =>
      _$UpdateUserProfileCopyWithImpl<UpdateUserProfile>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Course course) uploadCourseToFirebase,
    required TResult Function(Module module, String courseId)
        uploadModuleToFirebase,
    required TResult Function(Lesson listLesson, String moduleId)
        uploadLessonToFirebase,
    required TResult Function(
            List<LessonImageOrDescriptionOrVideo> lesson, String lessonId)
        uploadLessonImageOrVideoOrDescription,
    required TResult Function(UserModal userModal) updateUserProfile,
    required TResult Function() listenAllCourse,
    required TResult Function() listenCurrentUserOwnCourses,
    required TResult Function(String courseId) getCurrentCourseModules,
    required TResult Function(String moduleId) getCurrentModuleLessons,
    required TResult Function(String lessonId) getCurrentLessonLessonContents,
    required TResult Function(List<Course> courseList) emitCourseListStream,
    required TResult Function(List<Course> courseList)
        emitCurrentUserCourseListStream,
  }) {
    return updateUserProfile(userModal);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(Course course)? uploadCourseToFirebase,
    TResult Function(Module module, String courseId)? uploadModuleToFirebase,
    TResult Function(Lesson listLesson, String moduleId)?
        uploadLessonToFirebase,
    TResult Function(
            List<LessonImageOrDescriptionOrVideo> lesson, String lessonId)?
        uploadLessonImageOrVideoOrDescription,
    TResult Function(UserModal userModal)? updateUserProfile,
    TResult Function()? listenAllCourse,
    TResult Function()? listenCurrentUserOwnCourses,
    TResult Function(String courseId)? getCurrentCourseModules,
    TResult Function(String moduleId)? getCurrentModuleLessons,
    TResult Function(String lessonId)? getCurrentLessonLessonContents,
    TResult Function(List<Course> courseList)? emitCourseListStream,
    TResult Function(List<Course> courseList)? emitCurrentUserCourseListStream,
  }) {
    return updateUserProfile?.call(userModal);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Course course)? uploadCourseToFirebase,
    TResult Function(Module module, String courseId)? uploadModuleToFirebase,
    TResult Function(Lesson listLesson, String moduleId)?
        uploadLessonToFirebase,
    TResult Function(
            List<LessonImageOrDescriptionOrVideo> lesson, String lessonId)?
        uploadLessonImageOrVideoOrDescription,
    TResult Function(UserModal userModal)? updateUserProfile,
    TResult Function()? listenAllCourse,
    TResult Function()? listenCurrentUserOwnCourses,
    TResult Function(String courseId)? getCurrentCourseModules,
    TResult Function(String moduleId)? getCurrentModuleLessons,
    TResult Function(String lessonId)? getCurrentLessonLessonContents,
    TResult Function(List<Course> courseList)? emitCourseListStream,
    TResult Function(List<Course> courseList)? emitCurrentUserCourseListStream,
    required TResult orElse(),
  }) {
    if (updateUserProfile != null) {
      return updateUserProfile(userModal);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(UploadCourseToFirebase value)
        uploadCourseToFirebase,
    required TResult Function(UploadModuleToFirebase value)
        uploadModuleToFirebase,
    required TResult Function(UploadLessonToFirebase value)
        uploadLessonToFirebase,
    required TResult Function(UploadLessonImageOrVideoOrDescription value)
        uploadLessonImageOrVideoOrDescription,
    required TResult Function(UpdateUserProfile value) updateUserProfile,
    required TResult Function(ListenAllCourse value) listenAllCourse,
    required TResult Function(ListenCurrentUserOwnCourse value)
        listenCurrentUserOwnCourses,
    required TResult Function(GetCurrentCourseModules value)
        getCurrentCourseModules,
    required TResult Function(GetCurrentModuleLessons value)
        getCurrentModuleLessons,
    required TResult Function(GetCurrentLessonLessonContents value)
        getCurrentLessonLessonContents,
    required TResult Function(EmitCourseListStream value) emitCourseListStream,
    required TResult Function(EmitCurrentUserCourseListStream value)
        emitCurrentUserCourseListStream,
  }) {
    return updateUserProfile(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(UploadCourseToFirebase value)? uploadCourseToFirebase,
    TResult Function(UploadModuleToFirebase value)? uploadModuleToFirebase,
    TResult Function(UploadLessonToFirebase value)? uploadLessonToFirebase,
    TResult Function(UploadLessonImageOrVideoOrDescription value)?
        uploadLessonImageOrVideoOrDescription,
    TResult Function(UpdateUserProfile value)? updateUserProfile,
    TResult Function(ListenAllCourse value)? listenAllCourse,
    TResult Function(ListenCurrentUserOwnCourse value)?
        listenCurrentUserOwnCourses,
    TResult Function(GetCurrentCourseModules value)? getCurrentCourseModules,
    TResult Function(GetCurrentModuleLessons value)? getCurrentModuleLessons,
    TResult Function(GetCurrentLessonLessonContents value)?
        getCurrentLessonLessonContents,
    TResult Function(EmitCourseListStream value)? emitCourseListStream,
    TResult Function(EmitCurrentUserCourseListStream value)?
        emitCurrentUserCourseListStream,
  }) {
    return updateUserProfile?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UploadCourseToFirebase value)? uploadCourseToFirebase,
    TResult Function(UploadModuleToFirebase value)? uploadModuleToFirebase,
    TResult Function(UploadLessonToFirebase value)? uploadLessonToFirebase,
    TResult Function(UploadLessonImageOrVideoOrDescription value)?
        uploadLessonImageOrVideoOrDescription,
    TResult Function(UpdateUserProfile value)? updateUserProfile,
    TResult Function(ListenAllCourse value)? listenAllCourse,
    TResult Function(ListenCurrentUserOwnCourse value)?
        listenCurrentUserOwnCourses,
    TResult Function(GetCurrentCourseModules value)? getCurrentCourseModules,
    TResult Function(GetCurrentModuleLessons value)? getCurrentModuleLessons,
    TResult Function(GetCurrentLessonLessonContents value)?
        getCurrentLessonLessonContents,
    TResult Function(EmitCourseListStream value)? emitCourseListStream,
    TResult Function(EmitCurrentUserCourseListStream value)?
        emitCurrentUserCourseListStream,
    required TResult orElse(),
  }) {
    if (updateUserProfile != null) {
      return updateUserProfile(this);
    }
    return orElse();
  }
}

abstract class UpdateUserProfile implements DataEvent {
  const factory UpdateUserProfile({required UserModal userModal}) =
      _$UpdateUserProfile;

  UserModal get userModal;
  @JsonKey(ignore: true)
  $UpdateUserProfileCopyWith<UpdateUserProfile> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ListenAllCourseCopyWith<$Res> {
  factory $ListenAllCourseCopyWith(
          ListenAllCourse value, $Res Function(ListenAllCourse) then) =
      _$ListenAllCourseCopyWithImpl<$Res>;
}

/// @nodoc
class _$ListenAllCourseCopyWithImpl<$Res> extends _$DataEventCopyWithImpl<$Res>
    implements $ListenAllCourseCopyWith<$Res> {
  _$ListenAllCourseCopyWithImpl(
      ListenAllCourse _value, $Res Function(ListenAllCourse) _then)
      : super(_value, (v) => _then(v as ListenAllCourse));

  @override
  ListenAllCourse get _value => super._value as ListenAllCourse;
}

/// @nodoc

class _$ListenAllCourse implements ListenAllCourse {
  const _$ListenAllCourse();

  @override
  String toString() {
    return 'DataEvent.listenAllCourse()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is ListenAllCourse);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Course course) uploadCourseToFirebase,
    required TResult Function(Module module, String courseId)
        uploadModuleToFirebase,
    required TResult Function(Lesson listLesson, String moduleId)
        uploadLessonToFirebase,
    required TResult Function(
            List<LessonImageOrDescriptionOrVideo> lesson, String lessonId)
        uploadLessonImageOrVideoOrDescription,
    required TResult Function(UserModal userModal) updateUserProfile,
    required TResult Function() listenAllCourse,
    required TResult Function() listenCurrentUserOwnCourses,
    required TResult Function(String courseId) getCurrentCourseModules,
    required TResult Function(String moduleId) getCurrentModuleLessons,
    required TResult Function(String lessonId) getCurrentLessonLessonContents,
    required TResult Function(List<Course> courseList) emitCourseListStream,
    required TResult Function(List<Course> courseList)
        emitCurrentUserCourseListStream,
  }) {
    return listenAllCourse();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(Course course)? uploadCourseToFirebase,
    TResult Function(Module module, String courseId)? uploadModuleToFirebase,
    TResult Function(Lesson listLesson, String moduleId)?
        uploadLessonToFirebase,
    TResult Function(
            List<LessonImageOrDescriptionOrVideo> lesson, String lessonId)?
        uploadLessonImageOrVideoOrDescription,
    TResult Function(UserModal userModal)? updateUserProfile,
    TResult Function()? listenAllCourse,
    TResult Function()? listenCurrentUserOwnCourses,
    TResult Function(String courseId)? getCurrentCourseModules,
    TResult Function(String moduleId)? getCurrentModuleLessons,
    TResult Function(String lessonId)? getCurrentLessonLessonContents,
    TResult Function(List<Course> courseList)? emitCourseListStream,
    TResult Function(List<Course> courseList)? emitCurrentUserCourseListStream,
  }) {
    return listenAllCourse?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Course course)? uploadCourseToFirebase,
    TResult Function(Module module, String courseId)? uploadModuleToFirebase,
    TResult Function(Lesson listLesson, String moduleId)?
        uploadLessonToFirebase,
    TResult Function(
            List<LessonImageOrDescriptionOrVideo> lesson, String lessonId)?
        uploadLessonImageOrVideoOrDescription,
    TResult Function(UserModal userModal)? updateUserProfile,
    TResult Function()? listenAllCourse,
    TResult Function()? listenCurrentUserOwnCourses,
    TResult Function(String courseId)? getCurrentCourseModules,
    TResult Function(String moduleId)? getCurrentModuleLessons,
    TResult Function(String lessonId)? getCurrentLessonLessonContents,
    TResult Function(List<Course> courseList)? emitCourseListStream,
    TResult Function(List<Course> courseList)? emitCurrentUserCourseListStream,
    required TResult orElse(),
  }) {
    if (listenAllCourse != null) {
      return listenAllCourse();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(UploadCourseToFirebase value)
        uploadCourseToFirebase,
    required TResult Function(UploadModuleToFirebase value)
        uploadModuleToFirebase,
    required TResult Function(UploadLessonToFirebase value)
        uploadLessonToFirebase,
    required TResult Function(UploadLessonImageOrVideoOrDescription value)
        uploadLessonImageOrVideoOrDescription,
    required TResult Function(UpdateUserProfile value) updateUserProfile,
    required TResult Function(ListenAllCourse value) listenAllCourse,
    required TResult Function(ListenCurrentUserOwnCourse value)
        listenCurrentUserOwnCourses,
    required TResult Function(GetCurrentCourseModules value)
        getCurrentCourseModules,
    required TResult Function(GetCurrentModuleLessons value)
        getCurrentModuleLessons,
    required TResult Function(GetCurrentLessonLessonContents value)
        getCurrentLessonLessonContents,
    required TResult Function(EmitCourseListStream value) emitCourseListStream,
    required TResult Function(EmitCurrentUserCourseListStream value)
        emitCurrentUserCourseListStream,
  }) {
    return listenAllCourse(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(UploadCourseToFirebase value)? uploadCourseToFirebase,
    TResult Function(UploadModuleToFirebase value)? uploadModuleToFirebase,
    TResult Function(UploadLessonToFirebase value)? uploadLessonToFirebase,
    TResult Function(UploadLessonImageOrVideoOrDescription value)?
        uploadLessonImageOrVideoOrDescription,
    TResult Function(UpdateUserProfile value)? updateUserProfile,
    TResult Function(ListenAllCourse value)? listenAllCourse,
    TResult Function(ListenCurrentUserOwnCourse value)?
        listenCurrentUserOwnCourses,
    TResult Function(GetCurrentCourseModules value)? getCurrentCourseModules,
    TResult Function(GetCurrentModuleLessons value)? getCurrentModuleLessons,
    TResult Function(GetCurrentLessonLessonContents value)?
        getCurrentLessonLessonContents,
    TResult Function(EmitCourseListStream value)? emitCourseListStream,
    TResult Function(EmitCurrentUserCourseListStream value)?
        emitCurrentUserCourseListStream,
  }) {
    return listenAllCourse?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UploadCourseToFirebase value)? uploadCourseToFirebase,
    TResult Function(UploadModuleToFirebase value)? uploadModuleToFirebase,
    TResult Function(UploadLessonToFirebase value)? uploadLessonToFirebase,
    TResult Function(UploadLessonImageOrVideoOrDescription value)?
        uploadLessonImageOrVideoOrDescription,
    TResult Function(UpdateUserProfile value)? updateUserProfile,
    TResult Function(ListenAllCourse value)? listenAllCourse,
    TResult Function(ListenCurrentUserOwnCourse value)?
        listenCurrentUserOwnCourses,
    TResult Function(GetCurrentCourseModules value)? getCurrentCourseModules,
    TResult Function(GetCurrentModuleLessons value)? getCurrentModuleLessons,
    TResult Function(GetCurrentLessonLessonContents value)?
        getCurrentLessonLessonContents,
    TResult Function(EmitCourseListStream value)? emitCourseListStream,
    TResult Function(EmitCurrentUserCourseListStream value)?
        emitCurrentUserCourseListStream,
    required TResult orElse(),
  }) {
    if (listenAllCourse != null) {
      return listenAllCourse(this);
    }
    return orElse();
  }
}

abstract class ListenAllCourse implements DataEvent {
  const factory ListenAllCourse() = _$ListenAllCourse;
}

/// @nodoc
abstract class $ListenCurrentUserOwnCourseCopyWith<$Res> {
  factory $ListenCurrentUserOwnCourseCopyWith(ListenCurrentUserOwnCourse value,
          $Res Function(ListenCurrentUserOwnCourse) then) =
      _$ListenCurrentUserOwnCourseCopyWithImpl<$Res>;
}

/// @nodoc
class _$ListenCurrentUserOwnCourseCopyWithImpl<$Res>
    extends _$DataEventCopyWithImpl<$Res>
    implements $ListenCurrentUserOwnCourseCopyWith<$Res> {
  _$ListenCurrentUserOwnCourseCopyWithImpl(ListenCurrentUserOwnCourse _value,
      $Res Function(ListenCurrentUserOwnCourse) _then)
      : super(_value, (v) => _then(v as ListenCurrentUserOwnCourse));

  @override
  ListenCurrentUserOwnCourse get _value =>
      super._value as ListenCurrentUserOwnCourse;
}

/// @nodoc

class _$ListenCurrentUserOwnCourse implements ListenCurrentUserOwnCourse {
  const _$ListenCurrentUserOwnCourse();

  @override
  String toString() {
    return 'DataEvent.listenCurrentUserOwnCourses()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is ListenCurrentUserOwnCourse);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Course course) uploadCourseToFirebase,
    required TResult Function(Module module, String courseId)
        uploadModuleToFirebase,
    required TResult Function(Lesson listLesson, String moduleId)
        uploadLessonToFirebase,
    required TResult Function(
            List<LessonImageOrDescriptionOrVideo> lesson, String lessonId)
        uploadLessonImageOrVideoOrDescription,
    required TResult Function(UserModal userModal) updateUserProfile,
    required TResult Function() listenAllCourse,
    required TResult Function() listenCurrentUserOwnCourses,
    required TResult Function(String courseId) getCurrentCourseModules,
    required TResult Function(String moduleId) getCurrentModuleLessons,
    required TResult Function(String lessonId) getCurrentLessonLessonContents,
    required TResult Function(List<Course> courseList) emitCourseListStream,
    required TResult Function(List<Course> courseList)
        emitCurrentUserCourseListStream,
  }) {
    return listenCurrentUserOwnCourses();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(Course course)? uploadCourseToFirebase,
    TResult Function(Module module, String courseId)? uploadModuleToFirebase,
    TResult Function(Lesson listLesson, String moduleId)?
        uploadLessonToFirebase,
    TResult Function(
            List<LessonImageOrDescriptionOrVideo> lesson, String lessonId)?
        uploadLessonImageOrVideoOrDescription,
    TResult Function(UserModal userModal)? updateUserProfile,
    TResult Function()? listenAllCourse,
    TResult Function()? listenCurrentUserOwnCourses,
    TResult Function(String courseId)? getCurrentCourseModules,
    TResult Function(String moduleId)? getCurrentModuleLessons,
    TResult Function(String lessonId)? getCurrentLessonLessonContents,
    TResult Function(List<Course> courseList)? emitCourseListStream,
    TResult Function(List<Course> courseList)? emitCurrentUserCourseListStream,
  }) {
    return listenCurrentUserOwnCourses?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Course course)? uploadCourseToFirebase,
    TResult Function(Module module, String courseId)? uploadModuleToFirebase,
    TResult Function(Lesson listLesson, String moduleId)?
        uploadLessonToFirebase,
    TResult Function(
            List<LessonImageOrDescriptionOrVideo> lesson, String lessonId)?
        uploadLessonImageOrVideoOrDescription,
    TResult Function(UserModal userModal)? updateUserProfile,
    TResult Function()? listenAllCourse,
    TResult Function()? listenCurrentUserOwnCourses,
    TResult Function(String courseId)? getCurrentCourseModules,
    TResult Function(String moduleId)? getCurrentModuleLessons,
    TResult Function(String lessonId)? getCurrentLessonLessonContents,
    TResult Function(List<Course> courseList)? emitCourseListStream,
    TResult Function(List<Course> courseList)? emitCurrentUserCourseListStream,
    required TResult orElse(),
  }) {
    if (listenCurrentUserOwnCourses != null) {
      return listenCurrentUserOwnCourses();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(UploadCourseToFirebase value)
        uploadCourseToFirebase,
    required TResult Function(UploadModuleToFirebase value)
        uploadModuleToFirebase,
    required TResult Function(UploadLessonToFirebase value)
        uploadLessonToFirebase,
    required TResult Function(UploadLessonImageOrVideoOrDescription value)
        uploadLessonImageOrVideoOrDescription,
    required TResult Function(UpdateUserProfile value) updateUserProfile,
    required TResult Function(ListenAllCourse value) listenAllCourse,
    required TResult Function(ListenCurrentUserOwnCourse value)
        listenCurrentUserOwnCourses,
    required TResult Function(GetCurrentCourseModules value)
        getCurrentCourseModules,
    required TResult Function(GetCurrentModuleLessons value)
        getCurrentModuleLessons,
    required TResult Function(GetCurrentLessonLessonContents value)
        getCurrentLessonLessonContents,
    required TResult Function(EmitCourseListStream value) emitCourseListStream,
    required TResult Function(EmitCurrentUserCourseListStream value)
        emitCurrentUserCourseListStream,
  }) {
    return listenCurrentUserOwnCourses(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(UploadCourseToFirebase value)? uploadCourseToFirebase,
    TResult Function(UploadModuleToFirebase value)? uploadModuleToFirebase,
    TResult Function(UploadLessonToFirebase value)? uploadLessonToFirebase,
    TResult Function(UploadLessonImageOrVideoOrDescription value)?
        uploadLessonImageOrVideoOrDescription,
    TResult Function(UpdateUserProfile value)? updateUserProfile,
    TResult Function(ListenAllCourse value)? listenAllCourse,
    TResult Function(ListenCurrentUserOwnCourse value)?
        listenCurrentUserOwnCourses,
    TResult Function(GetCurrentCourseModules value)? getCurrentCourseModules,
    TResult Function(GetCurrentModuleLessons value)? getCurrentModuleLessons,
    TResult Function(GetCurrentLessonLessonContents value)?
        getCurrentLessonLessonContents,
    TResult Function(EmitCourseListStream value)? emitCourseListStream,
    TResult Function(EmitCurrentUserCourseListStream value)?
        emitCurrentUserCourseListStream,
  }) {
    return listenCurrentUserOwnCourses?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UploadCourseToFirebase value)? uploadCourseToFirebase,
    TResult Function(UploadModuleToFirebase value)? uploadModuleToFirebase,
    TResult Function(UploadLessonToFirebase value)? uploadLessonToFirebase,
    TResult Function(UploadLessonImageOrVideoOrDescription value)?
        uploadLessonImageOrVideoOrDescription,
    TResult Function(UpdateUserProfile value)? updateUserProfile,
    TResult Function(ListenAllCourse value)? listenAllCourse,
    TResult Function(ListenCurrentUserOwnCourse value)?
        listenCurrentUserOwnCourses,
    TResult Function(GetCurrentCourseModules value)? getCurrentCourseModules,
    TResult Function(GetCurrentModuleLessons value)? getCurrentModuleLessons,
    TResult Function(GetCurrentLessonLessonContents value)?
        getCurrentLessonLessonContents,
    TResult Function(EmitCourseListStream value)? emitCourseListStream,
    TResult Function(EmitCurrentUserCourseListStream value)?
        emitCurrentUserCourseListStream,
    required TResult orElse(),
  }) {
    if (listenCurrentUserOwnCourses != null) {
      return listenCurrentUserOwnCourses(this);
    }
    return orElse();
  }
}

abstract class ListenCurrentUserOwnCourse implements DataEvent {
  const factory ListenCurrentUserOwnCourse() = _$ListenCurrentUserOwnCourse;
}

/// @nodoc
abstract class $GetCurrentCourseModulesCopyWith<$Res> {
  factory $GetCurrentCourseModulesCopyWith(GetCurrentCourseModules value,
          $Res Function(GetCurrentCourseModules) then) =
      _$GetCurrentCourseModulesCopyWithImpl<$Res>;
  $Res call({String courseId});
}

/// @nodoc
class _$GetCurrentCourseModulesCopyWithImpl<$Res>
    extends _$DataEventCopyWithImpl<$Res>
    implements $GetCurrentCourseModulesCopyWith<$Res> {
  _$GetCurrentCourseModulesCopyWithImpl(GetCurrentCourseModules _value,
      $Res Function(GetCurrentCourseModules) _then)
      : super(_value, (v) => _then(v as GetCurrentCourseModules));

  @override
  GetCurrentCourseModules get _value => super._value as GetCurrentCourseModules;

  @override
  $Res call({
    Object? courseId = freezed,
  }) {
    return _then(GetCurrentCourseModules(
      courseId: courseId == freezed
          ? _value.courseId
          : courseId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$GetCurrentCourseModules implements GetCurrentCourseModules {
  const _$GetCurrentCourseModules({required this.courseId});

  @override
  final String courseId;

  @override
  String toString() {
    return 'DataEvent.getCurrentCourseModules(courseId: $courseId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is GetCurrentCourseModules &&
            (identical(other.courseId, courseId) ||
                other.courseId == courseId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, courseId);

  @JsonKey(ignore: true)
  @override
  $GetCurrentCourseModulesCopyWith<GetCurrentCourseModules> get copyWith =>
      _$GetCurrentCourseModulesCopyWithImpl<GetCurrentCourseModules>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Course course) uploadCourseToFirebase,
    required TResult Function(Module module, String courseId)
        uploadModuleToFirebase,
    required TResult Function(Lesson listLesson, String moduleId)
        uploadLessonToFirebase,
    required TResult Function(
            List<LessonImageOrDescriptionOrVideo> lesson, String lessonId)
        uploadLessonImageOrVideoOrDescription,
    required TResult Function(UserModal userModal) updateUserProfile,
    required TResult Function() listenAllCourse,
    required TResult Function() listenCurrentUserOwnCourses,
    required TResult Function(String courseId) getCurrentCourseModules,
    required TResult Function(String moduleId) getCurrentModuleLessons,
    required TResult Function(String lessonId) getCurrentLessonLessonContents,
    required TResult Function(List<Course> courseList) emitCourseListStream,
    required TResult Function(List<Course> courseList)
        emitCurrentUserCourseListStream,
  }) {
    return getCurrentCourseModules(courseId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(Course course)? uploadCourseToFirebase,
    TResult Function(Module module, String courseId)? uploadModuleToFirebase,
    TResult Function(Lesson listLesson, String moduleId)?
        uploadLessonToFirebase,
    TResult Function(
            List<LessonImageOrDescriptionOrVideo> lesson, String lessonId)?
        uploadLessonImageOrVideoOrDescription,
    TResult Function(UserModal userModal)? updateUserProfile,
    TResult Function()? listenAllCourse,
    TResult Function()? listenCurrentUserOwnCourses,
    TResult Function(String courseId)? getCurrentCourseModules,
    TResult Function(String moduleId)? getCurrentModuleLessons,
    TResult Function(String lessonId)? getCurrentLessonLessonContents,
    TResult Function(List<Course> courseList)? emitCourseListStream,
    TResult Function(List<Course> courseList)? emitCurrentUserCourseListStream,
  }) {
    return getCurrentCourseModules?.call(courseId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Course course)? uploadCourseToFirebase,
    TResult Function(Module module, String courseId)? uploadModuleToFirebase,
    TResult Function(Lesson listLesson, String moduleId)?
        uploadLessonToFirebase,
    TResult Function(
            List<LessonImageOrDescriptionOrVideo> lesson, String lessonId)?
        uploadLessonImageOrVideoOrDescription,
    TResult Function(UserModal userModal)? updateUserProfile,
    TResult Function()? listenAllCourse,
    TResult Function()? listenCurrentUserOwnCourses,
    TResult Function(String courseId)? getCurrentCourseModules,
    TResult Function(String moduleId)? getCurrentModuleLessons,
    TResult Function(String lessonId)? getCurrentLessonLessonContents,
    TResult Function(List<Course> courseList)? emitCourseListStream,
    TResult Function(List<Course> courseList)? emitCurrentUserCourseListStream,
    required TResult orElse(),
  }) {
    if (getCurrentCourseModules != null) {
      return getCurrentCourseModules(courseId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(UploadCourseToFirebase value)
        uploadCourseToFirebase,
    required TResult Function(UploadModuleToFirebase value)
        uploadModuleToFirebase,
    required TResult Function(UploadLessonToFirebase value)
        uploadLessonToFirebase,
    required TResult Function(UploadLessonImageOrVideoOrDescription value)
        uploadLessonImageOrVideoOrDescription,
    required TResult Function(UpdateUserProfile value) updateUserProfile,
    required TResult Function(ListenAllCourse value) listenAllCourse,
    required TResult Function(ListenCurrentUserOwnCourse value)
        listenCurrentUserOwnCourses,
    required TResult Function(GetCurrentCourseModules value)
        getCurrentCourseModules,
    required TResult Function(GetCurrentModuleLessons value)
        getCurrentModuleLessons,
    required TResult Function(GetCurrentLessonLessonContents value)
        getCurrentLessonLessonContents,
    required TResult Function(EmitCourseListStream value) emitCourseListStream,
    required TResult Function(EmitCurrentUserCourseListStream value)
        emitCurrentUserCourseListStream,
  }) {
    return getCurrentCourseModules(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(UploadCourseToFirebase value)? uploadCourseToFirebase,
    TResult Function(UploadModuleToFirebase value)? uploadModuleToFirebase,
    TResult Function(UploadLessonToFirebase value)? uploadLessonToFirebase,
    TResult Function(UploadLessonImageOrVideoOrDescription value)?
        uploadLessonImageOrVideoOrDescription,
    TResult Function(UpdateUserProfile value)? updateUserProfile,
    TResult Function(ListenAllCourse value)? listenAllCourse,
    TResult Function(ListenCurrentUserOwnCourse value)?
        listenCurrentUserOwnCourses,
    TResult Function(GetCurrentCourseModules value)? getCurrentCourseModules,
    TResult Function(GetCurrentModuleLessons value)? getCurrentModuleLessons,
    TResult Function(GetCurrentLessonLessonContents value)?
        getCurrentLessonLessonContents,
    TResult Function(EmitCourseListStream value)? emitCourseListStream,
    TResult Function(EmitCurrentUserCourseListStream value)?
        emitCurrentUserCourseListStream,
  }) {
    return getCurrentCourseModules?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UploadCourseToFirebase value)? uploadCourseToFirebase,
    TResult Function(UploadModuleToFirebase value)? uploadModuleToFirebase,
    TResult Function(UploadLessonToFirebase value)? uploadLessonToFirebase,
    TResult Function(UploadLessonImageOrVideoOrDescription value)?
        uploadLessonImageOrVideoOrDescription,
    TResult Function(UpdateUserProfile value)? updateUserProfile,
    TResult Function(ListenAllCourse value)? listenAllCourse,
    TResult Function(ListenCurrentUserOwnCourse value)?
        listenCurrentUserOwnCourses,
    TResult Function(GetCurrentCourseModules value)? getCurrentCourseModules,
    TResult Function(GetCurrentModuleLessons value)? getCurrentModuleLessons,
    TResult Function(GetCurrentLessonLessonContents value)?
        getCurrentLessonLessonContents,
    TResult Function(EmitCourseListStream value)? emitCourseListStream,
    TResult Function(EmitCurrentUserCourseListStream value)?
        emitCurrentUserCourseListStream,
    required TResult orElse(),
  }) {
    if (getCurrentCourseModules != null) {
      return getCurrentCourseModules(this);
    }
    return orElse();
  }
}

abstract class GetCurrentCourseModules implements DataEvent {
  const factory GetCurrentCourseModules({required String courseId}) =
      _$GetCurrentCourseModules;

  String get courseId;
  @JsonKey(ignore: true)
  $GetCurrentCourseModulesCopyWith<GetCurrentCourseModules> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetCurrentModuleLessonsCopyWith<$Res> {
  factory $GetCurrentModuleLessonsCopyWith(GetCurrentModuleLessons value,
          $Res Function(GetCurrentModuleLessons) then) =
      _$GetCurrentModuleLessonsCopyWithImpl<$Res>;
  $Res call({String moduleId});
}

/// @nodoc
class _$GetCurrentModuleLessonsCopyWithImpl<$Res>
    extends _$DataEventCopyWithImpl<$Res>
    implements $GetCurrentModuleLessonsCopyWith<$Res> {
  _$GetCurrentModuleLessonsCopyWithImpl(GetCurrentModuleLessons _value,
      $Res Function(GetCurrentModuleLessons) _then)
      : super(_value, (v) => _then(v as GetCurrentModuleLessons));

  @override
  GetCurrentModuleLessons get _value => super._value as GetCurrentModuleLessons;

  @override
  $Res call({
    Object? moduleId = freezed,
  }) {
    return _then(GetCurrentModuleLessons(
      moduleId: moduleId == freezed
          ? _value.moduleId
          : moduleId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$GetCurrentModuleLessons implements GetCurrentModuleLessons {
  const _$GetCurrentModuleLessons({required this.moduleId});

  @override
  final String moduleId;

  @override
  String toString() {
    return 'DataEvent.getCurrentModuleLessons(moduleId: $moduleId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is GetCurrentModuleLessons &&
            (identical(other.moduleId, moduleId) ||
                other.moduleId == moduleId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, moduleId);

  @JsonKey(ignore: true)
  @override
  $GetCurrentModuleLessonsCopyWith<GetCurrentModuleLessons> get copyWith =>
      _$GetCurrentModuleLessonsCopyWithImpl<GetCurrentModuleLessons>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Course course) uploadCourseToFirebase,
    required TResult Function(Module module, String courseId)
        uploadModuleToFirebase,
    required TResult Function(Lesson listLesson, String moduleId)
        uploadLessonToFirebase,
    required TResult Function(
            List<LessonImageOrDescriptionOrVideo> lesson, String lessonId)
        uploadLessonImageOrVideoOrDescription,
    required TResult Function(UserModal userModal) updateUserProfile,
    required TResult Function() listenAllCourse,
    required TResult Function() listenCurrentUserOwnCourses,
    required TResult Function(String courseId) getCurrentCourseModules,
    required TResult Function(String moduleId) getCurrentModuleLessons,
    required TResult Function(String lessonId) getCurrentLessonLessonContents,
    required TResult Function(List<Course> courseList) emitCourseListStream,
    required TResult Function(List<Course> courseList)
        emitCurrentUserCourseListStream,
  }) {
    return getCurrentModuleLessons(moduleId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(Course course)? uploadCourseToFirebase,
    TResult Function(Module module, String courseId)? uploadModuleToFirebase,
    TResult Function(Lesson listLesson, String moduleId)?
        uploadLessonToFirebase,
    TResult Function(
            List<LessonImageOrDescriptionOrVideo> lesson, String lessonId)?
        uploadLessonImageOrVideoOrDescription,
    TResult Function(UserModal userModal)? updateUserProfile,
    TResult Function()? listenAllCourse,
    TResult Function()? listenCurrentUserOwnCourses,
    TResult Function(String courseId)? getCurrentCourseModules,
    TResult Function(String moduleId)? getCurrentModuleLessons,
    TResult Function(String lessonId)? getCurrentLessonLessonContents,
    TResult Function(List<Course> courseList)? emitCourseListStream,
    TResult Function(List<Course> courseList)? emitCurrentUserCourseListStream,
  }) {
    return getCurrentModuleLessons?.call(moduleId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Course course)? uploadCourseToFirebase,
    TResult Function(Module module, String courseId)? uploadModuleToFirebase,
    TResult Function(Lesson listLesson, String moduleId)?
        uploadLessonToFirebase,
    TResult Function(
            List<LessonImageOrDescriptionOrVideo> lesson, String lessonId)?
        uploadLessonImageOrVideoOrDescription,
    TResult Function(UserModal userModal)? updateUserProfile,
    TResult Function()? listenAllCourse,
    TResult Function()? listenCurrentUserOwnCourses,
    TResult Function(String courseId)? getCurrentCourseModules,
    TResult Function(String moduleId)? getCurrentModuleLessons,
    TResult Function(String lessonId)? getCurrentLessonLessonContents,
    TResult Function(List<Course> courseList)? emitCourseListStream,
    TResult Function(List<Course> courseList)? emitCurrentUserCourseListStream,
    required TResult orElse(),
  }) {
    if (getCurrentModuleLessons != null) {
      return getCurrentModuleLessons(moduleId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(UploadCourseToFirebase value)
        uploadCourseToFirebase,
    required TResult Function(UploadModuleToFirebase value)
        uploadModuleToFirebase,
    required TResult Function(UploadLessonToFirebase value)
        uploadLessonToFirebase,
    required TResult Function(UploadLessonImageOrVideoOrDescription value)
        uploadLessonImageOrVideoOrDescription,
    required TResult Function(UpdateUserProfile value) updateUserProfile,
    required TResult Function(ListenAllCourse value) listenAllCourse,
    required TResult Function(ListenCurrentUserOwnCourse value)
        listenCurrentUserOwnCourses,
    required TResult Function(GetCurrentCourseModules value)
        getCurrentCourseModules,
    required TResult Function(GetCurrentModuleLessons value)
        getCurrentModuleLessons,
    required TResult Function(GetCurrentLessonLessonContents value)
        getCurrentLessonLessonContents,
    required TResult Function(EmitCourseListStream value) emitCourseListStream,
    required TResult Function(EmitCurrentUserCourseListStream value)
        emitCurrentUserCourseListStream,
  }) {
    return getCurrentModuleLessons(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(UploadCourseToFirebase value)? uploadCourseToFirebase,
    TResult Function(UploadModuleToFirebase value)? uploadModuleToFirebase,
    TResult Function(UploadLessonToFirebase value)? uploadLessonToFirebase,
    TResult Function(UploadLessonImageOrVideoOrDescription value)?
        uploadLessonImageOrVideoOrDescription,
    TResult Function(UpdateUserProfile value)? updateUserProfile,
    TResult Function(ListenAllCourse value)? listenAllCourse,
    TResult Function(ListenCurrentUserOwnCourse value)?
        listenCurrentUserOwnCourses,
    TResult Function(GetCurrentCourseModules value)? getCurrentCourseModules,
    TResult Function(GetCurrentModuleLessons value)? getCurrentModuleLessons,
    TResult Function(GetCurrentLessonLessonContents value)?
        getCurrentLessonLessonContents,
    TResult Function(EmitCourseListStream value)? emitCourseListStream,
    TResult Function(EmitCurrentUserCourseListStream value)?
        emitCurrentUserCourseListStream,
  }) {
    return getCurrentModuleLessons?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UploadCourseToFirebase value)? uploadCourseToFirebase,
    TResult Function(UploadModuleToFirebase value)? uploadModuleToFirebase,
    TResult Function(UploadLessonToFirebase value)? uploadLessonToFirebase,
    TResult Function(UploadLessonImageOrVideoOrDescription value)?
        uploadLessonImageOrVideoOrDescription,
    TResult Function(UpdateUserProfile value)? updateUserProfile,
    TResult Function(ListenAllCourse value)? listenAllCourse,
    TResult Function(ListenCurrentUserOwnCourse value)?
        listenCurrentUserOwnCourses,
    TResult Function(GetCurrentCourseModules value)? getCurrentCourseModules,
    TResult Function(GetCurrentModuleLessons value)? getCurrentModuleLessons,
    TResult Function(GetCurrentLessonLessonContents value)?
        getCurrentLessonLessonContents,
    TResult Function(EmitCourseListStream value)? emitCourseListStream,
    TResult Function(EmitCurrentUserCourseListStream value)?
        emitCurrentUserCourseListStream,
    required TResult orElse(),
  }) {
    if (getCurrentModuleLessons != null) {
      return getCurrentModuleLessons(this);
    }
    return orElse();
  }
}

abstract class GetCurrentModuleLessons implements DataEvent {
  const factory GetCurrentModuleLessons({required String moduleId}) =
      _$GetCurrentModuleLessons;

  String get moduleId;
  @JsonKey(ignore: true)
  $GetCurrentModuleLessonsCopyWith<GetCurrentModuleLessons> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetCurrentLessonLessonContentsCopyWith<$Res> {
  factory $GetCurrentLessonLessonContentsCopyWith(
          GetCurrentLessonLessonContents value,
          $Res Function(GetCurrentLessonLessonContents) then) =
      _$GetCurrentLessonLessonContentsCopyWithImpl<$Res>;
  $Res call({String lessonId});
}

/// @nodoc
class _$GetCurrentLessonLessonContentsCopyWithImpl<$Res>
    extends _$DataEventCopyWithImpl<$Res>
    implements $GetCurrentLessonLessonContentsCopyWith<$Res> {
  _$GetCurrentLessonLessonContentsCopyWithImpl(
      GetCurrentLessonLessonContents _value,
      $Res Function(GetCurrentLessonLessonContents) _then)
      : super(_value, (v) => _then(v as GetCurrentLessonLessonContents));

  @override
  GetCurrentLessonLessonContents get _value =>
      super._value as GetCurrentLessonLessonContents;

  @override
  $Res call({
    Object? lessonId = freezed,
  }) {
    return _then(GetCurrentLessonLessonContents(
      lessonId: lessonId == freezed
          ? _value.lessonId
          : lessonId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$GetCurrentLessonLessonContents
    implements GetCurrentLessonLessonContents {
  const _$GetCurrentLessonLessonContents({required this.lessonId});

  @override
  final String lessonId;

  @override
  String toString() {
    return 'DataEvent.getCurrentLessonLessonContents(lessonId: $lessonId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is GetCurrentLessonLessonContents &&
            (identical(other.lessonId, lessonId) ||
                other.lessonId == lessonId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, lessonId);

  @JsonKey(ignore: true)
  @override
  $GetCurrentLessonLessonContentsCopyWith<GetCurrentLessonLessonContents>
      get copyWith => _$GetCurrentLessonLessonContentsCopyWithImpl<
          GetCurrentLessonLessonContents>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Course course) uploadCourseToFirebase,
    required TResult Function(Module module, String courseId)
        uploadModuleToFirebase,
    required TResult Function(Lesson listLesson, String moduleId)
        uploadLessonToFirebase,
    required TResult Function(
            List<LessonImageOrDescriptionOrVideo> lesson, String lessonId)
        uploadLessonImageOrVideoOrDescription,
    required TResult Function(UserModal userModal) updateUserProfile,
    required TResult Function() listenAllCourse,
    required TResult Function() listenCurrentUserOwnCourses,
    required TResult Function(String courseId) getCurrentCourseModules,
    required TResult Function(String moduleId) getCurrentModuleLessons,
    required TResult Function(String lessonId) getCurrentLessonLessonContents,
    required TResult Function(List<Course> courseList) emitCourseListStream,
    required TResult Function(List<Course> courseList)
        emitCurrentUserCourseListStream,
  }) {
    return getCurrentLessonLessonContents(lessonId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(Course course)? uploadCourseToFirebase,
    TResult Function(Module module, String courseId)? uploadModuleToFirebase,
    TResult Function(Lesson listLesson, String moduleId)?
        uploadLessonToFirebase,
    TResult Function(
            List<LessonImageOrDescriptionOrVideo> lesson, String lessonId)?
        uploadLessonImageOrVideoOrDescription,
    TResult Function(UserModal userModal)? updateUserProfile,
    TResult Function()? listenAllCourse,
    TResult Function()? listenCurrentUserOwnCourses,
    TResult Function(String courseId)? getCurrentCourseModules,
    TResult Function(String moduleId)? getCurrentModuleLessons,
    TResult Function(String lessonId)? getCurrentLessonLessonContents,
    TResult Function(List<Course> courseList)? emitCourseListStream,
    TResult Function(List<Course> courseList)? emitCurrentUserCourseListStream,
  }) {
    return getCurrentLessonLessonContents?.call(lessonId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Course course)? uploadCourseToFirebase,
    TResult Function(Module module, String courseId)? uploadModuleToFirebase,
    TResult Function(Lesson listLesson, String moduleId)?
        uploadLessonToFirebase,
    TResult Function(
            List<LessonImageOrDescriptionOrVideo> lesson, String lessonId)?
        uploadLessonImageOrVideoOrDescription,
    TResult Function(UserModal userModal)? updateUserProfile,
    TResult Function()? listenAllCourse,
    TResult Function()? listenCurrentUserOwnCourses,
    TResult Function(String courseId)? getCurrentCourseModules,
    TResult Function(String moduleId)? getCurrentModuleLessons,
    TResult Function(String lessonId)? getCurrentLessonLessonContents,
    TResult Function(List<Course> courseList)? emitCourseListStream,
    TResult Function(List<Course> courseList)? emitCurrentUserCourseListStream,
    required TResult orElse(),
  }) {
    if (getCurrentLessonLessonContents != null) {
      return getCurrentLessonLessonContents(lessonId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(UploadCourseToFirebase value)
        uploadCourseToFirebase,
    required TResult Function(UploadModuleToFirebase value)
        uploadModuleToFirebase,
    required TResult Function(UploadLessonToFirebase value)
        uploadLessonToFirebase,
    required TResult Function(UploadLessonImageOrVideoOrDescription value)
        uploadLessonImageOrVideoOrDescription,
    required TResult Function(UpdateUserProfile value) updateUserProfile,
    required TResult Function(ListenAllCourse value) listenAllCourse,
    required TResult Function(ListenCurrentUserOwnCourse value)
        listenCurrentUserOwnCourses,
    required TResult Function(GetCurrentCourseModules value)
        getCurrentCourseModules,
    required TResult Function(GetCurrentModuleLessons value)
        getCurrentModuleLessons,
    required TResult Function(GetCurrentLessonLessonContents value)
        getCurrentLessonLessonContents,
    required TResult Function(EmitCourseListStream value) emitCourseListStream,
    required TResult Function(EmitCurrentUserCourseListStream value)
        emitCurrentUserCourseListStream,
  }) {
    return getCurrentLessonLessonContents(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(UploadCourseToFirebase value)? uploadCourseToFirebase,
    TResult Function(UploadModuleToFirebase value)? uploadModuleToFirebase,
    TResult Function(UploadLessonToFirebase value)? uploadLessonToFirebase,
    TResult Function(UploadLessonImageOrVideoOrDescription value)?
        uploadLessonImageOrVideoOrDescription,
    TResult Function(UpdateUserProfile value)? updateUserProfile,
    TResult Function(ListenAllCourse value)? listenAllCourse,
    TResult Function(ListenCurrentUserOwnCourse value)?
        listenCurrentUserOwnCourses,
    TResult Function(GetCurrentCourseModules value)? getCurrentCourseModules,
    TResult Function(GetCurrentModuleLessons value)? getCurrentModuleLessons,
    TResult Function(GetCurrentLessonLessonContents value)?
        getCurrentLessonLessonContents,
    TResult Function(EmitCourseListStream value)? emitCourseListStream,
    TResult Function(EmitCurrentUserCourseListStream value)?
        emitCurrentUserCourseListStream,
  }) {
    return getCurrentLessonLessonContents?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UploadCourseToFirebase value)? uploadCourseToFirebase,
    TResult Function(UploadModuleToFirebase value)? uploadModuleToFirebase,
    TResult Function(UploadLessonToFirebase value)? uploadLessonToFirebase,
    TResult Function(UploadLessonImageOrVideoOrDescription value)?
        uploadLessonImageOrVideoOrDescription,
    TResult Function(UpdateUserProfile value)? updateUserProfile,
    TResult Function(ListenAllCourse value)? listenAllCourse,
    TResult Function(ListenCurrentUserOwnCourse value)?
        listenCurrentUserOwnCourses,
    TResult Function(GetCurrentCourseModules value)? getCurrentCourseModules,
    TResult Function(GetCurrentModuleLessons value)? getCurrentModuleLessons,
    TResult Function(GetCurrentLessonLessonContents value)?
        getCurrentLessonLessonContents,
    TResult Function(EmitCourseListStream value)? emitCourseListStream,
    TResult Function(EmitCurrentUserCourseListStream value)?
        emitCurrentUserCourseListStream,
    required TResult orElse(),
  }) {
    if (getCurrentLessonLessonContents != null) {
      return getCurrentLessonLessonContents(this);
    }
    return orElse();
  }
}

abstract class GetCurrentLessonLessonContents implements DataEvent {
  const factory GetCurrentLessonLessonContents({required String lessonId}) =
      _$GetCurrentLessonLessonContents;

  String get lessonId;
  @JsonKey(ignore: true)
  $GetCurrentLessonLessonContentsCopyWith<GetCurrentLessonLessonContents>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EmitCourseListStreamCopyWith<$Res> {
  factory $EmitCourseListStreamCopyWith(EmitCourseListStream value,
          $Res Function(EmitCourseListStream) then) =
      _$EmitCourseListStreamCopyWithImpl<$Res>;
  $Res call({List<Course> courseList});
}

/// @nodoc
class _$EmitCourseListStreamCopyWithImpl<$Res>
    extends _$DataEventCopyWithImpl<$Res>
    implements $EmitCourseListStreamCopyWith<$Res> {
  _$EmitCourseListStreamCopyWithImpl(
      EmitCourseListStream _value, $Res Function(EmitCourseListStream) _then)
      : super(_value, (v) => _then(v as EmitCourseListStream));

  @override
  EmitCourseListStream get _value => super._value as EmitCourseListStream;

  @override
  $Res call({
    Object? courseList = freezed,
  }) {
    return _then(EmitCourseListStream(
      courseList: courseList == freezed
          ? _value.courseList
          : courseList // ignore: cast_nullable_to_non_nullable
              as List<Course>,
    ));
  }
}

/// @nodoc

class _$EmitCourseListStream implements EmitCourseListStream {
  const _$EmitCourseListStream({required this.courseList});

  @override
  final List<Course> courseList;

  @override
  String toString() {
    return 'DataEvent.emitCourseListStream(courseList: $courseList)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is EmitCourseListStream &&
            const DeepCollectionEquality()
                .equals(other.courseList, courseList));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(courseList));

  @JsonKey(ignore: true)
  @override
  $EmitCourseListStreamCopyWith<EmitCourseListStream> get copyWith =>
      _$EmitCourseListStreamCopyWithImpl<EmitCourseListStream>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Course course) uploadCourseToFirebase,
    required TResult Function(Module module, String courseId)
        uploadModuleToFirebase,
    required TResult Function(Lesson listLesson, String moduleId)
        uploadLessonToFirebase,
    required TResult Function(
            List<LessonImageOrDescriptionOrVideo> lesson, String lessonId)
        uploadLessonImageOrVideoOrDescription,
    required TResult Function(UserModal userModal) updateUserProfile,
    required TResult Function() listenAllCourse,
    required TResult Function() listenCurrentUserOwnCourses,
    required TResult Function(String courseId) getCurrentCourseModules,
    required TResult Function(String moduleId) getCurrentModuleLessons,
    required TResult Function(String lessonId) getCurrentLessonLessonContents,
    required TResult Function(List<Course> courseList) emitCourseListStream,
    required TResult Function(List<Course> courseList)
        emitCurrentUserCourseListStream,
  }) {
    return emitCourseListStream(courseList);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(Course course)? uploadCourseToFirebase,
    TResult Function(Module module, String courseId)? uploadModuleToFirebase,
    TResult Function(Lesson listLesson, String moduleId)?
        uploadLessonToFirebase,
    TResult Function(
            List<LessonImageOrDescriptionOrVideo> lesson, String lessonId)?
        uploadLessonImageOrVideoOrDescription,
    TResult Function(UserModal userModal)? updateUserProfile,
    TResult Function()? listenAllCourse,
    TResult Function()? listenCurrentUserOwnCourses,
    TResult Function(String courseId)? getCurrentCourseModules,
    TResult Function(String moduleId)? getCurrentModuleLessons,
    TResult Function(String lessonId)? getCurrentLessonLessonContents,
    TResult Function(List<Course> courseList)? emitCourseListStream,
    TResult Function(List<Course> courseList)? emitCurrentUserCourseListStream,
  }) {
    return emitCourseListStream?.call(courseList);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Course course)? uploadCourseToFirebase,
    TResult Function(Module module, String courseId)? uploadModuleToFirebase,
    TResult Function(Lesson listLesson, String moduleId)?
        uploadLessonToFirebase,
    TResult Function(
            List<LessonImageOrDescriptionOrVideo> lesson, String lessonId)?
        uploadLessonImageOrVideoOrDescription,
    TResult Function(UserModal userModal)? updateUserProfile,
    TResult Function()? listenAllCourse,
    TResult Function()? listenCurrentUserOwnCourses,
    TResult Function(String courseId)? getCurrentCourseModules,
    TResult Function(String moduleId)? getCurrentModuleLessons,
    TResult Function(String lessonId)? getCurrentLessonLessonContents,
    TResult Function(List<Course> courseList)? emitCourseListStream,
    TResult Function(List<Course> courseList)? emitCurrentUserCourseListStream,
    required TResult orElse(),
  }) {
    if (emitCourseListStream != null) {
      return emitCourseListStream(courseList);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(UploadCourseToFirebase value)
        uploadCourseToFirebase,
    required TResult Function(UploadModuleToFirebase value)
        uploadModuleToFirebase,
    required TResult Function(UploadLessonToFirebase value)
        uploadLessonToFirebase,
    required TResult Function(UploadLessonImageOrVideoOrDescription value)
        uploadLessonImageOrVideoOrDescription,
    required TResult Function(UpdateUserProfile value) updateUserProfile,
    required TResult Function(ListenAllCourse value) listenAllCourse,
    required TResult Function(ListenCurrentUserOwnCourse value)
        listenCurrentUserOwnCourses,
    required TResult Function(GetCurrentCourseModules value)
        getCurrentCourseModules,
    required TResult Function(GetCurrentModuleLessons value)
        getCurrentModuleLessons,
    required TResult Function(GetCurrentLessonLessonContents value)
        getCurrentLessonLessonContents,
    required TResult Function(EmitCourseListStream value) emitCourseListStream,
    required TResult Function(EmitCurrentUserCourseListStream value)
        emitCurrentUserCourseListStream,
  }) {
    return emitCourseListStream(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(UploadCourseToFirebase value)? uploadCourseToFirebase,
    TResult Function(UploadModuleToFirebase value)? uploadModuleToFirebase,
    TResult Function(UploadLessonToFirebase value)? uploadLessonToFirebase,
    TResult Function(UploadLessonImageOrVideoOrDescription value)?
        uploadLessonImageOrVideoOrDescription,
    TResult Function(UpdateUserProfile value)? updateUserProfile,
    TResult Function(ListenAllCourse value)? listenAllCourse,
    TResult Function(ListenCurrentUserOwnCourse value)?
        listenCurrentUserOwnCourses,
    TResult Function(GetCurrentCourseModules value)? getCurrentCourseModules,
    TResult Function(GetCurrentModuleLessons value)? getCurrentModuleLessons,
    TResult Function(GetCurrentLessonLessonContents value)?
        getCurrentLessonLessonContents,
    TResult Function(EmitCourseListStream value)? emitCourseListStream,
    TResult Function(EmitCurrentUserCourseListStream value)?
        emitCurrentUserCourseListStream,
  }) {
    return emitCourseListStream?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UploadCourseToFirebase value)? uploadCourseToFirebase,
    TResult Function(UploadModuleToFirebase value)? uploadModuleToFirebase,
    TResult Function(UploadLessonToFirebase value)? uploadLessonToFirebase,
    TResult Function(UploadLessonImageOrVideoOrDescription value)?
        uploadLessonImageOrVideoOrDescription,
    TResult Function(UpdateUserProfile value)? updateUserProfile,
    TResult Function(ListenAllCourse value)? listenAllCourse,
    TResult Function(ListenCurrentUserOwnCourse value)?
        listenCurrentUserOwnCourses,
    TResult Function(GetCurrentCourseModules value)? getCurrentCourseModules,
    TResult Function(GetCurrentModuleLessons value)? getCurrentModuleLessons,
    TResult Function(GetCurrentLessonLessonContents value)?
        getCurrentLessonLessonContents,
    TResult Function(EmitCourseListStream value)? emitCourseListStream,
    TResult Function(EmitCurrentUserCourseListStream value)?
        emitCurrentUserCourseListStream,
    required TResult orElse(),
  }) {
    if (emitCourseListStream != null) {
      return emitCourseListStream(this);
    }
    return orElse();
  }
}

abstract class EmitCourseListStream implements DataEvent {
  const factory EmitCourseListStream({required List<Course> courseList}) =
      _$EmitCourseListStream;

  List<Course> get courseList;
  @JsonKey(ignore: true)
  $EmitCourseListStreamCopyWith<EmitCourseListStream> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EmitCurrentUserCourseListStreamCopyWith<$Res> {
  factory $EmitCurrentUserCourseListStreamCopyWith(
          EmitCurrentUserCourseListStream value,
          $Res Function(EmitCurrentUserCourseListStream) then) =
      _$EmitCurrentUserCourseListStreamCopyWithImpl<$Res>;
  $Res call({List<Course> courseList});
}

/// @nodoc
class _$EmitCurrentUserCourseListStreamCopyWithImpl<$Res>
    extends _$DataEventCopyWithImpl<$Res>
    implements $EmitCurrentUserCourseListStreamCopyWith<$Res> {
  _$EmitCurrentUserCourseListStreamCopyWithImpl(
      EmitCurrentUserCourseListStream _value,
      $Res Function(EmitCurrentUserCourseListStream) _then)
      : super(_value, (v) => _then(v as EmitCurrentUserCourseListStream));

  @override
  EmitCurrentUserCourseListStream get _value =>
      super._value as EmitCurrentUserCourseListStream;

  @override
  $Res call({
    Object? courseList = freezed,
  }) {
    return _then(EmitCurrentUserCourseListStream(
      courseList: courseList == freezed
          ? _value.courseList
          : courseList // ignore: cast_nullable_to_non_nullable
              as List<Course>,
    ));
  }
}

/// @nodoc

class _$EmitCurrentUserCourseListStream
    implements EmitCurrentUserCourseListStream {
  const _$EmitCurrentUserCourseListStream({required this.courseList});

  @override
  final List<Course> courseList;

  @override
  String toString() {
    return 'DataEvent.emitCurrentUserCourseListStream(courseList: $courseList)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is EmitCurrentUserCourseListStream &&
            const DeepCollectionEquality()
                .equals(other.courseList, courseList));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(courseList));

  @JsonKey(ignore: true)
  @override
  $EmitCurrentUserCourseListStreamCopyWith<EmitCurrentUserCourseListStream>
      get copyWith => _$EmitCurrentUserCourseListStreamCopyWithImpl<
          EmitCurrentUserCourseListStream>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Course course) uploadCourseToFirebase,
    required TResult Function(Module module, String courseId)
        uploadModuleToFirebase,
    required TResult Function(Lesson listLesson, String moduleId)
        uploadLessonToFirebase,
    required TResult Function(
            List<LessonImageOrDescriptionOrVideo> lesson, String lessonId)
        uploadLessonImageOrVideoOrDescription,
    required TResult Function(UserModal userModal) updateUserProfile,
    required TResult Function() listenAllCourse,
    required TResult Function() listenCurrentUserOwnCourses,
    required TResult Function(String courseId) getCurrentCourseModules,
    required TResult Function(String moduleId) getCurrentModuleLessons,
    required TResult Function(String lessonId) getCurrentLessonLessonContents,
    required TResult Function(List<Course> courseList) emitCourseListStream,
    required TResult Function(List<Course> courseList)
        emitCurrentUserCourseListStream,
  }) {
    return emitCurrentUserCourseListStream(courseList);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(Course course)? uploadCourseToFirebase,
    TResult Function(Module module, String courseId)? uploadModuleToFirebase,
    TResult Function(Lesson listLesson, String moduleId)?
        uploadLessonToFirebase,
    TResult Function(
            List<LessonImageOrDescriptionOrVideo> lesson, String lessonId)?
        uploadLessonImageOrVideoOrDescription,
    TResult Function(UserModal userModal)? updateUserProfile,
    TResult Function()? listenAllCourse,
    TResult Function()? listenCurrentUserOwnCourses,
    TResult Function(String courseId)? getCurrentCourseModules,
    TResult Function(String moduleId)? getCurrentModuleLessons,
    TResult Function(String lessonId)? getCurrentLessonLessonContents,
    TResult Function(List<Course> courseList)? emitCourseListStream,
    TResult Function(List<Course> courseList)? emitCurrentUserCourseListStream,
  }) {
    return emitCurrentUserCourseListStream?.call(courseList);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Course course)? uploadCourseToFirebase,
    TResult Function(Module module, String courseId)? uploadModuleToFirebase,
    TResult Function(Lesson listLesson, String moduleId)?
        uploadLessonToFirebase,
    TResult Function(
            List<LessonImageOrDescriptionOrVideo> lesson, String lessonId)?
        uploadLessonImageOrVideoOrDescription,
    TResult Function(UserModal userModal)? updateUserProfile,
    TResult Function()? listenAllCourse,
    TResult Function()? listenCurrentUserOwnCourses,
    TResult Function(String courseId)? getCurrentCourseModules,
    TResult Function(String moduleId)? getCurrentModuleLessons,
    TResult Function(String lessonId)? getCurrentLessonLessonContents,
    TResult Function(List<Course> courseList)? emitCourseListStream,
    TResult Function(List<Course> courseList)? emitCurrentUserCourseListStream,
    required TResult orElse(),
  }) {
    if (emitCurrentUserCourseListStream != null) {
      return emitCurrentUserCourseListStream(courseList);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(UploadCourseToFirebase value)
        uploadCourseToFirebase,
    required TResult Function(UploadModuleToFirebase value)
        uploadModuleToFirebase,
    required TResult Function(UploadLessonToFirebase value)
        uploadLessonToFirebase,
    required TResult Function(UploadLessonImageOrVideoOrDescription value)
        uploadLessonImageOrVideoOrDescription,
    required TResult Function(UpdateUserProfile value) updateUserProfile,
    required TResult Function(ListenAllCourse value) listenAllCourse,
    required TResult Function(ListenCurrentUserOwnCourse value)
        listenCurrentUserOwnCourses,
    required TResult Function(GetCurrentCourseModules value)
        getCurrentCourseModules,
    required TResult Function(GetCurrentModuleLessons value)
        getCurrentModuleLessons,
    required TResult Function(GetCurrentLessonLessonContents value)
        getCurrentLessonLessonContents,
    required TResult Function(EmitCourseListStream value) emitCourseListStream,
    required TResult Function(EmitCurrentUserCourseListStream value)
        emitCurrentUserCourseListStream,
  }) {
    return emitCurrentUserCourseListStream(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(UploadCourseToFirebase value)? uploadCourseToFirebase,
    TResult Function(UploadModuleToFirebase value)? uploadModuleToFirebase,
    TResult Function(UploadLessonToFirebase value)? uploadLessonToFirebase,
    TResult Function(UploadLessonImageOrVideoOrDescription value)?
        uploadLessonImageOrVideoOrDescription,
    TResult Function(UpdateUserProfile value)? updateUserProfile,
    TResult Function(ListenAllCourse value)? listenAllCourse,
    TResult Function(ListenCurrentUserOwnCourse value)?
        listenCurrentUserOwnCourses,
    TResult Function(GetCurrentCourseModules value)? getCurrentCourseModules,
    TResult Function(GetCurrentModuleLessons value)? getCurrentModuleLessons,
    TResult Function(GetCurrentLessonLessonContents value)?
        getCurrentLessonLessonContents,
    TResult Function(EmitCourseListStream value)? emitCourseListStream,
    TResult Function(EmitCurrentUserCourseListStream value)?
        emitCurrentUserCourseListStream,
  }) {
    return emitCurrentUserCourseListStream?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UploadCourseToFirebase value)? uploadCourseToFirebase,
    TResult Function(UploadModuleToFirebase value)? uploadModuleToFirebase,
    TResult Function(UploadLessonToFirebase value)? uploadLessonToFirebase,
    TResult Function(UploadLessonImageOrVideoOrDescription value)?
        uploadLessonImageOrVideoOrDescription,
    TResult Function(UpdateUserProfile value)? updateUserProfile,
    TResult Function(ListenAllCourse value)? listenAllCourse,
    TResult Function(ListenCurrentUserOwnCourse value)?
        listenCurrentUserOwnCourses,
    TResult Function(GetCurrentCourseModules value)? getCurrentCourseModules,
    TResult Function(GetCurrentModuleLessons value)? getCurrentModuleLessons,
    TResult Function(GetCurrentLessonLessonContents value)?
        getCurrentLessonLessonContents,
    TResult Function(EmitCourseListStream value)? emitCourseListStream,
    TResult Function(EmitCurrentUserCourseListStream value)?
        emitCurrentUserCourseListStream,
    required TResult orElse(),
  }) {
    if (emitCurrentUserCourseListStream != null) {
      return emitCurrentUserCourseListStream(this);
    }
    return orElse();
  }
}

abstract class EmitCurrentUserCourseListStream implements DataEvent {
  const factory EmitCurrentUserCourseListStream(
      {required List<Course> courseList}) = _$EmitCurrentUserCourseListStream;

  List<Course> get courseList;
  @JsonKey(ignore: true)
  $EmitCurrentUserCourseListStreamCopyWith<EmitCurrentUserCourseListStream>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
class _$DataStateTearOff {
  const _$DataStateTearOff();

  _DataState call(
      {required bool isCourseUpload,
      required bool isLoadingUpdateProfile,
      required List<Course>? courseList,
      required List<Course>? currentUserCourseList,
      required List<Module>? moduleList,
      required List<Lesson> lessonList,
      required List<LessonImageOrDescriptionOrVideo> lessonContentList,
      required Option<Either<FunctionFailure, Unit>> failureOrSuccess}) {
    return _DataState(
      isCourseUpload: isCourseUpload,
      isLoadingUpdateProfile: isLoadingUpdateProfile,
      courseList: courseList,
      currentUserCourseList: currentUserCourseList,
      moduleList: moduleList,
      lessonList: lessonList,
      lessonContentList: lessonContentList,
      failureOrSuccess: failureOrSuccess,
    );
  }
}

/// @nodoc
const $DataState = _$DataStateTearOff();

/// @nodoc
mixin _$DataState {
  bool get isCourseUpload => throw _privateConstructorUsedError;
  bool get isLoadingUpdateProfile => throw _privateConstructorUsedError;
  List<Course>? get courseList => throw _privateConstructorUsedError;
  List<Course>? get currentUserCourseList => throw _privateConstructorUsedError;
  List<Module>? get moduleList => throw _privateConstructorUsedError;
  List<Lesson> get lessonList => throw _privateConstructorUsedError;
  List<LessonImageOrDescriptionOrVideo> get lessonContentList =>
      throw _privateConstructorUsedError;
  Option<Either<FunctionFailure, Unit>> get failureOrSuccess =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $DataStateCopyWith<DataState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DataStateCopyWith<$Res> {
  factory $DataStateCopyWith(DataState value, $Res Function(DataState) then) =
      _$DataStateCopyWithImpl<$Res>;
  $Res call(
      {bool isCourseUpload,
      bool isLoadingUpdateProfile,
      List<Course>? courseList,
      List<Course>? currentUserCourseList,
      List<Module>? moduleList,
      List<Lesson> lessonList,
      List<LessonImageOrDescriptionOrVideo> lessonContentList,
      Option<Either<FunctionFailure, Unit>> failureOrSuccess});
}

/// @nodoc
class _$DataStateCopyWithImpl<$Res> implements $DataStateCopyWith<$Res> {
  _$DataStateCopyWithImpl(this._value, this._then);

  final DataState _value;
  // ignore: unused_field
  final $Res Function(DataState) _then;

  @override
  $Res call({
    Object? isCourseUpload = freezed,
    Object? isLoadingUpdateProfile = freezed,
    Object? courseList = freezed,
    Object? currentUserCourseList = freezed,
    Object? moduleList = freezed,
    Object? lessonList = freezed,
    Object? lessonContentList = freezed,
    Object? failureOrSuccess = freezed,
  }) {
    return _then(_value.copyWith(
      isCourseUpload: isCourseUpload == freezed
          ? _value.isCourseUpload
          : isCourseUpload // ignore: cast_nullable_to_non_nullable
              as bool,
      isLoadingUpdateProfile: isLoadingUpdateProfile == freezed
          ? _value.isLoadingUpdateProfile
          : isLoadingUpdateProfile // ignore: cast_nullable_to_non_nullable
              as bool,
      courseList: courseList == freezed
          ? _value.courseList
          : courseList // ignore: cast_nullable_to_non_nullable
              as List<Course>?,
      currentUserCourseList: currentUserCourseList == freezed
          ? _value.currentUserCourseList
          : currentUserCourseList // ignore: cast_nullable_to_non_nullable
              as List<Course>?,
      moduleList: moduleList == freezed
          ? _value.moduleList
          : moduleList // ignore: cast_nullable_to_non_nullable
              as List<Module>?,
      lessonList: lessonList == freezed
          ? _value.lessonList
          : lessonList // ignore: cast_nullable_to_non_nullable
              as List<Lesson>,
      lessonContentList: lessonContentList == freezed
          ? _value.lessonContentList
          : lessonContentList // ignore: cast_nullable_to_non_nullable
              as List<LessonImageOrDescriptionOrVideo>,
      failureOrSuccess: failureOrSuccess == freezed
          ? _value.failureOrSuccess
          : failureOrSuccess // ignore: cast_nullable_to_non_nullable
              as Option<Either<FunctionFailure, Unit>>,
    ));
  }
}

/// @nodoc
abstract class _$DataStateCopyWith<$Res> implements $DataStateCopyWith<$Res> {
  factory _$DataStateCopyWith(
          _DataState value, $Res Function(_DataState) then) =
      __$DataStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {bool isCourseUpload,
      bool isLoadingUpdateProfile,
      List<Course>? courseList,
      List<Course>? currentUserCourseList,
      List<Module>? moduleList,
      List<Lesson> lessonList,
      List<LessonImageOrDescriptionOrVideo> lessonContentList,
      Option<Either<FunctionFailure, Unit>> failureOrSuccess});
}

/// @nodoc
class __$DataStateCopyWithImpl<$Res> extends _$DataStateCopyWithImpl<$Res>
    implements _$DataStateCopyWith<$Res> {
  __$DataStateCopyWithImpl(_DataState _value, $Res Function(_DataState) _then)
      : super(_value, (v) => _then(v as _DataState));

  @override
  _DataState get _value => super._value as _DataState;

  @override
  $Res call({
    Object? isCourseUpload = freezed,
    Object? isLoadingUpdateProfile = freezed,
    Object? courseList = freezed,
    Object? currentUserCourseList = freezed,
    Object? moduleList = freezed,
    Object? lessonList = freezed,
    Object? lessonContentList = freezed,
    Object? failureOrSuccess = freezed,
  }) {
    return _then(_DataState(
      isCourseUpload: isCourseUpload == freezed
          ? _value.isCourseUpload
          : isCourseUpload // ignore: cast_nullable_to_non_nullable
              as bool,
      isLoadingUpdateProfile: isLoadingUpdateProfile == freezed
          ? _value.isLoadingUpdateProfile
          : isLoadingUpdateProfile // ignore: cast_nullable_to_non_nullable
              as bool,
      courseList: courseList == freezed
          ? _value.courseList
          : courseList // ignore: cast_nullable_to_non_nullable
              as List<Course>?,
      currentUserCourseList: currentUserCourseList == freezed
          ? _value.currentUserCourseList
          : currentUserCourseList // ignore: cast_nullable_to_non_nullable
              as List<Course>?,
      moduleList: moduleList == freezed
          ? _value.moduleList
          : moduleList // ignore: cast_nullable_to_non_nullable
              as List<Module>?,
      lessonList: lessonList == freezed
          ? _value.lessonList
          : lessonList // ignore: cast_nullable_to_non_nullable
              as List<Lesson>,
      lessonContentList: lessonContentList == freezed
          ? _value.lessonContentList
          : lessonContentList // ignore: cast_nullable_to_non_nullable
              as List<LessonImageOrDescriptionOrVideo>,
      failureOrSuccess: failureOrSuccess == freezed
          ? _value.failureOrSuccess
          : failureOrSuccess // ignore: cast_nullable_to_non_nullable
              as Option<Either<FunctionFailure, Unit>>,
    ));
  }
}

/// @nodoc

class _$_DataState implements _DataState {
  const _$_DataState(
      {required this.isCourseUpload,
      required this.isLoadingUpdateProfile,
      required this.courseList,
      required this.currentUserCourseList,
      required this.moduleList,
      required this.lessonList,
      required this.lessonContentList,
      required this.failureOrSuccess});

  @override
  final bool isCourseUpload;
  @override
  final bool isLoadingUpdateProfile;
  @override
  final List<Course>? courseList;
  @override
  final List<Course>? currentUserCourseList;
  @override
  final List<Module>? moduleList;
  @override
  final List<Lesson> lessonList;
  @override
  final List<LessonImageOrDescriptionOrVideo> lessonContentList;
  @override
  final Option<Either<FunctionFailure, Unit>> failureOrSuccess;

  @override
  String toString() {
    return 'DataState(isCourseUpload: $isCourseUpload, isLoadingUpdateProfile: $isLoadingUpdateProfile, courseList: $courseList, currentUserCourseList: $currentUserCourseList, moduleList: $moduleList, lessonList: $lessonList, lessonContentList: $lessonContentList, failureOrSuccess: $failureOrSuccess)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _DataState &&
            (identical(other.isCourseUpload, isCourseUpload) ||
                other.isCourseUpload == isCourseUpload) &&
            (identical(other.isLoadingUpdateProfile, isLoadingUpdateProfile) ||
                other.isLoadingUpdateProfile == isLoadingUpdateProfile) &&
            const DeepCollectionEquality()
                .equals(other.courseList, courseList) &&
            const DeepCollectionEquality()
                .equals(other.currentUserCourseList, currentUserCourseList) &&
            const DeepCollectionEquality()
                .equals(other.moduleList, moduleList) &&
            const DeepCollectionEquality()
                .equals(other.lessonList, lessonList) &&
            const DeepCollectionEquality()
                .equals(other.lessonContentList, lessonContentList) &&
            (identical(other.failureOrSuccess, failureOrSuccess) ||
                other.failureOrSuccess == failureOrSuccess));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      isCourseUpload,
      isLoadingUpdateProfile,
      const DeepCollectionEquality().hash(courseList),
      const DeepCollectionEquality().hash(currentUserCourseList),
      const DeepCollectionEquality().hash(moduleList),
      const DeepCollectionEquality().hash(lessonList),
      const DeepCollectionEquality().hash(lessonContentList),
      failureOrSuccess);

  @JsonKey(ignore: true)
  @override
  _$DataStateCopyWith<_DataState> get copyWith =>
      __$DataStateCopyWithImpl<_DataState>(this, _$identity);
}

abstract class _DataState implements DataState {
  const factory _DataState(
          {required bool isCourseUpload,
          required bool isLoadingUpdateProfile,
          required List<Course>? courseList,
          required List<Course>? currentUserCourseList,
          required List<Module>? moduleList,
          required List<Lesson> lessonList,
          required List<LessonImageOrDescriptionOrVideo> lessonContentList,
          required Option<Either<FunctionFailure, Unit>> failureOrSuccess}) =
      _$_DataState;

  @override
  bool get isCourseUpload;
  @override
  bool get isLoadingUpdateProfile;
  @override
  List<Course>? get courseList;
  @override
  List<Course>? get currentUserCourseList;
  @override
  List<Module>? get moduleList;
  @override
  List<Lesson> get lessonList;
  @override
  List<LessonImageOrDescriptionOrVideo> get lessonContentList;
  @override
  Option<Either<FunctionFailure, Unit>> get failureOrSuccess;
  @override
  @JsonKey(ignore: true)
  _$DataStateCopyWith<_DataState> get copyWith =>
      throw _privateConstructorUsedError;
}
