// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'choose_correct_answer.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ChooseCorrectAnswer _$ChooseCorrectAnswerFromJson(Map<String, dynamic> json) =>
    ChooseCorrectAnswer(
      quizType: json['quizType'] as String,
      question: json['question'] as String,
      chooseList: (json['chooseList'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
      answer: json['answer'] as String,
    );

Map<String, dynamic> _$ChooseCorrectAnswerToJson(
        ChooseCorrectAnswer instance) =>
    <String, dynamic>{
      'quizType': instance.quizType,
      'question': instance.question,
      'chooseList': instance.chooseList,
      'answer': instance.answer,
    };
