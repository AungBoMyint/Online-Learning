part of 'initial_bloc.dart';

@freezed
class InitialState with _$InitialState {
  const factory InitialState({
    required int currentPosition,
  }) = _InitialState;

  factory InitialState.init() => const InitialState(
        currentPosition: 0,
      );
}
