import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:online_learning/application/auth/bloc/auth_bloc.dart';
import 'package:online_learning/presentation/page/enter_phone_code_widget.dart';

class PhoneNumberSignInWidget extends StatefulWidget {
  const PhoneNumberSignInWidget({Key? key}) : super(key: key);

  @override
  State<PhoneNumberSignInWidget> createState() =>
      _PhoneNumberSignInWidgetState();
}

class _PhoneNumberSignInWidgetState extends State<PhoneNumberSignInWidget> {
  late final TextEditingController _phoneController;
  late final TextEditingController _passwordController;
  final GlobalKey _formKey = GlobalKey<FormState>();

  @override
  void initState() {
    _phoneController = TextEditingController();
    _passwordController = TextEditingController();
    super.initState();
  }

  @override
  void dispose() {
    _phoneController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
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
          BlocConsumer<AuthBloc, AuthState>(
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
                              controller: _phoneController,
                              onChanged: (value) {},
                              validator: (phone) {
                                return BlocProvider.of<AuthBloc>(context,
                                        listen: true)
                                    .state
                                    .authFailureOrNot
                                    .fold(
                                      () => null,
                                      (some) => some.fold(
                                        (l) => l.maybeMap(
                                          orElse: () => null,
                                          invalidPhoneNumber: (invalidPhone) =>
                                              "Invalid Phone Number",
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
                                  hintText: "Enter your phone number.",
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
                                if (value == null) {
                                  return "Password must be filled.";
                                } else {
                                  return null;
                                }
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
                            //Sign In Button
                            if (state.signInPhoneLoading) ...[
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
                                        BlocProvider.of<AuthBloc>(context)
                                            .add(SignInWithPhoneNumber(
                                          phoneNumber: _phoneController.text,
                                          password: _passwordController.text,
                                          callbackToVerifyWithCode: (
                                              {required Future<void> Function(
                                                      {required String
                                                          codeByUser})
                                                  codeByUser}) async {
                                            Navigator.of(context).push(
                                              MaterialPageRoute(
                                                builder: (context) =>
                                                    EnterPhoneCodeWidget(
                                                  codeByUser: codeByUser,
                                                ),
                                              ),
                                            );
                                          },
                                        ));
                                      },
                                      style: ElevatedButton.styleFrom(
                                        primary: Colors.blue[600],
                                        shape: const RoundedRectangleBorder(
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(20)),
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
          ),
        ],
      ),
    ));
  }
}
