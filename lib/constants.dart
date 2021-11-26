import 'package:flutter/material.dart';
import 'package:smart_car_parking/size_config.dart';

const Color kPrimaryColor = Color(0xFFF6931E);
const Color kBackgroundColor = Color(0xFFFAFAFA);
const kWhiteColor = Colors.white;
const hexColor = Color(0xFFf5f4f4);
const kTextColor = Colors.black87; //Color(0xFF757575);
const Color greyColor = Color(0xff8f8f8f);
Color fillColor = Colors.grey[100]!;

final RegExp emailValidatorRegExp =
    RegExp(r"^[a-zA-Z0-9.]+@[a-zA-Z0-9]+\.[a-zA-Z]+");

double customHeight = SizeConfig.screenHeight! * .07;
double customPadding = SizeConfig.screenHeight! * .09;

final OutlineInputBorder border = OutlineInputBorder(
    borderSide: BorderSide.none, borderRadius: BorderRadius.circular(5));
