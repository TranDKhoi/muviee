import 'package:flutter/material.dart';

import 'colors.dart';

class AppTheme {
  static final ThemeData lightTheme = ThemeData.light().copyWith(
    useMaterial3: true,
    textTheme: ThemeData.light().textTheme.apply(
          fontFamily: "SFPro",
        ),
    colorScheme: const ColorScheme.light(primary: AppColor.primaryColor),
    appBarTheme: const AppBarTheme(
      elevation: 0,
      foregroundColor: Colors.black,
      backgroundColor: AppColor.primaryColor,
    ),
    filledButtonTheme: const FilledButtonThemeData(
        style: ButtonStyle(foregroundColor: MaterialStatePropertyAll(Colors.white))),
    cardColor: const Color(0xffE9EAEA),
  );

  static final ThemeData darkTheme = ThemeData.dark().copyWith(
    scaffoldBackgroundColor: const Color(0xff13151b),
    useMaterial3: true,
    textTheme: ThemeData.dark().textTheme.apply(
          fontFamily: "SFPro",
        ),
    colorScheme: const ColorScheme.dark(primary: AppColor.primaryColor),
    appBarTheme: const AppBarTheme(
      elevation: 0,
      foregroundColor: Colors.white,
      backgroundColor: AppColor.primaryColor,
    ),
    filledButtonTheme: const FilledButtonThemeData(
        style: ButtonStyle(foregroundColor: MaterialStatePropertyAll(Colors.white))),
    cardColor: const Color(0xff272B30),
  );
}
