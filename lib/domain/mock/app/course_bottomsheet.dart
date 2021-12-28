import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Item {
  final int id;
  final String text;
  final Icon icons;
  const Item({required this.text, required this.icons, required this.id});
}

class CourseBottomSheet {
  static const List<Item> items = <Item>[
    Item(
      id: 1,
      text: "Photo",
      icons: Icon(FontAwesomeIcons.image, color: Colors.green),
    ),
    Item(
      id: 2,
      text: "Course Type",
      icons: Icon(FontAwesomeIcons.brain, color: Colors.yellow),
    ),
    Item(
      id: 3,
      text: "Add module",
      icons: Icon(FontAwesomeIcons.buffer, color: Colors.purple),
    ),
    Item(
      id: 4,
      text: "Add lesson",
      icons: Icon(FontAwesomeIcons.chalkboard, color: Colors.blue),
    ),
  ];
}
