import 'package:flutter/material.dart';
import 'constants.dart';

ThemeData theme() {
  return ThemeData(
    scaffoldBackgroundColor: kWhiteColor,
    appBarTheme: appBarTheme(),
    primaryColor: kPrimaryColor,
    textTheme: textTheme(),
    inputDecorationTheme: inputDecorationTheme(),
  );
}

UnderlineInputBorder underlineInputBorder = UnderlineInputBorder(
  borderSide: BorderSide(color: Colors.green),
);

OutlineInputBorder outlineInputBorder = OutlineInputBorder(
  borderRadius: BorderRadius.circular(28),
  borderSide: BorderSide(color: kTextColor),
  gapPadding: 10,
);

InputDecorationTheme inputDecorationTheme() {
  return InputDecorationTheme(
    focusedBorder: outlineInputBorder,
    border: outlineInputBorder,
    enabledBorder: outlineInputBorder,
    // filled: true,
    // fillColor: Colors.green[50],
    labelStyle: TextStyle(
      color: Colors.grey,
      fontWeight: FontWeight.w600,
    ),
    floatingLabelBehavior: FloatingLabelBehavior.always,
    contentPadding: EdgeInsets.symmetric(horizontal: 40, vertical: 20),
  );
}

TextTheme textTheme() {
  return TextTheme(
    bodyText1: TextStyle(color: kTextColor),
    bodyText2: TextStyle(color: kTextColor),
  );
}

AppBarTheme appBarTheme() {
  return AppBarTheme(
    color: hexColor,
    elevation: 0,
    brightness: Brightness.light,
    iconTheme: IconThemeData(color: kTextColor),
    textTheme: TextTheme(
      headline6: TextStyle(
          color: kTextColor, fontSize: 17, fontWeight: FontWeight.w700),
    ),
  );
}
