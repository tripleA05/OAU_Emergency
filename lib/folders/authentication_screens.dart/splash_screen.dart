// ignore_for_file: use_build_context_synchronously, deprecated_member_use

import 'dart:async';

import 'package:flutter/material.dart';
import 'package:oau_emergency_1/folders/resource_file.dart/constant.dart';
import 'package:oau_emergency_1/folders/authentication_screens.dart/onboarding_screen.dart';
// import 'package:oau_emergency_1/screens/signin_screen.dart';
import 'package:oau_emergency_1/folders/authentication_screens.dart/signup_screen.dart';
import 'package:oau_emergency_1/folders/resource_file.dart/sharedpreference.dart';
import 'package:animated_text_kit/animated_text_kit.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    Timer(
      const Duration(seconds: 10),
      () async {
        bool seenIntro = await Shared.getSeenIntro() ?? false;
        if (seenIntro) {
          Navigator.pushReplacement(
            context,
            MaterialPageRoute(
              builder: (context) => const SignupScreen(),
            ),
          );
        } else {
          await Shared.setSeenIntro(true);
          Navigator.pushReplacement(
            context,
            MaterialPageRoute(
              builder: (context) => const OnboardingScreen(),
            ),
          );
        }
      },
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: primarycolor,
      body: Center(
        child: SizedBox(
          width: 250.0,
          child: TypewriterAnimatedTextKit(
            speed: const Duration(milliseconds: 650),
            onTap: () {
              // print("Tap Event");
            },
            text: const [
              "OAU\nEmergency",
            ],
            textStyle: const TextStyle(
              fontSize: 40.0,
              fontFamily: "Rubik",
              fontWeight: FontWeight.w900,
              color: whitecolor,
            ),
            textAlign: TextAlign.center,
          ),
        ),
      ),
    );
  }
}
