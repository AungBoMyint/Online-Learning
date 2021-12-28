import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:online_learning/application/auth/bloc/auth_bloc.dart';
import 'package:online_learning/route.dart';

class FormWidget extends StatefulWidget {
  const FormWidget({Key? key}) : super(key: key);

  @override
  State<FormWidget> createState() => _FormWidgetState();
}

class _FormWidgetState extends State<FormWidget> {
  late final TextEditingController _emailController;
  late final TextEditingController _passwordController;
  final GlobalKey _formKey = GlobalKey<FormState>();

  @override
  void initState() {
    _emailController = TextEditingController();
    _passwordController = TextEditingController();
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
    _emailController.dispose();
    _passwordController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return BlocConsumer<AuthBloc, AuthState>(
      builder: (context, state) {
        return Form(
          autovalidateMode: AutovalidateMode.always,
          key: _formKey,
          child: SingleChildScrollView(
            child: SizedBox(
              height: size.height * 0.7,
              child: Padding(
                padding: const EdgeInsets.only(
                  left: 20,
                  right: 20,
                ),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
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
                        onChanged: (value) {},
                        validator: (email) {
                          return BlocProvider.of<AuthBloc>(context,
                                  listen: true)
                              .state
                              .authFailureOrNot
                              .fold(
                                () => null,
                                (some) => some.fold(
                                  (l) => l.maybeMap(
                                    orElse: () => null,
                                    invalidEmail: (invalidEmail) =>
                                        "Invalid Email",
                                    userNotFound: (userNotFound) =>
                                        "User Not Found",
                                    userDisabled: (userDisabled) =>
                                        "This user is disabled",
                                    serverError: (serverError) =>
                                        "Email or Password is wrong",
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
                                    wrongPassword: (wrongPassword) =>
                                        "Wrong Password",
                                    serverError: (serverError) =>
                                        "Email or Password is wrong",
                                    userNotFound: (userNotFound) =>
                                        "User Not Found",
                                    userDisabled: (userDisabled) =>
                                        "This user is desabled",
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
                      //Forget Password
                      Align(
                        alignment: Alignment.centerRight,
                        child: TextButton(
                          onPressed: () {
                            Navigator.of(context).pushNamed(
                              RouteGenerator.authenticatedPage,
                            );
                          },
                          child: Text("Forget password?",
                              style: TextStyle(color: Colors.blue[600])),
                        ),
                      ),
                      //Sign In Button

                      if (state.signInLoading) ...[
                        Center(
                          child: AnimatedContainer(
                              height: 50,
                              width: 100,
                              duration: const Duration(milliseconds: 500),
                              child: const CircularProgressIndicator()),
                        )
                      ] else ...[
                        Center(
                          child: AnimatedContainer(
                              duration: const Duration(milliseconds: 500),
                              height: 50,
                              width: size.width * 0.85,
                              child: ElevatedButton(
                                onPressed: () {
                                  ///Naviagte to Home Screen
                                  BlocProvider.of<AuthBloc>(context).add(
                                    SignInWithEmailAndPassword(
                                      email: _emailController.text,
                                      password: _passwordController.text,
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
                                child: const Text("Sign In",
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold,
                                    )),
                              )),
                        )
                      ],
                      ////Space
                      const SizedBox(
                        height: 10,
                      ),
                      ////OR
                      const Align(
                          alignment: Alignment.center,
                          child: Text(
                            "OR",
                            style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: 18,
                            ),
                          )),

                      ///Google Sign In
                      Center(
                        child: ElevatedButton.icon(
                          style: ElevatedButton.styleFrom(
                            primary: Colors.red,
                          ),
                          onPressed: () {
                            BlocProvider.of<AuthBloc>(context)
                                .add(const SignInWithGoogle());
                          },
                          label: const Text("Sign In With Google"),
                          icon: const Icon(
                            FontAwesomeIcons.google,
                            color: Colors.white,
                          ),
                        ),
                      ),
                      Center(
                        child: ElevatedButton.icon(
                          style: ElevatedButton.styleFrom(
                            primary: Colors.amber,
                          ),
                          onPressed: () {
                            Navigator.of(context).pushNamed(
                              RouteGenerator.signInPhoneNumberPage,
                            );
                          },
                          label: const Text("Sign In With Phone Number."),
                          icon: const Icon(
                            FontAwesomeIcons.phone,
                            color: Colors.white,
                          ),
                        ),
                      ),

                      ///Don't have an account?Sign Up
                      Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "Don't have an account?",
                              style: TextStyle(
                                color: Colors.grey[800],
                                fontWeight: FontWeight.bold,
                                fontSize: 16,
                              ),
                            ),
                            TextButton(
                              onPressed: () {
                                Navigator.of(context).pushNamedAndRemoveUntil(
                                  RouteGenerator.signUpPage,
                                  (route) => false,
                                );
                              },
                              child: Text("Sign Up",
                                  style: TextStyle(
                                    color: Colors.blue[800],
                                    fontWeight: FontWeight.bold,
                                    fontSize: 16,
                                  )),
                            )
                          ]),
                    ]),
              ),
            ),
          ),
        );
      },
      listener: (context, state) {
        state.authFailureOrNot.fold(
            () => null,
            (some) => some.fold(
                (l) => l.maybeMap(
                    orElse: () => null,
                    serverError: (serverError) => print("Server Error")),
                (r) => null));
      },
    );
  }
}
