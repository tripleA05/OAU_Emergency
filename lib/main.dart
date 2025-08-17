import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:oau_emergency_1/appbinding.dart';
import 'package:oau_emergency_1/folders/authentication_screens.dart/splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      initialBinding: AppBinding(),
      debugShowCheckedModeBanner: false,
      home: SplashScreen(),
      // routes: {
      //   HomeScreen.routeName: (context) => const HomeScreen(),
      //   SigninScreen.routeName: (context) => const SigninScreen(),
      //   SignupScreen.routeName: (context) => const SigninScreen(),
      //   ActivateAccountScreen.routeName: (context) => ActivateAccountScreen(),
      // },
    );
  }
}
