// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'content.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Content _$ContentFromJson(Map<String, dynamic> json) {
  return _Content.fromJson(json);
}

/// @nodoc
class _$ContentTearOff {
  const _$ContentTearOff();

  _Content call({required String content, required String color}) {
    return _Content(
      content: content,
      color: color,
    );
  }

  Content fromJson(Map<String, Object?> json) {
    return Content.fromJson(json);
  }
}

/// @nodoc
const $Content = _$ContentTearOff();

/// @nodoc
mixin _$Content {
  String get content => throw _privateConstructorUsedError;
  String get color => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ContentCopyWith<Content> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ContentCopyWith<$Res> {
  factory $ContentCopyWith(Content value, $Res Function(Content) then) =
      _$ContentCopyWithImpl<$Res>;
  $Res call({String content, String color});
}

/// @nodoc
class _$ContentCopyWithImpl<$Res> implements $ContentCopyWith<$Res> {
  _$ContentCopyWithImpl(this._value, this._then);

  final Content _value;
  // ignore: unused_field
  final $Res Function(Content) _then;

  @override
  $Res call({
    Object? content = freezed,
    Object? color = freezed,
  }) {
    return _then(_value.copyWith(
      content: content == freezed
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
      color: color == freezed
          ? _value.color
          : color // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$ContentCopyWith<$Res> implements $ContentCopyWith<$Res> {
  factory _$ContentCopyWith(_Content value, $Res Function(_Content) then) =
      __$ContentCopyWithImpl<$Res>;
  @override
  $Res call({String content, String color});
}

/// @nodoc
class __$ContentCopyWithImpl<$Res> extends _$ContentCopyWithImpl<$Res>
    implements _$ContentCopyWith<$Res> {
  __$ContentCopyWithImpl(_Content _value, $Res Function(_Content) _then)
      : super(_value, (v) => _then(v as _Content));

  @override
  _Content get _value => super._value as _Content;

  @override
  $Res call({
    Object? content = freezed,
    Object? color = freezed,
  }) {
    return _then(_Content(
      content: content == freezed
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
      color: color == freezed
          ? _value.color
          : color // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Content implements _Content {
  _$_Content({required this.content, required this.color});

  factory _$_Content.fromJson(Map<String, dynamic> json) =>
      _$$_ContentFromJson(json);

  @override
  final String content;
  @override
  final String color;

  @override
  String toString() {
    return 'Content(content: $content, color: $color)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Content &&
            (identical(other.content, content) || other.content == content) &&
            (identical(other.color, color) || other.color == color));
  }

  @override
  int get hashCode => Object.hash(runtimeType, content, color);

  @JsonKey(ignore: true)
  @override
  _$ContentCopyWith<_Content> get copyWith =>
      __$ContentCopyWithImpl<_Content>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ContentToJson(this);
  }
}

abstract class _Content implements Content {
  factory _Content({required String content, required String color}) =
      _$_Content;

  factory _Content.fromJson(Map<String, dynamic> json) = _$_Content.fromJson;

  @override
  String get content;
  @override
  String get color;
  @override
  @JsonKey(ignore: true)
  _$ContentCopyWith<_Content> get copyWith =>
      throw _privateConstructorUsedError;
}
