// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'choice_item.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ChoiceItem _$$_ChoiceItemFromJson(Map<String, dynamic> json) =>
    _$_ChoiceItem(
      uid: json['uid'] as String,
      text: json['text'] as String?,
      isTrueAnswer: json['isTrueAnswer'] as bool,
    );

Map<String, dynamic> _$$_ChoiceItemToJson(_$_ChoiceItem instance) =>
    <String, dynamic>{
      'uid': instance.uid,
      'text': instance.text,
      'isTrueAnswer': instance.isTrueAnswer,
    };
