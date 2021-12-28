// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'module.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Module _$ModuleFromJson(Map<String, dynamic> json) {
  return _Module.fromJson(json);
}

/// @nodoc
class _$ModuleTearOff {
  const _$ModuleTearOff();

  _Module call({required String id, required String? moduleTitle}) {
    return _Module(
      id: id,
      moduleTitle: moduleTitle,
    );
  }

  Module fromJson(Map<String, Object?> json) {
    return Module.fromJson(json);
  }
}

/// @nodoc
const $Module = _$ModuleTearOff();

/// @nodoc
mixin _$Module {
  String get id => throw _privateConstructorUsedError;
  String? get moduleTitle => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ModuleCopyWith<Module> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ModuleCopyWith<$Res> {
  factory $ModuleCopyWith(Module value, $Res Function(Module) then) =
      _$ModuleCopyWithImpl<$Res>;
  $Res call({String id, String? moduleTitle});
}

/// @nodoc
class _$ModuleCopyWithImpl<$Res> implements $ModuleCopyWith<$Res> {
  _$ModuleCopyWithImpl(this._value, this._then);

  final Module _value;
  // ignore: unused_field
  final $Res Function(Module) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? moduleTitle = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      moduleTitle: moduleTitle == freezed
          ? _value.moduleTitle
          : moduleTitle // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$ModuleCopyWith<$Res> implements $ModuleCopyWith<$Res> {
  factory _$ModuleCopyWith(_Module value, $Res Function(_Module) then) =
      __$ModuleCopyWithImpl<$Res>;
  @override
  $Res call({String id, String? moduleTitle});
}

/// @nodoc
class __$ModuleCopyWithImpl<$Res> extends _$ModuleCopyWithImpl<$Res>
    implements _$ModuleCopyWith<$Res> {
  __$ModuleCopyWithImpl(_Module _value, $Res Function(_Module) _then)
      : super(_value, (v) => _then(v as _Module));

  @override
  _Module get _value => super._value as _Module;

  @override
  $Res call({
    Object? id = freezed,
    Object? moduleTitle = freezed,
  }) {
    return _then(_Module(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      moduleTitle: moduleTitle == freezed
          ? _value.moduleTitle
          : moduleTitle // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Module implements _Module {
  const _$_Module({required this.id, required this.moduleTitle});

  factory _$_Module.fromJson(Map<String, dynamic> json) =>
      _$$_ModuleFromJson(json);

  @override
  final String id;
  @override
  final String? moduleTitle;

  @override
  String toString() {
    return 'Module(id: $id, moduleTitle: $moduleTitle)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Module &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.moduleTitle, moduleTitle) ||
                other.moduleTitle == moduleTitle));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id, moduleTitle);

  @JsonKey(ignore: true)
  @override
  _$ModuleCopyWith<_Module> get copyWith =>
      __$ModuleCopyWithImpl<_Module>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ModuleToJson(this);
  }
}

abstract class _Module implements Module {
  const factory _Module({required String id, required String? moduleTitle}) =
      _$_Module;

  factory _Module.fromJson(Map<String, dynamic> json) = _$_Module.fromJson;

  @override
  String get id;
  @override
  String? get moduleTitle;
  @override
  @JsonKey(ignore: true)
  _$ModuleCopyWith<_Module> get copyWith => throw _privateConstructorUsedError;
}
