import 'package:flutter/material.dart';
// import 'package:oau_emergency_1/folders/authentication_screens.dart/aisignin_screen.dart';
import 'package:oau_emergency_1/folders/resource_file.dart/reuse_passwordtextfield.dart';

import 'package:oau_emergency_1/folders/resource_file.dart/reuse_textbutton.dart';
import 'package:oau_emergency_1/folders/resource_file.dart/reuse_textfield.dart';
import 'package:oau_emergency_1/folders/resource_file.dart/constant.dart';
import 'package:gap/gap.dart';
import 'package:oau_emergency_1/folders/authentication_screens.dart/activate_account_screen.dart';
// import 'package:oau_emergency_1/folders/authentication_screens.dart/signin_screen.dart';

class SignupScreen extends StatelessWidget {
  static const routeName = '/SigninScreen';
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
            const Text(
              'Welcome!',
              style: headingTextStyle,
            ),
            const Gap(8),
            const Text(
              "Let’s get started creating a student account",
              style: greyTextStyle,
            ),
            const Gap(24),
            const ReuseTextfield(
              hintText: 'Fullname',
              prefixIcon: Icon(
                Icons.account_circle_outlined,
                size: 25,
              ),
              // obscureText: false,
            ),
            const Gap(24),
            const ReuseTextfield(
              hintText: 'Student Email',
              prefixIcon: Icon(
                Icons.email_outlined,
                size: 25,
              ),
              // obscureText: false,
            ),
            const Gap(24),
            // const ReuseTextfield(
            //   hintText: 'Password',
            //   prefixIcon: Icon(
            //     Icons.lock_outline,
            //     size: 25,
            //   ),
            //   obscureText: true,
            // ),
            const ReusePasswordTextfield(hintText: 'Password'),
            const Gap(50),
            ReuseTextButton(
              text: 'Sign Up',
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => ActivateAccountScreen(),
                  ),
                );
              },
            ),
            const Gap(160),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  'Already have an account?',
                  style: TextStyle(
                    fontSize: 16,
                    color: Color(0xff542164),
                  ),
                ),
                InkWell(
                  onTap: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const SignupScreen(),
                    ),
                  ),
                  child: const Text(
                    '  Sign In',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: primarycolor,
                    ),
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
