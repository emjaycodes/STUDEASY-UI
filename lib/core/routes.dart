import 'package:flutter/material.dart';
import 'package:study_app/screens/home/home_screen.dart';
import 'package:study_app/screens/onboarding/onboarding_screen.dart';
import 'package:study_app/screens/prompt-AI/prompt_ai_screen.dart';
import 'package:study_app/screens/prompt-AI/prompt_screen.dart';
import 'package:study_app/screens/register/register_screen.dart';
import 'package:study_app/screens/set_target/set_target_screen.dart';
import 'package:collection/collection.dart';

class AppRoutes {
  static const onboarding = '/';
  static const register = '/register';
  static const setTarget = '/set_target';
  static const prompt = '/prompt';
  static const home = '/homescreen';
  static const promptAi = '/promptAI';


  static Map<String, Widget Function(BuildContext)> current = {
    onboarding: (context) => list(context),
    register: (context) => const RegisterScreen(),
    setTarget: (context) =>  const SetTargetScreen(),
    prompt: (context) => const PromptScreen(),
    home: (context) =>  HomeScreen(),
    promptAi: (context) =>  const PromptAiScreen(),
  };

    /// A sample widget that just shows the entire routes in the app
  static Widget list(BuildContext context) => Scaffold(
        body: SafeArea(
          child: ListView(
            children: current.keys
                .sorted()
                .map(
                  (key) => ListTile(
                    title: Text(key),
                    onTap: () => Navigator.pushNamed(context, key),
                  ),
                )
                .toList(),
          ),
        ),
      );

}