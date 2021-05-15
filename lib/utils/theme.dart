import 'package:flutter/material.dart';

LocalTheme darkTheme = LocalTheme(
  primaryColor: Color(0xff292929),
  primaryColorDark: Color(0xff212121),
  textButton: TextStyle(fontSize: 12, color: Colors.white),
  textButtonBlack: TextStyle(fontSize: 12, color: Colors.black),
  textHeadline5:
      TextStyle(fontSize: 14, color: Colors.white, fontWeight: FontWeight.bold),
);

class LocalTheme {
  Color primaryColor;
  Color primaryColorDark;

  TextStyle textButton;
  TextStyle textHeadline5;
  TextStyle textButtonBlack;

  TextTheme textTheme;
  ThemeData mainTheme;

  LocalTheme(
      {this.primaryColor,
      this.primaryColorDark,
      this.textButton,
      this.textHeadline5,
      this.textButtonBlack}) {
    textTheme = TextTheme(button: textButton, headline5: textHeadline5);
    mainTheme = ThemeData(
        primaryColor: primaryColor,
        primaryColorDark: primaryColorDark,
        textTheme: textTheme);
    ;
  }
}
