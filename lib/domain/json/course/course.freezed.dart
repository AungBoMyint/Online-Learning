// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'course.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Course _$CourseFromJson(Map<String, dynamic> json) {
  return _Course.fromJson(json);
}

/// @nodoc
class _$CourseTearOff {
  const _$CourseTearOff();

  _Course call(
      {required String id,
      required String? courseName,
      required String? description,
      required String? overview,
      required String? type,
      required String? tag,
      required String? image,
      required int learners,
      required int rating,
      required int dateTime,
      required String? ownerId}) {
    return _Course(
      id: id,
      courseName: courseName,
      description: description,
      overview: overview,
      type: type,
      tag: tag,
      image: image,
      learners: learners,
      rating: rating,
      dateTime: dateTime,
      ownerId: ownerId,
    );
  }

  Course fromJson(Map<String, Object?> json) {
    return Course.fromJson(json);
  }
}

/// @nodoc
const $Course = _$CourseTearOff();

/// @nodoc
mixin _$Course {
  String get id => throw _privateConstructorUsedError;
  String? get courseName => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  String? get overview => throw _privateConstructorUsedError;
  String? get type => throw _privateConstructorUsedError;
  String? get tag => throw _privateConstructorUsedError;
  String? get image => throw _privateConstructorUsedError;
  int get learners => throw _privateConstructorUsedError;
  int get rating => throw _privateConstructorUsedError;
  int get dateTime => throw _privateConstructorUsedError;
  String? get ownerId => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CourseCopyWith<Course> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CourseCopyWith<$Res> {
  factory $CourseCopyWith(Course value, $Res Function(Course) then) =
      _$CourseCopyWithImpl<$Res>;
  $Res call(
      {String id,
      String? courseName,
      String? description,
      String? overview,
      String? type,
      String? tag,
      String? image,
      int learners,
      int rating,
      int dateTime,
      String? ownerId});
}

/// @nodoc
class _$CourseCopyWithImpl<$Res> implements $CourseCopyWith<$Res> {
  _$CourseCopyWithImpl(this._value, this._then);

  final Course _value;
  // ignore: unused_field
  final $Res Function(Course) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? courseName = freezed,
    Object? description = freezed,
    Object? overview = freezed,
    Object? type = freezed,
    Object? tag = freezed,
    Object? image = freezed,
    Object? learners = freezed,
    Object? rating = freezed,
    Object? dateTime = freezed,
    Object? ownerId = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      courseName: courseName == freezed
          ? _value.courseName
          : courseName // ignore: cast_nullable_to_non_nullable
              as String?,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      overview: overview == freezed
          ? _value.overview
          : overview // ignore: cast_nullable_to_non_nullable
              as String?,
      type: type == freezed
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
      tag: tag == freezed
          ? _value.tag
          : tag // ignore: cast_nullable_to_non_nullable
              as String?,
      image: image == freezed
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
      learners: learners == freezed
          ? _value.learners
          : learners // ignore: cast_nullable_to_non_nullable
              as int,
      rating: rating == freezed
          ? _value.rating
          : rating // ignore: cast_nullable_to_non_nullable
              as int,
      dateTime: dateTime == freezed
          ? _value.dateTime
          : dateTime // ignore: cast_nullable_to_non_nullable
              as int,
      ownerId: ownerId == freezed
          ? _value.ownerId
          : ownerId // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$CourseCopyWith<$Res> implements $CourseCopyWith<$Res> {
  factory _$CourseCopyWith(_Course value, $Res Function(_Course) then) =
      __$CourseCopyWithImpl<$Res>;
  @override
  $Res call(
      {String id,
      String? courseName,
      String? description,
      String? overview,
      String? type,
      String? tag,
      String? image,
      int learners,
      int rating,
      int dateTime,
      String? ownerId});
}

/// @nodoc
class __$CourseCopyWithImpl<$Res> extends _$CourseCopyWithImpl<$Res>
    implements _$CourseCopyWith<$Res> {
  __$CourseCopyWithImpl(_Course _value, $Res Function(_Course) _then)
      : super(_value, (v) => _then(v as _Course));

  @override
  _Course get _value => super._value as _Course;

  @override
  $Res call({
    Object? id = freezed,
    Object? courseName = freezed,
    Object? description = freezed,
    Object? overview = freezed,
    Object? type = freezed,
    Object? tag = freezed,
    Object? image = freezed,
    Object? learners = freezed,
    Object? rating = freezed,
    Object? dateTime = freezed,
    Object? ownerId = freezed,
  }) {
    return _then(_Course(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      courseName: courseName == freezed
          ? _value.courseName
          : courseName // ignore: cast_nullable_to_non_nullable
              as String?,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      overview: overview == freezed
          ? _value.overview
          : overview // ignore: cast_nullable_to_non_nullable
              as String?,
      type: type == freezed
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
      tag: tag == freezed
          ? _value.tag
          : tag // ignore: cast_nullable_to_non_nullable
              as String?,
      image: image == freezed
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
      learners: learners == freezed
          ? _value.learners
          : learners // ignore: cast_nullable_to_non_nullable
              as int,
      rating: rating == freezed
          ? _value.rating
          : rating // ignore: cast_nullable_to_non_nullable
              as int,
      dateTime: dateTime == freezed
          ? _value.dateTime
          : dateTime // ignore: cast_nullable_to_non_nullable
              as int,
      ownerId: ownerId == freezed
          ? _value.ownerId
          : ownerId // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Course implements _Course {
  const _$_Course(
      {required this.id,
      required this.courseName,
      required this.description,
      required this.overview,
      required this.type,
      required this.tag,
      required this.image,
      required this.learners,
      required this.rating,
      required this.dateTime,
      required this.ownerId});

  factory _$_Course.fromJson(Map<String, dynamic> json) =>
      _$$_CourseFromJson(json);

  @override
  final String id;
  @override
  final String? courseName;
  @override
  final String? description;
  @override
  final String? overview;
  @override
  final String? type;
  @override
  final String? tag;
  @override
  final String? image;
  @override
  final int learners;
  @override
  final int rating;
  @override
  final int dateTime;
  @override
  final String? ownerId;

  @override
  String toString() {
    return 'Course(id: $id, courseName: $courseName, description: $description, overview: $overview, type: $type, tag: $tag, image: $image, learners: $learners, rating: $rating, dateTime: $dateTime, ownerId: $ownerId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Course &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.courseName, courseName) ||
                other.courseName == courseName) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.overview, overview) ||
                other.overview == overview) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.tag, tag) || other.tag == tag) &&
            (identical(other.image, image) || other.image == image) &&
            (identical(other.learners, learners) ||
                other.learners == learners) &&
            (identical(other.rating, rating) || other.rating == rating) &&
            (identical(other.dateTime, dateTime) ||
                other.dateTime == dateTime) &&
            (identical(other.ownerId, ownerId) || other.ownerId == ownerId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id, courseName, description,
      overview, type, tag, image, learners, rating, dateTime, ownerId);

  @JsonKey(ignore: true)
  @override
  _$CourseCopyWith<_Course> get copyWith =>
      __$CourseCopyWithImpl<_Course>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CourseToJson(this);
  }
}

abstract class _Course implements Course {
  const factory _Course(
      {required String id,
      required String? courseName,
      required String? description,
      required String? overview,
      required String? type,
      required String? tag,
      required String? image,
      required int learners,
      required int rating,
      required int dateTime,
      required String? ownerId}) = _$_Course;

  factory _Course.fromJson(Map<String, dynamic> json) = _$_Course.fromJson;

  @override
  String get id;
  @override
  String? get courseName;
  @override
  String? get description;
  @override
  String? get overview;
  @override
  String? get type;
  @override
  String? get tag;
  @override
  String? get image;
  @override
  int get learners;
  @override
  int get rating;
  @override
  int get dateTime;
  @override
  String? get ownerId;
  @override
  @JsonKey(ignore: true)
  _$CourseCopyWith<_Course> get copyWith => throw _privateConstructorUsedError;
}
