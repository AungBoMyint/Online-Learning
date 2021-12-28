// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'one_choice.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

OneChoice _$OneChoiceFromJson(Map<String, dynamic> json) {
  return _OneChoice.fromJson(json);
}

/// @nodoc
class _$OneChoiceTearOff {
  const _$OneChoiceTearOff();

  _OneChoice call(
      {required String quizType,
      required String question,
      required Map<String, ChoiceItem> choiceItemMap}) {
    return _OneChoice(
      quizType: quizType,
      question: question,
      choiceItemMap: choiceItemMap,
    );
  }

  OneChoice fromJson(Map<String, Object?> json) {
    return OneChoice.fromJson(json);
  }
}

/// @nodoc
const $OneChoice = _$OneChoiceTearOff();

/// @nodoc
mixin _$OneChoice {
  String get quizType => throw _privateConstructorUsedError;
  String get question => throw _privateConstructorUsedError;
  Map<String, ChoiceItem> get choiceItemMap =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $OneChoiceCopyWith<OneChoice> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OneChoiceCopyWith<$Res> {
  factory $OneChoiceCopyWith(OneChoice value, $Res Function(OneChoice) then) =
      _$OneChoiceCopyWithImpl<$Res>;
  $Res call(
      {String quizType,
      String question,
      Map<String, ChoiceItem> choiceItemMap});
}

/// @nodoc
class _$OneChoiceCopyWithImpl<$Res> implements $OneChoiceCopyWith<$Res> {
  _$OneChoiceCopyWithImpl(this._value, this._then);

  final OneChoice _value;
  // ignore: unused_field
  final $Res Function(OneChoice) _then;

  @override
  $Res call({
    Object? quizType = freezed,
    Object? question = freezed,
    Object? choiceItemMap = freezed,
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
      choiceItemMap: choiceItemMap == freezed
          ? _value.choiceItemMap
          : choiceItemMap // ignore: cast_nullable_to_non_nullable
              as Map<String, ChoiceItem>,
    ));
  }
}

/// @nodoc
abstract class _$OneChoiceCopyWith<$Res> implements $OneChoiceCopyWith<$Res> {
  factory _$OneChoiceCopyWith(
          _OneChoice value, $Res Function(_OneChoice) then) =
      __$OneChoiceCopyWithImpl<$Res>;
  @override
  $Res call(
      {String quizType,
      String question,
      Map<String, ChoiceItem> choiceItemMap});
}

/// @nodoc
class __$OneChoiceCopyWithImpl<$Res> extends _$OneChoiceCopyWithImpl<$Res>
    implements _$OneChoiceCopyWith<$Res> {
  __$OneChoiceCopyWithImpl(_OneChoice _value, $Res Function(_OneChoice) _then)
      : super(_value, (v) => _then(v as _OneChoice));

  @override
  _OneChoice get _value => super._value as _OneChoice;

  @override
  $Res call({
    Object? quizType = freezed,
    Object? question = freezed,
    Object? choiceItemMap = freezed,
  }) {
    return _then(_OneChoice(
      quizType: quizType == freezed
          ? _value.quizType
          : quizType // ignore: cast_nullable_to_non_nullable
              as String,
      question: question == freezed
          ? _value.question
          : question // ignore: cast_nullable_to_non_nullable
              as String,
      choiceItemMap: choiceItemMap == freezed
          ? _value.choiceItemMap
          : choiceItemMap // ignore: cast_nullable_to_non_nullable
              as Map<String, ChoiceItem>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_OneChoice implements _OneChoice {
  _$_OneChoice(
      {required this.quizType,
      required this.question,
      required this.choiceItemMap});

  factory _$_OneChoice.fromJson(Map<String, dynamic> json) =>
      _$$_OneChoiceFromJson(json);

  @override
  final String quizType;
  @override
  final String question;
  @override
  final Map<String, ChoiceItem> choiceItemMap;

  @override
  String toString() {
    return 'OneChoice(quizType: $quizType, question: $question, choiceItemMap: $choiceItemMap)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _OneChoice &&
            (identical(other.quizType, quizType) ||
                other.quizType == quizType) &&
            (identical(other.question, question) ||
                other.question == question) &&
            const DeepCollectionEquality()
                .equals(other.choiceItemMap, choiceItemMap));
  }

  @override
  int get hashCode => Object.hash(runtimeType, quizType, question,
      const DeepCollectionEquality().hash(choiceItemMap));

  @JsonKey(ignore: true)
  @override
  _$OneChoiceCopyWith<_OneChoice> get copyWith =>
      __$OneChoiceCopyWithImpl<_OneChoice>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_OneChoiceToJson(this);
  }
}

abstract class _OneChoice implements OneChoice {
  factory _OneChoice(
      {required String quizType,
      required String question,
      required Map<String, ChoiceItem> choiceItemMap}) = _$_OneChoice;

  factory _OneChoice.fromJson(Map<String, dynamic> json) =
      _$_OneChoice.fromJson;

  @override
  String get quizType;
  @override
  String get question;
  @override
  Map<String, ChoiceItem> get choiceItemMap;
  @override
  @JsonKey(ignore: true)
  _$OneChoiceCopyWith<_OneChoice> get copyWith =>
      throw _privateConstructorUsedError;
}
