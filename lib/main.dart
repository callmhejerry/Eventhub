import 'package:event_hub/src/feature/Authentication/presentation/onboarding_1.dart';
import 'package:flutter/material.dart';

import 'core/theme/app_theme.dart';

void main() {
  runApp(const EventHub());
}

class EventHub extends StatelessWidget {
  const EventHub({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: LightTheme.themeData,
      home: const OnboardingScreen(),
    );
  }
}
