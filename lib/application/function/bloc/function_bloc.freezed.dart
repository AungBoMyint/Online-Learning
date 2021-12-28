// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'function_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$FunctionEventTearOff {
  const _$FunctionEventTearOff();

  ChangeChooseOption changeChooseOption({required int optionId}) {
    return ChangeChooseOption(
      optionId: optionId,
    );
  }

  ChangeNavigationItem changeNavigationItem({required int itemId}) {
    return ChangeNavigationItem(
      itemId: itemId,
    );
  }

  ChangeMyCourseOption changeMyCourseOption({required int courseOptionId}) {
    return ChangeMyCourseOption(
      courseOptionId: courseOptionId,
    );
  }

  ChangeLessonIndex changeLessonIndex({required int lessonIndex}) {
    return ChangeLessonIndex(
      lessonIndex: lessonIndex,
    );
  }
}

/// @nodoc
const $FunctionEvent = _$FunctionEventTearOff();

/// @nodoc
mixin _$FunctionEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int optionId) changeChooseOption,
    required TResult Function(int itemId) changeNavigationItem,
    required TResult Function(int courseOptionId) changeMyCourseOption,
    required TResult Function(int lessonIndex) changeLessonIndex,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(int optionId)? changeChooseOption,
    TResult Function(int itemId)? changeNavigationItem,
    TResult Function(int courseOptionId)? changeMyCourseOption,
    TResult Function(int lessonIndex)? changeLessonIndex,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int optionId)? changeChooseOption,
    TResult Function(int itemId)? changeNavigationItem,
    TResult Function(int courseOptionId)? changeMyCourseOption,
    TResult Function(int lessonIndex)? changeLessonIndex,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ChangeChooseOption value) changeChooseOption,
    required TResult Function(ChangeNavigationItem value) changeNavigationItem,
    required TResult Function(ChangeMyCourseOption value) changeMyCourseOption,
    required TResult Function(ChangeLessonIndex value) changeLessonIndex,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ChangeChooseOption value)? changeChooseOption,
    TResult Function(ChangeNavigationItem value)? changeNavigationItem,
    TResult Function(ChangeMyCourseOption value)? changeMyCourseOption,
    TResult Function(ChangeLessonIndex value)? changeLessonIndex,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ChangeChooseOption value)? changeChooseOption,
    TResult Function(ChangeNavigationItem value)? changeNavigationItem,
    TResult Function(ChangeMyCourseOption value)? changeMyCourseOption,
    TResult Function(ChangeLessonIndex value)? changeLessonIndex,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FunctionEventCopyWith<$Res> {
  factory $FunctionEventCopyWith(
          FunctionEvent value, $Res Function(FunctionEvent) then) =
      _$FunctionEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$FunctionEventCopyWithImpl<$Res>
    implements $FunctionEventCopyWith<$Res> {
  _$FunctionEventCopyWithImpl(this._value, this._then);

  final FunctionEvent _value;
  // ignore: unused_field
  final $Res Function(FunctionEvent) _then;
}

/// @nodoc
abstract class $ChangeChooseOptionCopyWith<$Res> {
  factory $ChangeChooseOptionCopyWith(
          ChangeChooseOption value, $Res Function(ChangeChooseOption) then) =
      _$ChangeChooseOptionCopyWithImpl<$Res>;
  $Res call({int optionId});
}

/// @nodoc
class _$ChangeChooseOptionCopyWithImpl<$Res>
    extends _$FunctionEventCopyWithImpl<$Res>
    implements $ChangeChooseOptionCopyWith<$Res> {
  _$ChangeChooseOptionCopyWithImpl(
      ChangeChooseOption _value, $Res Function(ChangeChooseOption) _then)
      : super(_value, (v) => _then(v as ChangeChooseOption));

  @override
  ChangeChooseOption get _value => super._value as ChangeChooseOption;

  @override
  $Res call({
    Object? optionId = freezed,
  }) {
    return _then(ChangeChooseOption(
      optionId: optionId == freezed
          ? _value.optionId
          : optionId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$ChangeChooseOption implements ChangeChooseOption {
  const _$ChangeChooseOption({required this.optionId});

  @override
  final int optionId;

  @override
  String toString() {
    return 'FunctionEvent.changeChooseOption(optionId: $optionId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is ChangeChooseOption &&
            (identical(other.optionId, optionId) ||
                other.optionId == optionId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, optionId);

  @JsonKey(ignore: true)
  @override
  $ChangeChooseOptionCopyWith<ChangeChooseOption> get copyWith =>
      _$ChangeChooseOptionCopyWithImpl<ChangeChooseOption>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int optionId) changeChooseOption,
    required TResult Function(int itemId) changeNavigationItem,
    required TResult Function(int courseOptionId) changeMyCourseOption,
    required TResult Function(int lessonIndex) changeLessonIndex,
  }) {
    return changeChooseOption(optionId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(int optionId)? changeChooseOption,
    TResult Function(int itemId)? changeNavigationItem,
    TResult Function(int courseOptionId)? changeMyCourseOption,
    TResult Function(int lessonIndex)? changeLessonIndex,
  }) {
    return changeChooseOption?.call(optionId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int optionId)? changeChooseOption,
    TResult Function(int itemId)? changeNavigationItem,
    TResult Function(int courseOptionId)? changeMyCourseOption,
    TResult Function(int lessonIndex)? changeLessonIndex,
    required TResult orElse(),
  }) {
    if (changeChooseOption != null) {
      return changeChooseOption(optionId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ChangeChooseOption value) changeChooseOption,
    required TResult Function(ChangeNavigationItem value) changeNavigationItem,
    required TResult Function(ChangeMyCourseOption value) changeMyCourseOption,
    required TResult Function(ChangeLessonIndex value) changeLessonIndex,
  }) {
    return changeChooseOption(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ChangeChooseOption value)? changeChooseOption,
    TResult Function(ChangeNavigationItem value)? changeNavigationItem,
    TResult Function(ChangeMyCourseOption value)? changeMyCourseOption,
    TResult Function(ChangeLessonIndex value)? changeLessonIndex,
  }) {
    return changeChooseOption?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ChangeChooseOption value)? changeChooseOption,
    TResult Function(ChangeNavigationItem value)? changeNavigationItem,
    TResult Function(ChangeMyCourseOption value)? changeMyCourseOption,
    TResult Function(ChangeLessonIndex value)? changeLessonIndex,
    required TResult orElse(),
  }) {
    if (changeChooseOption != null) {
      return changeChooseOption(this);
    }
    return orElse();
  }
}

