import 'package:flutter/material.dart';
// import 'package:oau_emergency_1/home_screen.dart';
// import 'package:flutter_svg/flutter_svg.dart';

import 'package:oau_emergency_1/reuse_textbutton.dart';
import 'package:oau_emergency_1/reuse_textfield.dart';
import 'package:oau_emergency_1/constant.dart';
import 'package:gap/gap.dart';
// import 'package:oau_emergency_1/screens/activate_account_screen.dart';
// import 'package:oau_emergency_1/screens/activate_account_screen.dart';
// import 'package:oau_emergency_1/screens/activate_account_screen.dart';

class SignupScreen extends StatelessWidget {
  static const routeName = '/SignupScreen';
  const SignupScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: whitecolor,
      body: Padding(
        padding:
            const EdgeInsets.only(top: 180.0, bottom: 24, right: 24, left: 24),
        child: ListView(
          children: [
            Text(
              'Welcome!',
              style: headingTextStyle,
            ),
            Gap(8),
            Text(
              "Let’s get started creating a student account",
              style: greyTextStyle,
            ),
            Gap(24),
            ReuseTextfield(
              hintText: 'Fullname',
              prefixIcon: Icon(
                Icons.account_circle_outlined,
                size: 25,
              ),
              obscureText: false,
            ),
            Gap(24),
            ReuseTextfield(
              hintText: 'Student Email',
              prefixIcon: Icon(
                Icons.email_outlined,
                size: 25,
              ),
              obscureText: false,
            ),
            Gap(24),
            ReuseTextfield(
              hintText: 'Password',
              prefixIcon: Icon(
                Icons.lock_outline,
                size: 25,
              ),
              obscureText: true,
            ),
            Gap(50),
            ReuseTextButton(
              text: 'Sign Up',
              // onPressed: () {
              //   Navigator.push(
              //     context,
              //     MaterialPageRoute(
              //       builder: (context) => ActivateAccountScreen(),
              //     ),
              //   );
              // },
              onPressed: () {},
            ),
            Gap(160),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Already have an account?',
                  style: TextStyle(
                    fontSize: 16,
                    color: Color(0xff542164),
                  ),
                ),
                Text(
                  '  Sign In',
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


                        // Navigator.of(context).pushNamed(
                        //   HomeScreen.routeName,
                        // );