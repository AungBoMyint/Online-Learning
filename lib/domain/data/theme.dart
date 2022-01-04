import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppThemeData {
  static TextTheme lightText = TextTheme(
    headline1: const TextStyle(
      fontSize: 20,
      fontWeight: FontWeight.bold,
      color: Colors.white,
    ),
    headline2: GoogleFonts.lobster(
      fontSize: 18,
      color: Colors.white,
    ),
    headline3: const TextStyle(
      fontSize: 16,
      color: Colors.white,
    ),
    headline4: const TextStyle(
      fontSize: 14,
      color: Colors.white,
    ),
    headline5: const TextStyle(
      fontSize: 12,
      color: Colors.white,
    ),
    subtitle1: const TextStyle(
      fontSize: 18,
      color: Colors.white,
    ),
    subtitle2: const TextStyle(
      fontSize: 16,
      color: Colors.white,
    ),
  );

  ///Dark TextTheme
  static TextTheme darkText = TextTheme(
    headline1: const TextStyle(
      fontSize: 20,
      fontWeight: FontWeight.bold,
      color: Colors.black,
    ),
    headline2: GoogleFonts.lobster(
      fontSize: 35,
      color: Colors.black,
      fontWeight: FontWeight.bold,
    ),
    headline3: const TextStyle(
      fontSize: 16,
      color: Colors.black,
    ),
    headline4: const TextStyle(
      fontSize: 14,
      color: Colors.black,
    ),
    headline5: const TextStyle(
      fontSize: 12,
      color: Colors.black,
    ),
    subtitle1: const TextStyle(
      fontSize: 18,
      color: Colors.black,
      fontWeight: FontWeight.bold,
    ),
    subtitle2: const TextStyle(
      fontSize: 16,
      color: Colors.black,
    ),
  );

  ///Light Theme
  static ThemeData light() {
    return ThemeData(
      inputDecorationTheme: const InputDecorationTheme(
          border: UnderlineInputBorder(
              borderSide: BorderSide(
        color: Colors.blue,
        width: 2,
      ))),
      hintColor: Colors.blue,
      scaffoldBackgroundColor: Colors.blue[50],
      appBarTheme: AppBarTheme(
          backgroundColor: Colors.white,
          elevation: 10,
          centerTitle: true,
          toolbarTextStyle: darkText.headline1,
          iconTheme: const IconThemeData(
            color: Colors.black,
          )),
      elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
        shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.all(
          Radius.circular(20),
        )),
        primary: Colors.blue,
      )),
      textTheme: darkText,
    );
  }
}