abstract class ChangeChooseOption implements FunctionEvent {
  const factory ChangeChooseOption({required int optionId}) =
      _$ChangeChooseOption;

  int get optionId;
  @JsonKey(ignore: true)
  $ChangeChooseOptionCopyWith<ChangeChooseOption> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChangeNavigationItemCopyWith<$Res> {
  factory $ChangeNavigationItemCopyWith(ChangeNavigationItem value,
          $Res Function(ChangeNavigationItem) then) =
      _$ChangeNavigationItemCopyWithImpl<$Res>;
  $Res call({int itemId});
}

/// @nodoc
class _$ChangeNavigationItemCopyWithImpl<$Res>
    extends _$FunctionEventCopyWithImpl<$Res>
    implements $ChangeNavigationItemCopyWith<$Res> {
  _$ChangeNavigationItemCopyWithImpl(
      ChangeNavigationItem _value, $Res Function(ChangeNavigationItem) _then)
      : super(_value, (v) => _then(v as ChangeNavigationItem));

  @override
  ChangeNavigationItem get _value => super._value as ChangeNavigationItem;

  @override
  $Res call({
    Object? itemId = freezed,
  }) {
    return _then(ChangeNavigationItem(
      itemId: itemId == freezed
          ? _value.itemId
          : itemId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$ChangeNavigationItem implements ChangeNavigationItem {
  const _$ChangeNavigationItem({required this.itemId});

  @override
  final int itemId;

  @override
  String toString() {
    return 'FunctionEvent.changeNavigationItem(itemId: $itemId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is ChangeNavigationItem &&
            (identical(other.itemId, itemId) || other.itemId == itemId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, itemId);

  @JsonKey(ignore: true)
  @override
  $ChangeNavigationItemCopyWith<ChangeNavigationItem> get copyWith =>
      _$ChangeNavigationItemCopyWithImpl<ChangeNavigationItem>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int optionId) changeChooseOption,
    required TResult Function(int itemId) changeNavigationItem,
    required TResult Function(int courseOptionId) changeMyCourseOption,
    required TResult Function(int lessonIndex) changeLessonIndex,
  }) {
    return changeNavigationItem(itemId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(int optionId)? changeChooseOption,
    TResult Function(int itemId)? changeNavigationItem,
    TResult Function(int courseOptionId)? changeMyCourseOption,
    TResult Function(int lessonIndex)? changeLessonIndex,
  }) {
    return changeNavigationItem?.call(itemId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int optionId)? changeChooseOption,
    TResult Function(int itemId)? changeNavigationItem,
    TResult Function(int courseOptionId)? changeMyCourseOption,
    TResult Function(int lessonIndex)? changeLessonIndex,
    required TResult orElse(),
  }) {
    if (changeNavigationItem != null) {
      return changeNavigationItem(itemId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ChangeChooseOption value) changeChooseOption,
    required TResult Function(ChangeNavigationItem value) changeNavigationItem,
    required TResult Function(ChangeMyCourseOption value) changeMyCourseOption,
    required TResult Function(ChangeLessonIndex value) changeLessonIndex,
  }) {
    return changeNavigationItem(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ChangeChooseOption value)? changeChooseOption,
    TResult Function(ChangeNavigationItem value)? changeNavigationItem,
    TResult Function(ChangeMyCourseOption value)? changeMyCourseOption,
    TResult Function(ChangeLessonIndex value)? changeLessonIndex,
  }) {
    return changeNavigationItem?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ChangeChooseOption value)? changeChooseOption,
    TResult Function(ChangeNavigationItem value)? changeNavigationItem,
    TResult Function(ChangeMyCourseOption value)? changeMyCourseOption,
    TResult Function(ChangeLessonIndex value)? changeLessonIndex,
    required TResult orElse(),
  }) {
    if (changeNavigationItem != null) {
      return changeNavigationItem(this);
    }
    return orElse();
  }
}

