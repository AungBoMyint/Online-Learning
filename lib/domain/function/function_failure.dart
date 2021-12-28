import 'package:freezed_annotation/freezed_annotation.dart';

part 'function_failure.freezed.dart';

@freezed
abstract class FunctionFailure with _$FunctionFailure {
  const factory FunctionFailure.fialToUpload() = FailToUpload;
  const factory FunctionFailure.fialToUpdate() = FailToUpdate;
}
