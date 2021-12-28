import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Item {
  final int id;
  final String text;
  final Icon icons;
  const Item({required this.id, required this.text, required this.icons});
}

class LessonBottomSheet {
  static const List<Item> items = [
    Item(
      id: 1,
      text: "Add Exercise",
      icons: Icon(
        FontAwesomeIcons.plus,
        color: Colors.green,
      ),
    ),
    Item(
      id: 2,
      text: "Add Photo",
      icons: Icon(
        FontAwesomeIcons.camera,
        color: Colors.yellow,
      ),
    ),
    Item(
      id: 3,
      text: "Add Content",
      icons: Icon(
        FontAwesomeIcons.camera,
        color: Colors.yellow,
      ),
    ),
    Item(
      id: 4,
      text: "Add Video Link",
      icons: Icon(
        FontAwesomeIcons.video,
        color: Colors.purple,
      ),
    ),
  ];
}
