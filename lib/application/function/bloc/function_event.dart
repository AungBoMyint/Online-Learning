part of 'function_bloc.dart';

@freezed
class FunctionEvent with _$FunctionEvent {
  const factory FunctionEvent.changeChooseOption({
    required int optionId,
  }) = ChangeChooseOption;
  const factory FunctionEvent.changeNavigationItem({
    required int itemId,
  }) = ChangeNavigationItem;
  const factory FunctionEvent.changeMyCourseOption({
    required int courseOptionId,
  }) = ChangeMyCourseOption;
  const factory FunctionEvent.changeLessonIndex({
    required int lessonIndex,
  }) = ChangeLessonIndex;
}
