import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:online_learning/domain/data/theme.dart';

///Name Edit
Widget nameUpdate(
    {required TextEditingController controller, required Size size}) {
  return Container(
    color: Colors.white,
    width: size.width * 0.95,
    child: Row(children: [
      //Space Between
      const SizedBox(
        width: 5,
      ),
      //Pre Text
      Text(
        "Name:",
        style: AppThemeData.darkText.headline3,
      ),
      //Space Between
      const SizedBox(width: 10),
      //TextField
      SizedBox(
        width: size.width * 0.6,
        child: TextField(
          style: AppThemeData.darkText.headline3,
          controller: controller,
        ),
      ),
      const SizedBox(width: 20),
      //Pencil Icon
      const Icon(
        FontAwesomeIcons.pencilAlt,
        color: Colors.black,
      )
    ]),
  );
}

///Email Edit
Widget emailUpdate(
    {required TextEditingController controller, required Size size}) {
  return Container(
    color: Colors.white,
    width: size.width * 0.95,
    child: Row(children: [
      //Space Between
      const SizedBox(
        width: 5,
      ),
      //Pre Text
      Text(
        "Email:",
        style: AppThemeData.darkText.headline3,
      ),
      //Space Between
      const SizedBox(width: 10),
      //TextField
      SizedBox(
        width: size.width * 0.6,
        child: TextField(
          style: AppThemeData.darkText.headline3,
          controller: controller,
        ),
      ),
      //Space Between
      const SizedBox(width: 20),
      //Pencil Icon
      const Icon(
        FontAwesomeIcons.pencilAlt,
        color: Colors.black,
      )
    ]),
  );
}

//Password Edit
///Email Edit
Widget passwordUpdate(
    {required TextEditingController controller, required Size size}) {
  return Container(
    color: Colors.white,
    width: size.width * 0.95,
    child: Row(children: [
      //Space Between
      const SizedBox(
        width: 5,
      ),
      //Pre Text
      Text(
        "Password:",
        style: AppThemeData.darkText.headline3,
      ),
      //Space Between
      const SizedBox(width: 10),
      //TextField
      SizedBox(
        width: size.width * 0.5,
        child: TextField(
          controller: controller,
          obscureText: true,
        ),
      ),
      //Space Between
      const SizedBox(width: 20),
      //Pencil Icon
      const Icon(
        FontAwesomeIcons.pencilAlt,
        color: Colors.black,
      )
    ]),
  );
}
