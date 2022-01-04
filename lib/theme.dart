import 'package:flutter/material.dart';
import 'package:login_app/custom_font_size.dart';

class AppColors {
  static Color hint2Color = const Color(0xFFA6A6A6);
  static Color hintColor = const Color(0xFF6B5E5E);
  static Color primaryColorLight = const Color(0xFF000000);
  static Color primary = const Color(0xFF0386D0);
  static Color backgroundColor = const Color(0xFFFFFFFF);
}

ThemeData getTheme(BuildContext context) {
  return ThemeData(
    fontFamily: "Montserrat",
    primaryColor: AppColors.primary,
    primaryColorLight: AppColors.primaryColorLight,
    backgroundColor: AppColors.backgroundColor,
    iconTheme: IconThemeData(
      size: 18.0,
      color: AppColors.hintColor,
    ),
    inputDecorationTheme: InputDecorationTheme(
      filled: false,
      contentPadding: const EdgeInsets.all(0),
      floatingLabelStyle: TextStyle(
        color: AppColors.hint2Color,
        fontSize: CustomFontSize.f18,
      ),
      helperStyle: TextStyle(
        color: AppColors.hint2Color,
        fontSize: CustomFontSize.f18,
      ),
      labelStyle: TextStyle(
        color: AppColors.hint2Color,
        fontSize: CustomFontSize.f18,
      ),
      hintStyle: TextStyle(
        color: AppColors.hint2Color,
        fontSize: CustomFontSize.f18,
      ),
    ),
    textTheme: TextTheme(
      caption: TextStyle(
        color: AppColors.hint2Color,
      ),
      headline2: TextStyle(
        color: AppColors.primaryColorLight,
        fontSize: 40,
      ),
      headline4: TextStyle(
        color: AppColors.hintColor,
        fontSize: CustomFontSize.f18,
      ),
    ),
  );
}
