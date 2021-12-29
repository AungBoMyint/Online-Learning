import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:online_learning/domain/json/question/multiple_choice/multiple_choice.dart';

import 'one_choice/one_choice.dart';

class QuestionConveter<T> implements JsonConverter<T, Object?> {
  const QuestionConveter();
  @override
  T fromJson(Object? json) {
    if (json is Map<String, dynamic>) {
      if (json['quizType'] == "one_choice") {
        return OneChoice.fromJson(json) as T;
      }
      if (json['quizType'] == "multiple_choice") {
        return MultipleChoice.fromJson(json) as T;
      }
    }
    return json as T;
  }

  @override
  Map<String, dynamic>? toJson(T object) {
    if (object is OneChoice) {
      return object.toJson();
    }
  }
}
