import 'package:bloc/bloc.dart';
import 'package:bloc_concurrency/bloc_concurrency.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'function_event.dart';
part 'function_state.dart';
part 'function_bloc.freezed.dart';

class FunctionBloc extends Bloc<FunctionEvent, FunctionState> {
  FunctionBloc() : super(FunctionState.init()) {
    on<ChangeChooseOption>(
      (event, emit) {
        emit(state.copyWith(optionId: event.optionId));
      },
      transformer: sequential(),
    );
    on<ChangeNavigationItem>(
        (event, emit) => emit(state.copyWith(navigationItemId: event.itemId)));
    on<ChangeMyCourseOption>((event, emit) =>
        emit(state.copyWith(courseOptionId: event.courseOptionId)));

    ///Change Lesson Index
    on<ChangeLessonIndex>(
      (event, emit) => emit(state.copyWith(lessonIndex: event.lessonIndex)),
    );
  }
}
