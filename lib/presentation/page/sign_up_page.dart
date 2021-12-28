import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:online_learning/application/auth/bloc/auth_bloc.dart';

import '../../route.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({Key? key}) : super(key: key);

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  late final TextEditingController _emailController;
  late final TextEditingController _passwordController;
  late final TextEditingController _confirmPasswordController;
  late final TextEditingController _userNameController;
  late final GlobalKey _formKey = GlobalKey<FormState>();

  @override
  void initState() {
    _emailController = TextEditingController();
    _passwordController = TextEditingController();
    _confirmPasswordController = TextEditingController();
    _userNameController = TextEditingController();
    super.initState();
  }

  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    _confirmPasswordController.dispose();
    _userNameController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
        body: SafeArea(
            child: BlocConsumer<AuthBloc, AuthState>(
      builder: (context, state) {
        return Form(
          autovalidateMode: AutovalidateMode.always,
          key: _formKey,
          child: SingleChildScrollView(
            child: SizedBox(
              height: size.height,
              child: Padding(
                padding: const EdgeInsets.only(
                  left: 20,
                  right: 20,
                ),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SizedBox(
                        height: 20,
                      ),
                      //Sign Up
                      const Center(
                        child: Text("Sign Up",
                            style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: 20,
                            )),
                      ),
                      //Sign Up Image Svg
                      SizedBox(
                          height: size.height * 0.25,
                          child: SvgPicture.asset(
                            "images/pencil_onlinelearning.svg",
                          )),

                      ///Space For Anything
                      const SizedBox(
                        height: 5,
                      ),

                      ///User Name
                      SizedBox(
                        child: Text("Name",
                            style: TextStyle(
                              color: Colors.grey[800],
                              fontWeight: FontWeight.bold,
                              fontSize: 15,
                            )),
                      ),
                      const SizedBox(height: 10),
                      TextFormField(
                        controller: _userNameController,
                        validator: (userName) {
                          if (userName == null) {
                            return "You must enter your name.";
                          } else if (userName.contains(RegExp(r'\s')) &&
                              userName.length < 3) {
                            return "Your name can't contains space and must be at least 3 charachtes";
                          } else {
                            return null;
                          }
                        },
                        decoration: const InputDecoration(
                            contentPadding: EdgeInsets.symmetric(
                              vertical: 10,
                              horizontal: 20,
                            ),
                            hintText: "Your Name",
                            border: OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(20)),
                            )),
                      ),
                      const SizedBox(height: 15),
                      SizedBox(
                        child: Text("Email/Phone Number",
                            style: TextStyle(
                              color: Colors.grey[800],
                              fontWeight: FontWeight.bold,
                              fontSize: 15,
                            )),
                      ),
                      const SizedBox(height: 10),
                      TextFormField(
                        controller: _emailController,
                        validator: (value) {
                          return BlocProvider.of<AuthBloc>(context,
                                  listen: true)
                              .state
                              .authFailureOrNot
                              .fold(
                                () => null,
                                (some) => some.fold(
                                  (l) => l.maybeMap(
                                    orElse: () => null,
                                    emailAlreadyInUse: (emailUsed) =>
                                        "Email have already used.",
                                    serverError: (serverError) =>
                                        "Check your connection",
                                  ),
                                  (r) => null,
                                ),
                              );
                        },
                        decoration: const InputDecoration(
                            contentPadding: EdgeInsets.symmetric(
                              vertical: 10,
                              horizontal: 20,
                            ),
                            hintText: "Enter your email or phone",
                            border: OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(20)),
                            )),
                      ),
                      const SizedBox(height: 15),

                      ///Password
                      SizedBox(
                        child: Text("Password",
                            style: TextStyle(
                              color: Colors.grey[800],
                              fontWeight: FontWeight.bold,
                              fontSize: 15,
                            )),
                      ),
                      const SizedBox(height: 10),
                      TextFormField(
                        controller: _passwordController,
                        validator: (value) {
                          return BlocProvider.of<AuthBloc>(context,
                                  listen: true)
                              .state
                              .authFailureOrNot
                              .fold(
                                () => null,
                                (some) => some.fold(
                                  (l) => l.maybeMap(
                                    orElse: () => null,
                                    weakPassword: (weakPassword) =>
                                        "Password is weak",
                                    serverError: (serverError) =>
                                        "Check your connection",
                                  ),
                                  (r) => null,
                                ),
                              );
                        },
                        decoration: const InputDecoration(
                            contentPadding: EdgeInsets.symmetric(
                              vertical: 10,
                              horizontal: 20,
                            ),
                            hintText: "Enter your password",
                            border: OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(20)),
                            )),
                      ),

                      ///Confirm Password
                      const SizedBox(height: 15),
                      SizedBox(
                        child: Text("Confirm Password",
                            style: TextStyle(
                              color: Colors.grey[800],
                              fontWeight: FontWeight.bold,
                              fontSize: 15,
                            )),
                      ),
                      const SizedBox(height: 10),
                      TextFormField(
                        controller: _confirmPasswordController,
                        validator: (value) {
                          if (value == _passwordController.text) {
                            return null;
                          } else {
                            return "Confirm password must be equal to first password.";
                          }
                        },
                        decoration: const InputDecoration(
                            contentPadding: EdgeInsets.symmetric(
                              vertical: 10,
                              horizontal: 20,
                            ),
                            hintText: "Confirm your password",
                            border: OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(20)),
                            )),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      //Sign In Button
                      Center(
                        child: SizedBox(
                            height: 50,
                            width: size.width * 0.85,
                            child: ElevatedButton(
                              onPressed: () {
                                ///Naviagte to Home Screen
                                BlocProvider.of<AuthBloc>(context).add(
                                  RegisterWithEmailAndPassword(
                                    email: _emailController.text,
                                    password: _passwordController.text,
                                    userName: _userNameController.text,
                                  ),
                                );
                              },
                              style: ElevatedButton.styleFrom(
                                primary: Colors.blue[600],
                                shape: const RoundedRectangleBorder(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(20)),
                                ),
                              ),
                              child: const Text("Sign Up",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                  )),
                            )),
                      )
                    ]),
              ),
            ),
          ),
        );
      },
      listener: (context, state) {
        if (state.sendingVerification) {
          Navigator.of(context)
              .pushReplacementNamed(RouteGenerator.emailVerificationPage);
        }
      },
    )));
  }
}
