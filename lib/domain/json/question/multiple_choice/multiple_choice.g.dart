// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'multiple_choice.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_MultipleChoice _$$_MultipleChoiceFromJson(Map<String, dynamic> json) =>
    _$_MultipleChoice(
      quizType: json['quizType'] as String,
      question: json['question'] as String,
      choiceItemMap: (json['choiceItemMap'] as Map<String, dynamic>).map(
        (k, e) => MapEntry(k, ChoiceItem.fromJson(e as Map<String, dynamic>)),
      ),
    );

Map<String, dynamic> _$$_MultipleChoiceToJson(_$_MultipleChoice instance) =>
    <String, dynamic>{
      'quizType': instance.quizType,
      'question': instance.question,
      'choiceItemMap': instance.choiceItemMap
          .map((key, value) => MapEntry(key, value.toJson())),
    };
