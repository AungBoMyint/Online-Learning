import 'package:freezed_annotation/freezed_annotation.dart';

part 'fill_blank.g.dart';
part 'fill_blank.freezed.dart';

@freezed
class FillBlank with _$FillBlank {
  factory FillBlank({
    required String quizType,
    required String question,
    required String trueAnswer,
  }) = _FillBlank;

  factory FillBlank.fromJson(Map<String, dynamic> json) =>
      _$FillBlankFromJson(json);
}
