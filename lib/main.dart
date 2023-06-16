import 'package:event_hub/core/styles/color_styles.dart';
import 'package:event_hub/core/styles/text_styles.dart';
import 'package:event_hub/src/feature/profile/profile_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const EventHub());
}

class EventHub extends StatelessWidget {
  const EventHub({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
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
      ),
      home: ProfileScreen(),
    );
  }
}
