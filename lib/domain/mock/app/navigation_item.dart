import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class NavigationItem {
  final String name;
  final IconData icon;
  final int id;
  const NavigationItem({
    required this.name,
    required this.icon,
    required this.id,
  });
}

class MockNavigationData {
  static const List<NavigationItem> navigationItemList = [
    NavigationItem(
      name: "Home",
      icon: FontAwesomeIcons.home,
      id: 0,
    ),
    /*NavigationItem(
      name: "Favourite",
      icon: FontAwesomeIcons.star,
      id: 1,
    ),*/
    NavigationItem(
      name: "Course",
      icon: FontAwesomeIcons.bookOpen,
      id: 1,
    ),
    NavigationItem(
      name: "Notification",
      icon: FontAwesomeIcons.bell,
      id: 2,
    ),
    NavigationItem(
      name: "Profile",
      icon: FontAwesomeIcons.user,
      id: 3,
    ),
  ];
}
