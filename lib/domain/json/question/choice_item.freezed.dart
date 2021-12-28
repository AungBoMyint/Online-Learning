// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'choice_item.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ChoiceItem _$ChoiceItemFromJson(Map<String, dynamic> json) {
  return _ChoiceItem.fromJson(json);
}

/// @nodoc
class _$ChoiceItemTearOff {
  const _$ChoiceItemTearOff();

  _ChoiceItem call(
      {required String uid,
      required String? text,
      required bool isTrueAnswer}) {
    return _ChoiceItem(
      uid: uid,
      text: text,
      isTrueAnswer: isTrueAnswer,
    );
  }

  ChoiceItem fromJson(Map<String, Object?> json) {
    return ChoiceItem.fromJson(json);
  }
}

/// @nodoc
const $ChoiceItem = _$ChoiceItemTearOff();

/// @nodoc
mixin _$ChoiceItem {
  String get uid => throw _privateConstructorUsedError;
  String? get text => throw _privateConstructorUsedError;
  bool get isTrueAnswer => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ChoiceItemCopyWith<ChoiceItem> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChoiceItemCopyWith<$Res> {
  factory $ChoiceItemCopyWith(
          ChoiceItem value, $Res Function(ChoiceItem) then) =
      _$ChoiceItemCopyWithImpl<$Res>;
  $Res call({String uid, String? text, bool isTrueAnswer});
}

/// @nodoc
class _$ChoiceItemCopyWithImpl<$Res> implements $ChoiceItemCopyWith<$Res> {
  _$ChoiceItemCopyWithImpl(this._value, this._then);

  final ChoiceItem _value;
  // ignore: unused_field
  final $Res Function(ChoiceItem) _then;

  @override
  $Res call({
    Object? uid = freezed,
    Object? text = freezed,
    Object? isTrueAnswer = freezed,
  }) {
    return _then(_value.copyWith(
      uid: uid == freezed
          ? _value.uid
          : uid // ignore: cast_nullable_to_non_nullable
              as String,
      text: text == freezed
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String?,
      isTrueAnswer: isTrueAnswer == freezed
          ? _value.isTrueAnswer
          : isTrueAnswer // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
abstract class _$ChoiceItemCopyWith<$Res> implements $ChoiceItemCopyWith<$Res> {
  factory _$ChoiceItemCopyWith(
          _ChoiceItem value, $Res Function(_ChoiceItem) then) =
      __$ChoiceItemCopyWithImpl<$Res>;
  @override
  $Res call({String uid, String? text, bool isTrueAnswer});
}

/// @nodoc
class __$ChoiceItemCopyWithImpl<$Res> extends _$ChoiceItemCopyWithImpl<$Res>
    implements _$ChoiceItemCopyWith<$Res> {
  __$ChoiceItemCopyWithImpl(
      _ChoiceItem _value, $Res Function(_ChoiceItem) _then)
      : super(_value, (v) => _then(v as _ChoiceItem));

  @override
  _ChoiceItem get _value => super._value as _ChoiceItem;

  @override
  $Res call({
    Object? uid = freezed,
    Object? text = freezed,
    Object? isTrueAnswer = freezed,
  }) {
    return _then(_ChoiceItem(
      uid: uid == freezed
          ? _value.uid
          : uid // ignore: cast_nullable_to_non_nullable
              as String,
      text: text == freezed
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String?,
      isTrueAnswer: isTrueAnswer == freezed
          ? _value.isTrueAnswer
          : isTrueAnswer // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ChoiceItem implements _ChoiceItem {
  _$_ChoiceItem(
      {required this.uid, required this.text, required this.isTrueAnswer});

  factory _$_ChoiceItem.fromJson(Map<String, dynamic> json) =>
      _$$_ChoiceItemFromJson(json);

  @override
  final String uid;
  @override
  final String? text;
  @override
  final bool isTrueAnswer;

  @override
  String toString() {
    return 'ChoiceItem(uid: $uid, text: $text, isTrueAnswer: $isTrueAnswer)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ChoiceItem &&
            (identical(other.uid, uid) || other.uid == uid) &&
            (identical(other.text, text) || other.text == text) &&
            (identical(other.isTrueAnswer, isTrueAnswer) ||
                other.isTrueAnswer == isTrueAnswer));
  }

  @override
  int get hashCode => Object.hash(runtimeType, uid, text, isTrueAnswer);

  @JsonKey(ignore: true)
  @override
  _$ChoiceItemCopyWith<_ChoiceItem> get copyWith =>
      __$ChoiceItemCopyWithImpl<_ChoiceItem>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ChoiceItemToJson(this);
  }
}

abstract class _ChoiceItem implements ChoiceItem {
  factory _ChoiceItem(
      {required String uid,
      required String? text,
      required bool isTrueAnswer}) = _$_ChoiceItem;

  factory _ChoiceItem.fromJson(Map<String, dynamic> json) =
      _$_ChoiceItem.fromJson;

  @override
  String get uid;
  @override
  String? get text;
  @override
  bool get isTrueAnswer;
  @override
  @JsonKey(ignore: true)
  _$ChoiceItemCopyWith<_ChoiceItem> get copyWith =>
      throw _privateConstructorUsedError;
}
