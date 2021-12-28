import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:online_learning/application/auth/bloc/auth_bloc.dart';
import 'package:online_learning/route.dart';

class EnterPhoneCodeWidget extends StatefulWidget {
  final Future<void> Function({required String codeByUser}) codeByUser;
  const EnterPhoneCodeWidget({Key? key, required this.codeByUser})
      : super(key: key);

  @override
  State<EnterPhoneCodeWidget> createState() => _EnterPhoneCodeWidgetState();
}

class _EnterPhoneCodeWidgetState extends State<EnterPhoneCodeWidget> {
  late final TextEditingController _codeController;
  @override
  void initState() {
    _codeController = TextEditingController();
    super.initState();
  }

  @override
  void dispose() {
    _codeController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return BlocListener<AuthBloc, AuthState>(
      listener: (context, state) {
        if (state.isAuthenticated) {
          Navigator.of(context).pushNamedAndRemoveUntil(
            RouteGenerator.authenticatedPage,
            (route) => false,
          );
        }
      },
      child: Scaffold(
        body: SafeArea(
          child: SingleChildScrollView(
            child: SizedBox(
              height: size.height,
              child: Column(
                children: [
                  const Text(
                    "Enter your phone code here!.",
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    ),
                  ),
                  TextFormField(
                    controller: _codeController,
                    decoration: const InputDecoration(
                        contentPadding: EdgeInsets.symmetric(
                          vertical: 10,
                          horizontal: 20,
                        ),
                        hintText: "Enter your code.",
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(20)),
                        )),
                  ),

                  ///Confirm Code
                  SizedBox(
                    height: 50,
                    width: size.width * 0.85,
                    child: ElevatedButton(
                      onPressed: () {
                        ///Naviagte to Home Screen
                        final phoneCode = _codeController.text;
                        if (phoneCode.isNotEmpty) {
                          widget.codeByUser(codeByUser: (phoneCode));
                        }
                      },
                      style: ElevatedButton.styleFrom(
                        primary: Colors.blue[600],
                        shape: const RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(20)),
                        ),
                      ),
                      child: const Text("Sign In",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          )),
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
