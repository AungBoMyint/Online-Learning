import 'package:flutter/cupertino.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Item {
  int id;
  String text;
  IconData prefixIcon;
  IconData suffixIcon;
  Item(
      {required this.id,
      required this.text,
      required this.prefixIcon,
      required this.suffixIcon});
}

class SettingItem {
  const SettingItem();
  static final List<Item> items = [
    Item(
      id: 1,
      text: "Update Profile",
      prefixIcon: FontAwesomeIcons.userEdit,
      suffixIcon: FontAwesomeIcons.arrowCircleRight,
    ),
    Item(
      id: 2,
      text: "Let's Create Course",
      prefixIcon: FontAwesomeIcons.plusCircle,
      suffixIcon: FontAwesomeIcons.arrowCircleRight,
    ),
    Item(
      id: 3,
      text: "Your Created Course",
      prefixIcon: FontAwesomeIcons.bookOpen,
      suffixIcon: FontAwesomeIcons.arrowCircleRight,
    ),
    Item(
      id: 4,
      text: "Edit Course",
      prefixIcon: FontAwesomeIcons.edit,
      suffixIcon: FontAwesomeIcons.arrowCircleRight,
    ),
    Item(
      id: 5,
      text: "Reset Password",
      prefixIcon: FontAwesomeIcons.key,
      suffixIcon: FontAwesomeIcons.arrowCircleRight,
    ),
  ];
}
