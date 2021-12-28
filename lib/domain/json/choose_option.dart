import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ChooseOption {
  final String title;
  final IconData icon;
  final Color color;
  final int id;
  const ChooseOption({
    required this.title,
    required this.icon,
    required this.color,
    required this.id,
  });
}

class MockData {
  static const List<ChooseOption> chooseOptionList = [
    ChooseOption(
      title: "All Topic",
      icon: FontAwesomeIcons.fireAlt,
      color: Colors.red,
      id: 0,
    ),
    ChooseOption(
      title: "Popular",
      icon: FontAwesomeIcons.star,
      color: Colors.green,
      id: 1,
    ),
    ChooseOption(
      title: "Newest",
      icon: FontAwesomeIcons.atom,
      color: Colors.blue,
      id: 2,
    ),
    ChooseOption(
      title: "Advance",
      icon: FontAwesomeIcons.brain,
      color: Colors.pink,
      id: 3,
    ),
  ];
}
