import 'package:flutter/material.dart';
import 'package:online_learning/presentation/resuable_widgets/initial_screen_widget.dart';

class ScreenOne extends StatelessWidget {
  const ScreenOne({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const InitialResuableWidget(
      title: "Find Your Favourite Lessons",
      content: "Anyone can join the millions of members \n"
          "in our community to learn cutting edge skills.",
      image: "images/online_learning.svg",
    );
  }
}
