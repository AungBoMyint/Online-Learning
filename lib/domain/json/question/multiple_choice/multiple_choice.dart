import 'package:freezed_annotation/freezed_annotation.dart';

import '../choice_item.dart';

part 'multiple_choice.g.dart';
part 'multiple_choice.freezed.dart';

@freezed
class MultipleChoice with _$MultipleChoice {
  factory MultipleChoice({
    required String quizType,
    required String question,
    required Map<String, ChoiceItem> choiceItemMap,
  }) = _MultipleChoice;

  factory MultipleChoice.fromJson(Map<String, dynamic> json) =>
      _$MultipleChoiceFromJson(json);
}
