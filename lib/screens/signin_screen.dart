import 'package:flutter/material.dart';
// import 'package:flutter/widgets.dart';
import 'package:gap/gap.dart';
import 'package:oau_emergency_1/constant.dart';
// import 'package:oau_emergency_1/home_screen.dart';
import 'package:oau_emergency_1/reuse_textbutton.dart';
import 'package:oau_emergency_1/reuse_textfield.dart';
import 'package:oau_emergency_1/screens/home_screen.dart';

class SigninScreen extends StatelessWidget {
  static const routeName = '/SigninScreen';
  const SigninScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: whitecolor,
      body: Padding(
        padding:
            const EdgeInsets.only(top: 180, bottom: 24, left: 24, right: 24),
        child: ListView(
          children: [
            const Text(
              'Welcome back!',
              style: headingTextStyle,
            ),
            const Gap(8),
            const Text(
              'Please enter your details',
              style: greyTextStyle,
            ),
            const Gap(24),
            const ReuseTextfield(
              hintText: 'Student Email',
              prefixIcon: Icon(
                Icons.email_outlined,
                size: 25,
              ),
              obscureText: false,
            ),
            const Gap(16),
            const ReuseTextfield(
              hintText: 'Password',
              prefixIcon: Icon(
                Icons.lock_outlined,
                size: 25,
              ),
              obscureText: true,
            ),
            const Gap(16),
            const Text(
              'Forgot Password?',
              style: headingTextStyle16,
            ),
            const Gap(24),
            ReuseTextButton(
                text: 'Sign In',
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const HomeScreen(),
                    ),
                  );
                }),
            const Gap(240),
            const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Don\'t have an account?',
                  style: TextStyle(
                    fontSize: 16,
                    color: Color(0xff542164),
                  ),
                ),
                Text(
                  '  Sign Up',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: primarycolor,
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
