import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:smart_car_parking/constants.dart';

customAppBar(String? text, bool? leading) {
  return AppBar(
    iconTheme: IconThemeData(color: kWhiteColor),
    backgroundColor: kPrimaryColor,
    automaticallyImplyLeading: leading!,
    title: Text(text.toString(),
        style: GoogleFonts.lobster(fontSize: 26, color: Colors.white)),
    centerTitle: true,
  );
}
