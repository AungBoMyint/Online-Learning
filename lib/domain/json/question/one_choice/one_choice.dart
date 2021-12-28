import 'package:freezed_annotation/freezed_annotation.dart';

import '../choice_item.dart';

part 'one_choice.g.dart';
part 'one_choice.freezed.dart';

@freezed
class OneChoice with _$OneChoice {
  factory OneChoice({
    required String quizType,
    required String question,
    required Map<String, ChoiceItem> choiceItemMap,
  }) = _OneChoice;

  factory OneChoice.fromJson(Map<String, dynamic> json) =>
      _$OneChoiceFromJson(json);
}
