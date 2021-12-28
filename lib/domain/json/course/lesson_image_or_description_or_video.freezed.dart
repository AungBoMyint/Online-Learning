// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'lesson_image_or_description_or_video.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

LessonImageOrDescriptionOrVideo<T> _$LessonImageOrDescriptionOrVideoFromJson<T>(
    Map<String, dynamic> json) {
  return _LessonImageOrDescriptionOrVideo<T>.fromJson(json);
}

/// @nodoc
class _$LessonImageOrDescriptionOrVideoTearOff {
  const _$LessonImageOrDescriptionOrVideoTearOff();

  _LessonImageOrDescriptionOrVideo<T> call<T>(
      {required String id,
      required String? image,
      required String? imageDescription,
      required Content? content,
      required String? videoLink,
      @QuestionConveter() required T? quiz}) {
    return _LessonImageOrDescriptionOrVideo<T>(
      id: id,
      image: image,
      imageDescription: imageDescription,
      content: content,
      videoLink: videoLink,
      quiz: quiz,
    );
  }

  LessonImageOrDescriptionOrVideo<T> fromJson<T>(Map<String, Object?> json) {
    return LessonImageOrDescriptionOrVideo<T>.fromJson(json);
  }
}

/// @nodoc
const $LessonImageOrDescriptionOrVideo =
    _$LessonImageOrDescriptionOrVideoTearOff();

/// @nodoc
mixin _$LessonImageOrDescriptionOrVideo<T> {
  String get id => throw _privateConstructorUsedError;
  String? get image => throw _privateConstructorUsedError;
  String? get imageDescription => throw _privateConstructorUsedError;
  Content? get content => throw _privateConstructorUsedError;
  String? get videoLink => throw _privateConstructorUsedError;
  @QuestionConveter()
  T? get quiz => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LessonImageOrDescriptionOrVideoCopyWith<T,
          LessonImageOrDescriptionOrVideo<T>>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LessonImageOrDescriptionOrVideoCopyWith<T, $Res> {
  factory $LessonImageOrDescriptionOrVideoCopyWith(
          LessonImageOrDescriptionOrVideo<T> value,
          $Res Function(LessonImageOrDescriptionOrVideo<T>) then) =
      _$LessonImageOrDescriptionOrVideoCopyWithImpl<T, $Res>;
  $Res call(
      {String id,
      String? image,
      String? imageDescription,
      Content? content,
      String? videoLink,
      @QuestionConveter() T? quiz});

  $ContentCopyWith<$Res>? get content;
}

/// @nodoc
class _$LessonImageOrDescriptionOrVideoCopyWithImpl<T, $Res>
    implements $LessonImageOrDescriptionOrVideoCopyWith<T, $Res> {
  _$LessonImageOrDescriptionOrVideoCopyWithImpl(this._value, this._then);

  final LessonImageOrDescriptionOrVideo<T> _value;
  // ignore: unused_field
  final $Res Function(LessonImageOrDescriptionOrVideo<T>) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? image = freezed,
    Object? imageDescription = freezed,
    Object? content = freezed,
    Object? videoLink = freezed,
    Object? quiz = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      image: image == freezed
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
      imageDescription: imageDescription == freezed
          ? _value.imageDescription
          : imageDescription // ignore: cast_nullable_to_non_nullable
              as String?,
      content: content == freezed
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as Content?,
      videoLink: videoLink == freezed
          ? _value.videoLink
          : videoLink // ignore: cast_nullable_to_non_nullable
              as String?,
      quiz: quiz == freezed
          ? _value.quiz
          : quiz // ignore: cast_nullable_to_non_nullable
              as T?,
    ));
  }

  @override
  $ContentCopyWith<$Res>? get content {
    if (_value.content == null) {
      return null;
    }

    return $ContentCopyWith<$Res>(_value.content!, (value) {
      return _then(_value.copyWith(content: value));
    });
  }
}

/// @nodoc
abstract class _$LessonImageOrDescriptionOrVideoCopyWith<T, $Res>
    implements $LessonImageOrDescriptionOrVideoCopyWith<T, $Res> {
  factory _$LessonImageOrDescriptionOrVideoCopyWith(
          _LessonImageOrDescriptionOrVideo<T> value,
          $Res Function(_LessonImageOrDescriptionOrVideo<T>) then) =
      __$LessonImageOrDescriptionOrVideoCopyWithImpl<T, $Res>;
  @override
  $Res call(
      {String id,
      String? image,
      String? imageDescription,
      Content? content,
      String? videoLink,
      @QuestionConveter() T? quiz});

  @override
  $ContentCopyWith<$Res>? get content;
}

