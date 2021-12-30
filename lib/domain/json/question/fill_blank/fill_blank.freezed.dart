// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'fill_blank.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

FillBlank _$FillBlankFromJson(Map<String, dynamic> json) {
  return _FillBlank.fromJson(json);
}

/// @nodoc
class _$FillBlankTearOff {
  const _$FillBlankTearOff();

  _FillBlank call(
      {required String quizType,
      required String question,
      required String trueAnswer}) {
    return _FillBlank(
      quizType: quizType,
      question: question,
      trueAnswer: trueAnswer,
    );
  }

  FillBlank fromJson(Map<String, Object?> json) {
    return FillBlank.fromJson(json);
  }
}

/// @nodoc
const $FillBlank = _$FillBlankTearOff();

/// @nodoc
mixin _$FillBlank {
  String get quizType => throw _privateConstructorUsedError;
  String get question => throw _privateConstructorUsedError;
  String get trueAnswer => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $FillBlankCopyWith<FillBlank> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FillBlankCopyWith<$Res> {
  factory $FillBlankCopyWith(FillBlank value, $Res Function(FillBlank) then) =
      _$FillBlankCopyWithImpl<$Res>;
  $Res call({String quizType, String question, String trueAnswer});
}

/// @nodoc
class _$FillBlankCopyWithImpl<$Res> implements $FillBlankCopyWith<$Res> {
  _$FillBlankCopyWithImpl(this._value, this._then);

  final FillBlank _value;
  // ignore: unused_field
  final $Res Function(FillBlank) _then;

  @override
  $Res call({
    Object? quizType = freezed,
    Object? question = freezed,
    Object? trueAnswer = freezed,
  }) {
    return _then(_value.copyWith(
      quizType: quizType == freezed
          ? _value.quizType
          : quizType // ignore: cast_nullable_to_non_nullable
              as String,
      question: question == freezed
          ? _value.question
          : question // ignore: cast_nullable_to_non_nullable
              as String,
      trueAnswer: trueAnswer == freezed
          ? _value.trueAnswer
          : trueAnswer // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$FillBlankCopyWith<$Res> implements $FillBlankCopyWith<$Res> {
  factory _$FillBlankCopyWith(
          _FillBlank value, $Res Function(_FillBlank) then) =
      __$FillBlankCopyWithImpl<$Res>;
  @override
  $Res call({String quizType, String question, String trueAnswer});
}

/// @nodoc
class __$FillBlankCopyWithImpl<$Res> extends _$FillBlankCopyWithImpl<$Res>
    implements _$FillBlankCopyWith<$Res> {
  __$FillBlankCopyWithImpl(_FillBlank _value, $Res Function(_FillBlank) _then)
      : super(_value, (v) => _then(v as _FillBlank));

  @override
  _FillBlank get _value => super._value as _FillBlank;

  @override
  $Res call({
    Object? quizType = freezed,
    Object? question = freezed,
    Object? trueAnswer = freezed,
  }) {
    return _then(_FillBlank(
      quizType: quizType == freezed
          ? _value.quizType
          : quizType // ignore: cast_nullable_to_non_nullable
              as String,
      question: question == freezed
          ? _value.question
          : question // ignore: cast_nullable_to_non_nullable
              as String,
      trueAnswer: trueAnswer == freezed
          ? _value.trueAnswer
          : trueAnswer // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_FillBlank implements _FillBlank {
  _$_FillBlank(
      {required this.quizType,
      required this.question,
      required this.trueAnswer});

  factory _$_FillBlank.fromJson(Map<String, dynamic> json) =>
      _$$_FillBlankFromJson(json);

  @override
  final String quizType;
  @override
  final String question;
  @override
  final String trueAnswer;

  @override
  String toString() {
    return 'FillBlank(quizType: $quizType, question: $question, trueAnswer: $trueAnswer)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _FillBlank &&
            (identical(other.quizType, quizType) ||
                other.quizType == quizType) &&
            (identical(other.question, question) ||
                other.question == question) &&
            (identical(other.trueAnswer, trueAnswer) ||
                other.trueAnswer == trueAnswer));
  }

  @override
  int get hashCode => Object.hash(runtimeType, quizType, question, trueAnswer);

  @JsonKey(ignore: true)
  @override
  _$FillBlankCopyWith<_FillBlank> get copyWith =>
      __$FillBlankCopyWithImpl<_FillBlank>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_FillBlankToJson(this);
  }
}

abstract class _FillBlank implements FillBlank {
  factory _FillBlank(
      {required String quizType,
      required String question,
      required String trueAnswer}) = _$_FillBlank;

  factory _FillBlank.fromJson(Map<String, dynamic> json) =
      _$_FillBlank.fromJson;

  @override
  String get quizType;
  @override
  String get question;
  @override
  String get trueAnswer;
  @override
  @JsonKey(ignore: true)
  _$FillBlankCopyWith<_FillBlank> get copyWith =>
      throw _privateConstructorUsedError;
}