abstract class ChangeNavigationItem implements FunctionEvent {
  const factory ChangeNavigationItem({required int itemId}) =
      _$ChangeNavigationItem;

  int get itemId;
  @JsonKey(ignore: true)
  $ChangeNavigationItemCopyWith<ChangeNavigationItem> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChangeMyCourseOptionCopyWith<$Res> {
  factory $ChangeMyCourseOptionCopyWith(ChangeMyCourseOption value,
          $Res Function(ChangeMyCourseOption) then) =
      _$ChangeMyCourseOptionCopyWithImpl<$Res>;
  $Res call({int courseOptionId});
}

/// @nodoc
class _$ChangeMyCourseOptionCopyWithImpl<$Res>
    extends _$FunctionEventCopyWithImpl<$Res>
    implements $ChangeMyCourseOptionCopyWith<$Res> {
  _$ChangeMyCourseOptionCopyWithImpl(
      ChangeMyCourseOption _value, $Res Function(ChangeMyCourseOption) _then)
      : super(_value, (v) => _then(v as ChangeMyCourseOption));

  @override
  ChangeMyCourseOption get _value => super._value as ChangeMyCourseOption;

  @override
  $Res call({
    Object? courseOptionId = freezed,
  }) {
    return _then(ChangeMyCourseOption(
      courseOptionId: courseOptionId == freezed
          ? _value.courseOptionId
          : courseOptionId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$ChangeMyCourseOption implements ChangeMyCourseOption {
  const _$ChangeMyCourseOption({required this.courseOptionId});

  @override
  final int courseOptionId;

  @override
  String toString() {
    return 'FunctionEvent.changeMyCourseOption(courseOptionId: $courseOptionId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is ChangeMyCourseOption &&
            (identical(other.courseOptionId, courseOptionId) ||
                other.courseOptionId == courseOptionId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, courseOptionId);

  @JsonKey(ignore: true)
  @override
  $ChangeMyCourseOptionCopyWith<ChangeMyCourseOption> get copyWith =>
      _$ChangeMyCourseOptionCopyWithImpl<ChangeMyCourseOption>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int optionId) changeChooseOption,
    required TResult Function(int itemId) changeNavigationItem,
    required TResult Function(int courseOptionId) changeMyCourseOption,
    required TResult Function(int lessonIndex) changeLessonIndex,
  }) {
    return changeMyCourseOption(courseOptionId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(int optionId)? changeChooseOption,
    TResult Function(int itemId)? changeNavigationItem,
    TResult Function(int courseOptionId)? changeMyCourseOption,
    TResult Function(int lessonIndex)? changeLessonIndex,
  }) {
    return changeMyCourseOption?.call(courseOptionId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int optionId)? changeChooseOption,
    TResult Function(int itemId)? changeNavigationItem,
    TResult Function(int courseOptionId)? changeMyCourseOption,
    TResult Function(int lessonIndex)? changeLessonIndex,
    required TResult orElse(),
  }) {
    if (changeMyCourseOption != null) {
      return changeMyCourseOption(courseOptionId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ChangeChooseOption value) changeChooseOption,
    required TResult Function(ChangeNavigationItem value) changeNavigationItem,
    required TResult Function(ChangeMyCourseOption value) changeMyCourseOption,
    required TResult Function(ChangeLessonIndex value) changeLessonIndex,
  }) {
    return changeMyCourseOption(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ChangeChooseOption value)? changeChooseOption,
    TResult Function(ChangeNavigationItem value)? changeNavigationItem,
    TResult Function(ChangeMyCourseOption value)? changeMyCourseOption,
    TResult Function(ChangeLessonIndex value)? changeLessonIndex,
  }) {
    return changeMyCourseOption?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ChangeChooseOption value)? changeChooseOption,
    TResult Function(ChangeNavigationItem value)? changeNavigationItem,
    TResult Function(ChangeMyCourseOption value)? changeMyCourseOption,
    TResult Function(ChangeLessonIndex value)? changeLessonIndex,
    required TResult orElse(),
  }) {
    if (changeMyCourseOption != null) {
      return changeMyCourseOption(this);
    }
    return orElse();
  }
}

