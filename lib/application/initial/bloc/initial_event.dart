part of 'initial_bloc.dart';

@freezed
class InitialEvent with _$InitialEvent {
  const factory InitialEvent.changeDotsIndicatorPosition({
    required int position,
  }) = ChangeDotsIndicatorPosition;
}
