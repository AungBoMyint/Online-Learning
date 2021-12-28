import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:uuid/uuid.dart';

part 'choice_item.g.dart';
part 'choice_item.freezed.dart';

@freezed
class ChoiceItem with _$ChoiceItem {
  factory ChoiceItem({
    required String uid,
    required String? text,
    required bool isTrueAnswer,
  }) = _ChoiceItem;

  factory ChoiceItem.fromJson(Map<String, dynamic> json) =>
      _$ChoiceItemFromJson(json);

  factory ChoiceItem.initial() => ChoiceItem(
        uid: Uuid().v1(),
        text: null,
        isTrueAnswer: false,
      );
}
