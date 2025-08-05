import 'package:flutter/material.dart';
// import 'package:flutter/widgets.dart';
import 'package:gap/gap.dart';
import 'package:oau_emergency_1/folders/resource_file.dart/constant.dart';
import 'package:oau_emergency_1/folders/resource_file.dart/reuse_textbutton.dart';
import 'package:oau_emergency_1/folders/authentication_screens.dart/verify_forgotpassword_screen.dart';
// import 'package:oau_emergency_1/screens/verify_forgotpassword_screen.dart';

class ForgotPasswordScreen extends StatelessWidget {
  const ForgotPasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: whitecolor,
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
      body: Padding(
        padding: const EdgeInsets.fromLTRB(24, 100, 24, 24),
        child: ListView(
          children: [
            const Text(
              'Forgot Password',
              style: headingTextStyle,
            ),
            const Gap(8),
            const Text(
              'Don\'t worry! it happens. Please select your email\n'
              'so we can send you a code',
              style: greyTextStyle,
            ),
            const Gap(32),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: primarycolor,
              ),
              width: MediaQuery.of(context).size.width,
              height: 142.0,
              child: const Padding(
                padding: EdgeInsets.all(20.0),
                child: Column(
                  // mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        CircleAvatar(
                          backgroundColor: greycolor,
                          radius: 20,
                          child: Icon(
                            Icons.email_outlined,
                            color: whitecolor,
                            size: 20,
                          ),
                        ),
                        CircleAvatar(
                          backgroundColor: Color(0xff2F195A),
                          radius: 10,
                          child: Icon(
                            Icons.check,
                            color: whitecolor,
                            size: 15,
                          ),
                        ),
                      ],
                    ),
                    Gap(12),
                    Text(
                      'Email',
                      style: whiteTextStyle,
                    ),
                    Gap(3),
                    Text(
                      'Your email: ****afeez@student.oauife.edu.ng',
                      style: TextStyle(
                        color: whitecolor,
                        fontSize: 12,
                        fontFamily: 'PlusJakartaSans',
                      ),
                    )
                  ],
                ),
              ),
            ),
            const Gap(309),
            ReuseTextButton(
              text: 'Confirm',
              //  onPressed: () {},
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const VerifyForgotPasswordScreen(),
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
