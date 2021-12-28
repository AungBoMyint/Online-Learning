import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'initial_event.dart';
part 'initial_state.dart';
part 'initial_bloc.freezed.dart';

class InitialBloc extends Bloc<InitialEvent, InitialState> {
  InitialBloc() : super(InitialState.init()) {
    on<ChangeDotsIndicatorPosition>(
        (event, emit) => emit(state.copyWith(currentPosition: event.position)));
  }
}
