// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'multiple_choice.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

MultipleChoice _$MultipleChoiceFromJson(Map<String, dynamic> json) {
  return _MultipleChoice.fromJson(json);
}

/// @nodoc
class _$MultipleChoiceTearOff {
  const _$MultipleChoiceTearOff();

  _MultipleChoice call(
      {required String quizType,
      required String question,
      required Map<String, ChoiceItem> choiceItemMap}) {
    return _MultipleChoice(
      quizType: quizType,
      question: question,
      choiceItemMap: choiceItemMap,
    );
  }

  MultipleChoice fromJson(Map<String, Object?> json) {
    return MultipleChoice.fromJson(json);
  }
}

/// @nodoc
const $MultipleChoice = _$MultipleChoiceTearOff();

/// @nodoc
mixin _$MultipleChoice {
  String get quizType => throw _privateConstructorUsedError;
  String get question => throw _privateConstructorUsedError;
  Map<String, ChoiceItem> get choiceItemMap =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MultipleChoiceCopyWith<MultipleChoice> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MultipleChoiceCopyWith<$Res> {
  factory $MultipleChoiceCopyWith(
          MultipleChoice value, $Res Function(MultipleChoice) then) =
      _$MultipleChoiceCopyWithImpl<$Res>;
  $Res call(
      {String quizType,
      String question,
      Map<String, ChoiceItem> choiceItemMap});
}

/// @nodoc
class _$MultipleChoiceCopyWithImpl<$Res>
    implements $MultipleChoiceCopyWith<$Res> {
  _$MultipleChoiceCopyWithImpl(this._value, this._then);

  final MultipleChoice _value;
  // ignore: unused_field
  final $Res Function(MultipleChoice) _then;

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
abstract class _$MultipleChoiceCopyWith<$Res>
    implements $MultipleChoiceCopyWith<$Res> {
  factory _$MultipleChoiceCopyWith(
          _MultipleChoice value, $Res Function(_MultipleChoice) then) =
      __$MultipleChoiceCopyWithImpl<$Res>;
  @override
  $Res call(
      {String quizType,
      String question,
      Map<String, ChoiceItem> choiceItemMap});
}

/// @nodoc
class __$MultipleChoiceCopyWithImpl<$Res>
    extends _$MultipleChoiceCopyWithImpl<$Res>
    implements _$MultipleChoiceCopyWith<$Res> {
  __$MultipleChoiceCopyWithImpl(
      _MultipleChoice _value, $Res Function(_MultipleChoice) _then)
      : super(_value, (v) => _then(v as _MultipleChoice));

  @override
  _MultipleChoice get _value => super._value as _MultipleChoice;

  @override
  $Res call({
    Object? quizType = freezed,
    Object? question = freezed,
    Object? choiceItemMap = freezed,
  }) {
    return _then(_MultipleChoice(
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
class _$_MultipleChoice implements _MultipleChoice {
  _$_MultipleChoice(
      {required this.quizType,
      required this.question,
      required this.choiceItemMap});

  factory _$_MultipleChoice.fromJson(Map<String, dynamic> json) =>
      _$$_MultipleChoiceFromJson(json);

  @override
  final String quizType;
  @override
  final String question;
  @override
  final Map<String, ChoiceItem> choiceItemMap;

  @override
  String toString() {
    return 'MultipleChoice(quizType: $quizType, question: $question, choiceItemMap: $choiceItemMap)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _MultipleChoice &&
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
  _$MultipleChoiceCopyWith<_MultipleChoice> get copyWith =>
      __$MultipleChoiceCopyWithImpl<_MultipleChoice>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_MultipleChoiceToJson(this);
  }
}

abstract class _MultipleChoice implements MultipleChoice {
  factory _MultipleChoice(
      {required String quizType,
      required String question,
      required Map<String, ChoiceItem> choiceItemMap}) = _$_MultipleChoice;

  factory _MultipleChoice.fromJson(Map<String, dynamic> json) =
      _$_MultipleChoice.fromJson;

  @override
  String get quizType;
  @override
  String get question;
  @override
  Map<String, ChoiceItem> get choiceItemMap;
  @override
  @JsonKey(ignore: true)
  _$MultipleChoiceCopyWith<_MultipleChoice> get copyWith =>
      throw _privateConstructorUsedError;
}
