import 'package:flutter/material.dart';

String gilroyFontFamily = "Gilroy";
String montserratFontFamily = "Montserrat";
String poppinsFontFamily = "Poppins";

ThemeData themeData = ThemeData(
  fontFamily: poppinsFontFamily,
  visualDensity: VisualDensity.adaptivePlatformDensity,
  colorScheme: ColorScheme.fromSwatch().copyWith(secondary: Color(0xFF53B175)),
);
