import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class MyCourseOption {
  final String title;
  final IconData icon;
  final Color color;
  final int id;
  const MyCourseOption({
    required this.title,
    required this.icon,
    required this.color,
    required this.id,
  });
}

class MockDataMyCourseOption {
  static const List<MyCourseOption> myCourseOptions = [
    MyCourseOption(
      title: "All",
      icon: FontAwesomeIcons.listAlt,
      color: Colors.red,
      id: 0,
    ),
    MyCourseOption(
      title: "Ongoing",
      icon: FontAwesomeIcons.fireAlt,
      color: Colors.yellow,
      id: 1,
    ),
    MyCourseOption(
      title: "Completed",
      icon: FontAwesomeIcons.checkSquare,
      color: Colors.green,
      id: 2,
    ),
  ];
}
