
import 'package:flutter/material.dart';
import 'package:study_app/screens/onboarding/onboarding_screen.dart';

class AppRoutes {
  static const onboarding = '/onboarding';

  static Map<String, Widget Function(BuildContext)> current = {
    onboarding: (context) => const OnboardingScreen(),
  };
}