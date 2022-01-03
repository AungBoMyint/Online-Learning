import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:online_learning/domain/data/theme.dart';

///Name Edit
Widget nameUpdate(
    {required TextEditingController controller, required Size size}) {
  return Container(
    color: Colors.white,
    width: size.width * 0.8,
    child: Row(children: [
      //Pre Text
      Text(
        "Name",
        style: AppThemeData.darkText.subtitle1,
      ),
      //TextField
      SizedBox(
        width: size.width * 0.5,
        child: TextField(
          controller: controller,
        ),
      ),
      //Pencil Icon
      const Icon(
        FontAwesomeIcons.pencilAlt,
        color: Colors.black,
      )
    ]),
  );
}

///Name Edit
Widget emailUpdate(
    {required TextEditingController controller, required Size size}) {
  return Container(
    color: Colors.white,
    width: size.width * 0.8,
    child: Row(children: [
      //Pre Text
      Text(
        "Email",
        style: AppThemeData.darkText.subtitle1,
      ),
      //TextField
      SizedBox(
        width: size.width * 0.5,
        child: TextField(
          controller: controller,
        ),
      ),
      //Pencil Icon
      const Icon(
        FontAwesomeIcons.pencilAlt,
        color: Colors.black,
      )
    ]),
  );
}