abstract class ChangeMyCourseOption implements FunctionEvent {
  const factory ChangeMyCourseOption({required int courseOptionId}) =
      _$ChangeMyCourseOption;

  int get courseOptionId;
  @JsonKey(ignore: true)
  $ChangeMyCourseOptionCopyWith<ChangeMyCourseOption> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChangeLessonIndexCopyWith<$Res> {
  factory $ChangeLessonIndexCopyWith(
          ChangeLessonIndex value, $Res Function(ChangeLessonIndex) then) =
      _$ChangeLessonIndexCopyWithImpl<$Res>;
  $Res call({int lessonIndex});
}

/// @nodoc
class _$ChangeLessonIndexCopyWithImpl<$Res>
    extends _$FunctionEventCopyWithImpl<$Res>
    implements $ChangeLessonIndexCopyWith<$Res> {
  _$ChangeLessonIndexCopyWithImpl(
      ChangeLessonIndex _value, $Res Function(ChangeLessonIndex) _then)
      : super(_value, (v) => _then(v as ChangeLessonIndex));

  @override
  ChangeLessonIndex get _value => super._value as ChangeLessonIndex;

  @override
  $Res call({
    Object? lessonIndex = freezed,
  }) {
    return _then(ChangeLessonIndex(
      lessonIndex: lessonIndex == freezed
          ? _value.lessonIndex
          : lessonIndex // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$ChangeLessonIndex implements ChangeLessonIndex {
  const _$ChangeLessonIndex({required this.lessonIndex});

  @override
  final int lessonIndex;

  @override
  String toString() {
    return 'FunctionEvent.changeLessonIndex(lessonIndex: $lessonIndex)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is ChangeLessonIndex &&
            (identical(other.lessonIndex, lessonIndex) ||
                other.lessonIndex == lessonIndex));
  }

  @override
  int get hashCode => Object.hash(runtimeType, lessonIndex);

  @JsonKey(ignore: true)
  @override
  $ChangeLessonIndexCopyWith<ChangeLessonIndex> get copyWith =>
      _$ChangeLessonIndexCopyWithImpl<ChangeLessonIndex>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int optionId) changeChooseOption,
    required TResult Function(int itemId) changeNavigationItem,
    required TResult Function(int courseOptionId) changeMyCourseOption,
    required TResult Function(int lessonIndex) changeLessonIndex,
  }) {
    return changeLessonIndex(lessonIndex);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(int optionId)? changeChooseOption,
    TResult Function(int itemId)? changeNavigationItem,
    TResult Function(int courseOptionId)? changeMyCourseOption,
    TResult Function(int lessonIndex)? changeLessonIndex,
  }) {
    return changeLessonIndex?.call(lessonIndex);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int optionId)? changeChooseOption,
    TResult Function(int itemId)? changeNavigationItem,
    TResult Function(int courseOptionId)? changeMyCourseOption,
    TResult Function(int lessonIndex)? changeLessonIndex,
    required TResult orElse(),
  }) {
    if (changeLessonIndex != null) {
      return changeLessonIndex(lessonIndex);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ChangeChooseOption value) changeChooseOption,
    required TResult Function(ChangeNavigationItem value) changeNavigationItem,
    required TResult Function(ChangeMyCourseOption value) changeMyCourseOption,
    required TResult Function(ChangeLessonIndex value) changeLessonIndex,
  }) {
    return changeLessonIndex(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ChangeChooseOption value)? changeChooseOption,
    TResult Function(ChangeNavigationItem value)? changeNavigationItem,
    TResult Function(ChangeMyCourseOption value)? changeMyCourseOption,
    TResult Function(ChangeLessonIndex value)? changeLessonIndex,
  }) {
    return changeLessonIndex?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ChangeChooseOption value)? changeChooseOption,
    TResult Function(ChangeNavigationItem value)? changeNavigationItem,
    TResult Function(ChangeMyCourseOption value)? changeMyCourseOption,
    TResult Function(ChangeLessonIndex value)? changeLessonIndex,
    required TResult orElse(),
  }) {
    if (changeLessonIndex != null) {
      return changeLessonIndex(this);
    }
    return orElse();
  }
}

