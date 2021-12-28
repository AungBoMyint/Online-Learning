import 'package:freezed_annotation/freezed_annotation.dart';

part 'content.freezed.dart';
part 'content.g.dart';

@freezed
class Content with _$Content {
  factory Content({
    required String content,
    required String color,
  }) = _Content;

  factory Content.fromJson(Map<String, dynamic> json) =>
      _$ContentFromJson(json);
}
