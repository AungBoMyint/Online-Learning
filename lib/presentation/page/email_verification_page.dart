import 'package:flutter/material.dart';

class EmailVerificationPage extends StatelessWidget {
  const EmailVerificationPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
          child: Center(
        child: Text(
          "We have already send an email to your inbox\n"
          "Please Check to verify your email!.",
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.bold,
          ),
        ),
      )),
    );
  }
}
