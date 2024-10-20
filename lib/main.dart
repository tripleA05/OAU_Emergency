import 'package:flutter/material.dart';
import 'package:oau_emergency_1/screens/splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
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
