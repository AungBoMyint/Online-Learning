// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'one_choice.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_OneChoice _$$_OneChoiceFromJson(Map<String, dynamic> json) => _$_OneChoice(
      quizType: json['quizType'] as String,
      question: json['question'] as String,
      choiceItemMap: (json['choiceItemMap'] as Map<String, dynamic>).map(
        (k, e) => MapEntry(k, ChoiceItem.fromJson(e as Map<String, dynamic>)),
      ),
    );

Map<String, dynamic> _$$_OneChoiceToJson(_$_OneChoice instance) =>
    <String, dynamic>{
      'quizType': instance.quizType,
      'question': instance.question,
      'choiceItemMap': instance.choiceItemMap,
    };
