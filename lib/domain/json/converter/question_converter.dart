import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:online_learning/domain/json/question/choose_correct_answer.dart';

class QuestionConverter<T> implements JsonConverter<T, Object?> {
  const QuestionConverter();
  @override
  T fromJson(Object? json) {
    if (json is Map<String, dynamic> &&
        json['quizType'] == "ChooseCorrectAnswer") {
      return ChooseCorrectAnswer.fromJson(json) as T;
    }
    return json as T;
  }

  @override
  Object? toJson(object) => object;
}
