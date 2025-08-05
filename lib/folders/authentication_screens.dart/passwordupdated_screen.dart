import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';
import 'package:oau_emergency_1/folders/resource_file.dart/constant.dart';
import 'package:oau_emergency_1/folders/resource_file.dart/reuse_textbutton.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:oau_emergency_1/folders/authentication_screens.dart/signin_screen.dart';

class PasswordUpdatedScreen extends StatelessWidget {
  const PasswordUpdatedScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(
            Icons.arrow_back_rounded,
            color: appbarIconColor,
            size: 30.0,
          ),
        ),
      ),
      backgroundColor: whitecolor,
      body: Padding(
        padding: const EdgeInsets.fromLTRB(24, 150, 24, 24),
        child: Column(
          children: [
            SvgPicture.asset('assets/Illustration.svg'),
            const Center(
              child: Text(
                'Password updated!',
                style: headingTextStyle,
              ),
            ),
            const Gap(8),
            const Text(
              'Your password has been set up\n successfully',
              style: greyTextStyle,
              textAlign: TextAlign.center,
            ),
            const Gap(215),
            const Text(
              'Redirecting sign in page in 5 sec',
              style: TextStyle(
                fontSize: 16,
                color: Color(0xff542164),
              ),
            ),
            const Gap(24),
            ReuseTextButton(
              text: 'Back to Sign In',
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const SigninScreen(),
                  ),
                );
              },
            )
          ],
        ),
      ),
    );
  }
}
