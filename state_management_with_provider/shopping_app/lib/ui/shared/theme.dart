import 'package:flutter/material.dart';

MaterialColor primaryMaterialColor = const MaterialColor(
  4285361517,
  <int, Color>{
    50: Color.fromRGBO(
      109,
      109,
      109,
      .1,
    ),
    100: Color.fromRGBO(
      109,
      109,
      109,
      .2,
    ),
    200: Color.fromRGBO(
      109,
      109,
      109,
      .3,
    ),
    300: Color.fromRGBO(
      109,
      109,
      109,
      .4,
    ),
    400: Color.fromRGBO(
      109,
      109,
      109,
      .5,
    ),
    500: Color.fromRGBO(
      109,
      109,
      109,
      .6,
    ),
    600: Color.fromRGBO(
      109,
      109,
      109,
      .7,
    ),
    700: Color.fromRGBO(
      109,
      109,
      109,
      .8,
    ),
    800: Color.fromRGBO(
      109,
      109,
      109,
      .9,
    ),
    900: Color.fromRGBO(
      109,
      109,
      109,
      1,
    ),
  },
);

ThemeData myTheme = ThemeData(
  fontFamily: "Lato",
  primarySwatch: primaryMaterialColor,
  elevatedButtonTheme: ElevatedButtonThemeData(
    style: ButtonStyle(
      backgroundColor: MaterialStateProperty.all(
        const Color(0xff6d6d6d),
      ),
    ),
  ),
);
