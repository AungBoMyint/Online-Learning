// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'lesson.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Lesson _$LessonFromJson(Map<String, dynamic> json) {
  return _Lesson.fromJson(json);
}

/// @nodoc
class _$LessonTearOff {
  const _$LessonTearOff();

  _Lesson call({required String id, required String? lessonTitle}) {
    return _Lesson(
      id: id,
      lessonTitle: lessonTitle,
    );
  }

  Lesson fromJson(Map<String, Object?> json) {
    return Lesson.fromJson(json);
  }
}

/// @nodoc
const $Lesson = _$LessonTearOff();

/// @nodoc
mixin _$Lesson {
  String get id => throw _privateConstructorUsedError;
  String? get lessonTitle => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LessonCopyWith<Lesson> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LessonCopyWith<$Res> {
  factory $LessonCopyWith(Lesson value, $Res Function(Lesson) then) =
      _$LessonCopyWithImpl<$Res>;
  $Res call({String id, String? lessonTitle});
}

/// @nodoc
class _$LessonCopyWithImpl<$Res> implements $LessonCopyWith<$Res> {
  _$LessonCopyWithImpl(this._value, this._then);

  final Lesson _value;
  // ignore: unused_field
  final $Res Function(Lesson) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? lessonTitle = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      lessonTitle: lessonTitle == freezed
          ? _value.lessonTitle
          : lessonTitle // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$LessonCopyWith<$Res> implements $LessonCopyWith<$Res> {
  factory _$LessonCopyWith(_Lesson value, $Res Function(_Lesson) then) =
      __$LessonCopyWithImpl<$Res>;
  @override
  $Res call({String id, String? lessonTitle});
}

/// @nodoc
class __$LessonCopyWithImpl<$Res> extends _$LessonCopyWithImpl<$Res>
    implements _$LessonCopyWith<$Res> {
  __$LessonCopyWithImpl(_Lesson _value, $Res Function(_Lesson) _then)
      : super(_value, (v) => _then(v as _Lesson));

  @override
  _Lesson get _value => super._value as _Lesson;

  @override
  $Res call({
    Object? id = freezed,
    Object? lessonTitle = freezed,
  }) {
    return _then(_Lesson(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      lessonTitle: lessonTitle == freezed
          ? _value.lessonTitle
          : lessonTitle // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Lesson implements _Lesson {
  const _$_Lesson({required this.id, required this.lessonTitle});

  factory _$_Lesson.fromJson(Map<String, dynamic> json) =>
      _$$_LessonFromJson(json);

  @override
  final String id;
  @override
  final String? lessonTitle;

  @override
  String toString() {
    return 'Lesson(id: $id, lessonTitle: $lessonTitle)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Lesson &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.lessonTitle, lessonTitle) ||
                other.lessonTitle == lessonTitle));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id, lessonTitle);

  @JsonKey(ignore: true)
  @override
  _$LessonCopyWith<_Lesson> get copyWith =>
      __$LessonCopyWithImpl<_Lesson>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_LessonToJson(this);
  }
}

abstract class _Lesson implements Lesson {
  const factory _Lesson({required String id, required String? lessonTitle}) =
      _$_Lesson;

  factory _Lesson.fromJson(Map<String, dynamic> json) = _$_Lesson.fromJson;

  @override
  String get id;
  @override
  String? get lessonTitle;
  @override
  @JsonKey(ignore: true)
  _$LessonCopyWith<_Lesson> get copyWith => throw _privateConstructorUsedError;
}
