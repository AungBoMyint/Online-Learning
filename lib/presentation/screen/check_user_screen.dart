import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:online_learning/application/auth/bloc/auth_bloc.dart';
import 'package:online_learning/route.dart';

class CheckUserScreen extends StatelessWidget {
  const CheckUserScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocListener<AuthBloc, AuthState>(
      listener: (context, state) {
        if (state.isAuthenticated) {
          Navigator.of(context).pushNamedAndRemoveUntil(
            RouteGenerator.authenticatedPage,
            (Route<dynamic> route) => false,
            arguments: ModalRoute.withName(RouteGenerator.authenticatedPage),
          );
        } else {
          Navigator.of(context).pushReplacementNamed(
            RouteGenerator.initialPage,
          );
        }
      },
      child: const Scaffold(
        body: Center(
          child: CircularProgressIndicator(),
        ),
      ),
    );
  }
}
