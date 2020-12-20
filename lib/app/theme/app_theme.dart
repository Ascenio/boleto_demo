import 'package:boleto_demo/app/theme/color_theme.dart';
import 'package:boleto_demo/app/theme/text_theme.dart';
import 'package:flutter/material.dart';

final ThemeData appThemeData = ThemeData(
  backgroundColor: backgroundColor,
  primaryColor: primaryColor,
  accentColor: secondaryColor,
  visualDensity: VisualDensity.adaptivePlatformDensity,
  textTheme: textTheme,
  primaryTextTheme: textTheme,
  elevatedButtonTheme: ElevatedButtonThemeData(
    style: ButtonStyle(
      backgroundColor: MaterialStateProperty.all(secondaryColor),
    ),
  ),
  bottomNavigationBarTheme: BottomNavigationBarThemeData(
    backgroundColor: Colors.white,
  ),
  appBarTheme: AppBarTheme(
    color: Colors.white,
    iconTheme: IconThemeData(
      color: Colors.black,
    ),
  ),
);
