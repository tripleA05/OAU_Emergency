import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:oau_emergency_1/folders/resource_file.dart/constant.dart';
import 'package:oau_emergency_1/folders/resource_file.dart/reuse_passwordtextfield.dart';
import 'package:oau_emergency_1/folders/resource_file.dart/reuse_textbutton.dart';
import 'package:oau_emergency_1/folders/authentication_screens.dart/passwordupdated_screen.dart';

class NewpasswordScreen extends StatelessWidget {
  const NewpasswordScreen({super.key});

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
            color: Color.fromARGB(255, 26, 7, 153),
            size: 30.0,
          ),
        ),
      ),
      backgroundColor: whitecolor,
      body: Padding(
        padding:
            const EdgeInsets.only(top: 100, bottom: 24, left: 24, right: 24),
        child: ListView(
          children: [
            const Text(
              'New Password',
              style: headingTextStyle,
            ),
            const Gap(8),
            const Text(
              'Your password must be different from\n previous password.',
              style: greyTextStyle,
            ),
            const Gap(32),
            const ReusePasswordTextfield(
              hintText: 'Password',
            ),
            const Gap(12),
            const Text(
              'Your password needs to be at least 8 characters long\n'
              'Includes some words and characters to make it even safer',
              style: greyTextStyle,
            ),
            const Gap(12),
            const ReusePasswordTextfield(
              hintText: 'Confirm Password',
            ),
            const Gap(230),
            ReuseTextButton(
              text: 'Continue',
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const PasswordUpdatedScreen(),
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
