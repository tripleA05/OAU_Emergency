import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:oau_emergency_1/constant.dart';
import 'package:oau_emergency_1/reuse_textbutton.dart';
import 'package:oau_emergency_1/reuse_textfield.dart';
import 'package:oau_emergency_1/screens/passwordupdated_screen.dart';

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
          icon: Icon(
            Icons.keyboard_backspace,
            color: appbarIconColor,
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
            Text(
              'New Password',
              style: headingTextStyle,
            ),
            Gap(8),
            Text(
              'Your password must be different from\n previous password.',
              style: greyTextStyle,
            ),
            Gap(32),
            ReuseTextfield(
              hintText: 'Password',
              prefixIcon: Icon(
                Icons.lock_outline,
                size: 25,
              ),
              obscureText: true,
            ),
            Gap(12),
            Text(
              'Your password needs to be at least 8 characters long\n'
              'Includes some words and phrases to make it even safer',
              style: greyTextStyle,
            ),
            Gap(12),
            ReuseTextfield(
              hintText: 'Confirm Password',
              prefixIcon: Icon(
                Icons.lock_outline,
                size: 25,
              ),
              obscureText: true,
            ),
            Gap(270),
            ReuseTextButton(
              text: 'Continue',
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const PasswordUpdatedScreen()));
              },
            ),
          ],
        ),
      ),
    );
  }
}