abstract class ChangeLessonIndex implements FunctionEvent {
  const factory ChangeLessonIndex({required int lessonIndex}) =
      _$ChangeLessonIndex;

  int get lessonIndex;
  @JsonKey(ignore: true)
  $ChangeLessonIndexCopyWith<ChangeLessonIndex> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$FunctionStateTearOff {
  const _$FunctionStateTearOff();

  _FunctionState call(
      {required int optionId,
      required int navigationItemId,
      required int courseOptionId,
      required int lessonIndex}) {
    return _FunctionState(
      optionId: optionId,
      navigationItemId: navigationItemId,
      courseOptionId: courseOptionId,
      lessonIndex: lessonIndex,
    );
  }
}

/// @nodoc
const $FunctionState = _$FunctionStateTearOff();

/// @nodoc
mixin _$FunctionState {
  int get optionId => throw _privateConstructorUsedError;
  int get navigationItemId => throw _privateConstructorUsedError;
  int get courseOptionId => throw _privateConstructorUsedError;
  int get lessonIndex => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $FunctionStateCopyWith<FunctionState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FunctionStateCopyWith<$Res> {
  factory $FunctionStateCopyWith(
          FunctionState value, $Res Function(FunctionState) then) =
      _$FunctionStateCopyWithImpl<$Res>;
  $Res call(
      {int optionId,
      int navigationItemId,
      int courseOptionId,
      int lessonIndex});
}

/// @nodoc
class _$FunctionStateCopyWithImpl<$Res>
    implements $FunctionStateCopyWith<$Res> {
  _$FunctionStateCopyWithImpl(this._value, this._then);

  final FunctionState _value;
  // ignore: unused_field
  final $Res Function(FunctionState) _then;

  @override
  $Res call({
    Object? optionId = freezed,
    Object? navigationItemId = freezed,
    Object? courseOptionId = freezed,
    Object? lessonIndex = freezed,
  }) {
    return _then(_value.copyWith(
      optionId: optionId == freezed
          ? _value.optionId
          : optionId // ignore: cast_nullable_to_non_nullable
              as int,
      navigationItemId: navigationItemId == freezed
          ? _value.navigationItemId
          : navigationItemId // ignore: cast_nullable_to_non_nullable
              as int,
      courseOptionId: courseOptionId == freezed
          ? _value.courseOptionId
          : courseOptionId // ignore: cast_nullable_to_non_nullable
              as int,
      lessonIndex: lessonIndex == freezed
          ? _value.lessonIndex
          : lessonIndex // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
abstract class _$FunctionStateCopyWith<$Res>
    implements $FunctionStateCopyWith<$Res> {
  factory _$FunctionStateCopyWith(
          _FunctionState value, $Res Function(_FunctionState) then) =
      __$FunctionStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {int optionId,
      int navigationItemId,
      int courseOptionId,
      int lessonIndex});
}

/// @nodoc
class __$FunctionStateCopyWithImpl<$Res>
    extends _$FunctionStateCopyWithImpl<$Res>
    implements _$FunctionStateCopyWith<$Res> {
  __$FunctionStateCopyWithImpl(
      _FunctionState _value, $Res Function(_FunctionState) _then)
      : super(_value, (v) => _then(v as _FunctionState));

  @override
  _FunctionState get _value => super._value as _FunctionState;

  @override
  $Res call({
    Object? optionId = freezed,
    Object? navigationItemId = freezed,
    Object? courseOptionId = freezed,
    Object? lessonIndex = freezed,
  }) {
    return _then(_FunctionState(
      optionId: optionId == freezed
          ? _value.optionId
          : optionId // ignore: cast_nullable_to_non_nullable
              as int,
      navigationItemId: navigationItemId == freezed
          ? _value.navigationItemId
          : navigationItemId // ignore: cast_nullable_to_non_nullable
              as int,
      courseOptionId: courseOptionId == freezed
          ? _value.courseOptionId
          : courseOptionId // ignore: cast_nullable_to_non_nullable
              as int,
      lessonIndex: lessonIndex == freezed
          ? _value.lessonIndex
          : lessonIndex // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_FunctionState implements _FunctionState {
  const _$_FunctionState(
      {required this.optionId,
      required this.navigationItemId,
      required this.courseOptionId,
      required this.lessonIndex});

  @override
  final int optionId;
  @override
  final int navigationItemId;
  @override
  final int courseOptionId;
  @override
  final int lessonIndex;

  @override
  String toString() {
    return 'FunctionState(optionId: $optionId, navigationItemId: $navigationItemId, courseOptionId: $courseOptionId, lessonIndex: $lessonIndex)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _FunctionState &&
            (identical(other.optionId, optionId) ||
                other.optionId == optionId) &&
            (identical(other.navigationItemId, navigationItemId) ||
                other.navigationItemId == navigationItemId) &&
            (identical(other.courseOptionId, courseOptionId) ||
                other.courseOptionId == courseOptionId) &&
            (identical(other.lessonIndex, lessonIndex) ||
                other.lessonIndex == lessonIndex));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, optionId, navigationItemId, courseOptionId, lessonIndex);

  @JsonKey(ignore: true)
  @override
  _$FunctionStateCopyWith<_FunctionState> get copyWith =>
      __$FunctionStateCopyWithImpl<_FunctionState>(this, _$identity);
}

abstract class _FunctionState implements FunctionState {
  const factory _FunctionState(
      {required int optionId,
      required int navigationItemId,
      required int courseOptionId,
      required int lessonIndex}) = _$_FunctionState;

  @override
  int get optionId;
  @override
  int get navigationItemId;
  @override
  int get courseOptionId;
  @override
  int get lessonIndex;
  @override
  @JsonKey(ignore: true)
  _$FunctionStateCopyWith<_FunctionState> get copyWith =>
      throw _privateConstructorUsedError;
}
