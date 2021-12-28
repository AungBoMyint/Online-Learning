import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:online_learning/application/function/bloc/function_bloc.dart';

import 'navigation_main_page.dart';

class AuthenticatedPage extends StatelessWidget {
  const AuthenticatedPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider<FunctionBloc>(
      create: (context) => FunctionBloc(),
      child: const NavigationMainPage(),
    );
  }
}