/// @nodoc
class __$LessonImageOrDescriptionOrVideoCopyWithImpl<T, $Res>
    extends _$LessonImageOrDescriptionOrVideoCopyWithImpl<T, $Res>
    implements _$LessonImageOrDescriptionOrVideoCopyWith<T, $Res> {
  __$LessonImageOrDescriptionOrVideoCopyWithImpl(
      _LessonImageOrDescriptionOrVideo<T> _value,
      $Res Function(_LessonImageOrDescriptionOrVideo<T>) _then)
      : super(_value, (v) => _then(v as _LessonImageOrDescriptionOrVideo<T>));

  @override
  _LessonImageOrDescriptionOrVideo<T> get _value =>
      super._value as _LessonImageOrDescriptionOrVideo<T>;

  @override
  $Res call({
    Object? id = freezed,
    Object? image = freezed,
    Object? imageDescription = freezed,
    Object? content = freezed,
    Object? videoLink = freezed,
    Object? quiz = freezed,
  }) {
    return _then(_LessonImageOrDescriptionOrVideo<T>(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      image: image == freezed
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
      imageDescription: imageDescription == freezed
          ? _value.imageDescription
          : imageDescription // ignore: cast_nullable_to_non_nullable
              as String?,
      content: content == freezed
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as Content?,
      videoLink: videoLink == freezed
          ? _value.videoLink
          : videoLink // ignore: cast_nullable_to_non_nullable
              as String?,
      quiz: quiz == freezed
          ? _value.quiz
          : quiz // ignore: cast_nullable_to_non_nullable
              as T?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_LessonImageOrDescriptionOrVideo<T>
    implements _LessonImageOrDescriptionOrVideo<T> {
  _$_LessonImageOrDescriptionOrVideo(
      {required this.id,
      required this.image,
      required this.imageDescription,
      required this.content,
      required this.videoLink,
      @QuestionConveter() required this.quiz});

  factory _$_LessonImageOrDescriptionOrVideo.fromJson(
          Map<String, dynamic> json) =>
      _$$_LessonImageOrDescriptionOrVideoFromJson(json);

  @override
  final String id;
  @override
  final String? image;
  @override
  final String? imageDescription;
  @override
  final Content? content;
  @override
  final String? videoLink;
  @override
  @QuestionConveter()
  final T? quiz;

  @override
  String toString() {
    return 'LessonImageOrDescriptionOrVideo<$T>(id: $id, image: $image, imageDescription: $imageDescription, content: $content, videoLink: $videoLink, quiz: $quiz)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _LessonImageOrDescriptionOrVideo<T> &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.image, image) || other.image == image) &&
            (identical(other.imageDescription, imageDescription) ||
                other.imageDescription == imageDescription) &&
            (identical(other.content, content) || other.content == content) &&
            (identical(other.videoLink, videoLink) ||
                other.videoLink == videoLink) &&
            const DeepCollectionEquality().equals(other.quiz, quiz));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id, image, imageDescription,
      content, videoLink, const DeepCollectionEquality().hash(quiz));

  @JsonKey(ignore: true)
  @override
  _$LessonImageOrDescriptionOrVideoCopyWith<T,
          _LessonImageOrDescriptionOrVideo<T>>
      get copyWith => __$LessonImageOrDescriptionOrVideoCopyWithImpl<T,
          _LessonImageOrDescriptionOrVideo<T>>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_LessonImageOrDescriptionOrVideoToJson(this);
  }
}

abstract class _LessonImageOrDescriptionOrVideo<T>
    implements LessonImageOrDescriptionOrVideo<T> {
  factory _LessonImageOrDescriptionOrVideo(
          {required String id,
          required String? image,
          required String? imageDescription,
          required Content? content,
          required String? videoLink,
          @QuestionConveter() required T? quiz}) =
      _$_LessonImageOrDescriptionOrVideo<T>;

  factory _LessonImageOrDescriptionOrVideo.fromJson(Map<String, dynamic> json) =
      _$_LessonImageOrDescriptionOrVideo<T>.fromJson;

  @override
  String get id;
  @override
  String? get image;
  @override
  String? get imageDescription;
  @override
  Content? get content;
  @override
  String? get videoLink;
  @override
  @QuestionConveter()
  T? get quiz;
  @override
  @JsonKey(ignore: true)
  _$LessonImageOrDescriptionOrVideoCopyWith<T,
          _LessonImageOrDescriptionOrVideo<T>>
      get copyWith => throw _privateConstructorUsedError;
}
