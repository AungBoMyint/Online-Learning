import 'package:bloc/bloc.dart';
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:online_learning/domain/json/users_course/user_module.dart';
import 'package:online_learning/domain/json/users_course/users_course.dart';

part 'database_event.dart';
part 'database_state.dart';
part 'database_bloc.freezed.dart';

class DatabaseBloc extends Bloc<DatabaseEvent, DatabaseState> {
  DatabaseBloc() : super(_Initial()) {
    on<DatabaseEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
