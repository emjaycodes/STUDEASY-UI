

import 'package:flutter/material.dart';
import 'package:study_app/screens/home/home_screen.dart';
import 'package:study_app/screens/onboarding/onboarding_screen.dart';
import 'package:study_app/screens/prompt-AI/prompt_screen.dart';
import 'package:study_app/screens/register/register_screen.dart';
import 'package:study_app/screens/set_target/set_target_screen.dart';

class AppRoutes {
  static const onboarding = '/';
  static const register = '/register';
  static const setTarget = '/set_target';
  static const prompt = '/prompt';
  static const home = '/homescreen';


  static Map<String, Widget Function(BuildContext)> current = {
    onboarding: (context) => const OnboardingScreen(),
    register: (context) => const RegisterScreen(),
    setTarget: (context) =>  const SetTargetScreen(),
    prompt: (context) => const PromptScreen(),
    home: (context) => const HomeScreen(),
  };
}