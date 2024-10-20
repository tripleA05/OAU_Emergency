// ignore_for_file: use_build_context_synchronously, deprecated_member_use

import 'dart:async';

import 'package:flutter/material.dart';
import 'package:oau_emergency_1/constant.dart';
import 'package:oau_emergency_1/screens/onboarding_screen.dart';
import 'package:oau_emergency_1/screens/signin_screen.dart';
// import 'package:oau_emergency_1/screens/signup_screen.dart';
import 'package:oau_emergency_1/sharedpreference.dart';
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
              builder: (context) => const SigninScreen(),
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
    // void initState() {
    //   Timer(
    //     const Duration(seconds: 10),
    //     () async {
    //       bool hasSeenIntro = await Shared.getFullName() ?? false;
    //       if (hasSeenIntro) {
    //         Navigator.of(context).pushReplacementNamed('SignupScreen()');
    //       } else {
    //         Navigator.of(context).pushReplacementNamed('OnboardingScreen()');
    //       }
    //     },
    //   );
    //   super.initState();
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
        // Text(
        //   'OAU\nEmergency',
        //   // style: TextStyle(
        //   //   fontSize: 40.0,
        //   //   color: whitecolor,
        //   //   fontWeight: FontWeight.w900,
        //   //   fontFamily: 'Rubik',
        //   // ),
        //   textAlign: TextAlign.center,
        // ),
      ),
    );
  }
}
