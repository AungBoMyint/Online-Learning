import 'package:flutter/material.dart';
import 'package:online_learning/presentation/resuable_widgets/initial_screen_widget.dart';

class ScreenTwo extends StatelessWidget {
  const ScreenTwo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const InitialResuableWidget(
      title: "Discover Useful Resources",
      content: "This is an online learning app that gives \n"
          "access to all comprehensive resources.",
      image: "images/learning_onthebook.svg",
    );
  }
}
