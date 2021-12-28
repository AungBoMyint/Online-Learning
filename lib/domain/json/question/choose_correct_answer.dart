import 'package:json_annotation/json_annotation.dart';

part 'choose_correct_answer.g.dart';

@JsonSerializable()
class ChooseCorrectAnswer {
  final String quizType;
  final String question;
  final List<String> chooseList;
  final String answer;
  ChooseCorrectAnswer({
    required this.quizType,
    required this.question,
    required this.chooseList,
    required this.answer,
  });

  factory ChooseCorrectAnswer.fromJson(Map<String, dynamic> json) =>
      _$ChooseCorrectAnswerFromJson(json);

  Map<String, dynamic> toJson() => _$ChooseCorrectAnswerToJson(this);
}
