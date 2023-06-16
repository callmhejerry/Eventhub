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
      tabBarTheme: const TabBarTheme(
        indicatorSize: TabBarIndicatorSize.label,
        labelColor: AppColorStyle.primaryBlue,
        unselectedLabelColor: Color(0xff747688),
        unselectedLabelStyle: TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.normal,
        ),
        labelStyle: TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.w500,
          letterSpacing: 0.01,
        ),
      ),
      scaffoldBackgroundColor: Colors.white,
      outlinedButtonTheme: OutlinedButtonThemeData(
        style: ButtonStyle(
          side: const MaterialStatePropertyAll(
            BorderSide(
              color: AppColorStyle.primaryBlue,
              width: 1.5,
            ),
          ),
          textStyle: const MaterialStatePropertyAll(AppTextStyle.body1),
          minimumSize: const MaterialStatePropertyAll(Size(154, 50)),
          iconColor: const MaterialStatePropertyAll(AppColorStyle.primaryBlue),
          shape: MaterialStatePropertyAll(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
          ),
        ),
      ),
      primaryColor: AppColorStyle.primaryBlue,
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          minimumSize: const Size(154, 50),
          backgroundColor: AppColorStyle.primaryBlue,
          textStyle: AppTextStyle.body1,
          elevation: 0,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
        ),
      ),
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
