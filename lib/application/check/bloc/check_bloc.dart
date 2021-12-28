import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'check_event.dart';
part 'check_state.dart';
part 'check_bloc.freezed.dart';

class CheckBloc extends Bloc<CheckEvent, CheckState> {
  CheckBloc() : super(_Initial()) {
    //First Check This CourseId is include,if not we put or not put again
    on<CheckCourseExist>((event, emit) {});
  }
}
