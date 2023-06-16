import 'package:flutter/material.dart';

import '../styles/color_styles.dart';
import '../styles/text_styles.dart';

abstract class AppTheme {
  static ThemeData get themeData {
    throw UnimplementedError();
  }
}

class LightTheme extends AppTheme {
  static get themeData {
    return ThemeData(
      fontFamily: "AirbnbCereal",
      scaffoldBackgroundColor: Colors.white,
      outlinedButtonTheme: OutlinedButtonThemeData(
        style: ButtonStyle(
            side: const MaterialStatePropertyAll(
              BorderSide(
                color: AppColorStyle.primaryBlue,
                width: 1.5,
              ),
            ),
            minimumSize: const MaterialStatePropertyAll(Size(154, 50)),
            iconColor:
                const MaterialStatePropertyAll(AppColorStyle.primaryBlue),
            shape: MaterialStatePropertyAll(
              RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
            )),
      ),
      primaryColor: AppColorStyle.primaryBlue,
      appBarTheme: AppBarTheme(
        elevation: 0,
        centerTitle: false,
        iconTheme: const IconThemeData(
          color: Colors.black,
        ),
        backgroundColor: Colors.white,
        titleTextStyle: AppTextStyle.h4.copyWith(
          color: AppColorStyle.darkTextColor,
        ),
      ),
    );
  }
}
