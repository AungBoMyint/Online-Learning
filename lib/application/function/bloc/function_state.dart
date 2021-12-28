part of 'function_bloc.dart';

@freezed
class FunctionState with _$FunctionState {
  const factory FunctionState({
    required int optionId,
    required int navigationItemId,
    required int courseOptionId,
    required int lessonIndex,
  }) = _FunctionState;

  factory FunctionState.init() => const FunctionState(
        optionId: 0,
        navigationItemId: 0,
        courseOptionId: 0,
        lessonIndex: 0,
      );
}
