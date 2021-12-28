import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:online_learning/application/auth/bloc/auth_bloc.dart';
import 'package:online_learning/presentation/resuable_widgets/form_widget.dart';

import '../../route.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return BlocListener<AuthBloc, AuthState>(
      listener: (context, state) {
        if (state.isAuthenticated) {
          Navigator.of(context).pushNamedAndRemoveUntil(
            RouteGenerator.authenticatedPage,
            (Route<dynamic> route) => false,
            arguments: ModalRoute.withName(RouteGenerator.authenticatedPage),
          );
        }
      },
      child: Scaffold(
        body: SafeArea(
          child: ListView(
            children: [
              const Center(
                  child: Padding(
                padding: EdgeInsets.only(top: 20),
                child: Text("Sign In",
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 20)),
              )),
              SizedBox(
                  height: size.height * 0.3,
                  child: SvgPicture.asset(
                    "images/education_circle.svg",
                  )),
              //Form Widget
              const FormWidget()
            ],
          ),
        ),
      ),
    );
  }
}
