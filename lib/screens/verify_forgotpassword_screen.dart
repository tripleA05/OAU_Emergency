import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
// import 'package:flutter/widgets.dart';
import 'package:gap/gap.dart';
import 'package:oau_emergency_1/constant.dart';
import 'package:oau_emergency_1/reuse_textbutton.dart';
// import 'package:oau_emergency_1/screens/newpassword_screen.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

class VerifyForgotPasswordScreen extends StatelessWidget {
  const VerifyForgotPasswordScreen({super.key});

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
            Icons.cancel_outlined,
            color: appbarIconColor,
            size: 30.0,
          ),
        ),
      ),
      backgroundColor: whitecolor,
      body: Padding(
        padding: const EdgeInsets.fromLTRB(24, 100, 24, 24),
        child: ListView(
          children: [
            Text(
              'Forgot Password',
              style: headingTextStyle,
            ),
            Gap(8),
            Text(
              'Enter verification code sent to',
              style: greyTextStyle,
            ),
            Gap(8),
            Text(
              '*******afeez@student.oauife.edu.ng',
              style: headingTextStyle16,
            ),
            Gap(24),
            Form(
              key: key,
              child: Padding(
                padding: const EdgeInsets.only(
                  top: 8,
                ),
                child: PinCodeTextField(
                  textStyle: TextStyle(
                    fontSize: 25,
                    color: primarycolor,
                    fontWeight: FontWeight.bold,
                  ),
                  appContext: context,
                  pastedTextStyle: TextStyle(
                    fontSize: 25,
                    color: primarycolor,
                    fontWeight: FontWeight.bold,
                  ),
                  length: 5,
                  // controller: controller,
                  backgroundColor: whitecolor,
                  keyboardType: TextInputType.numberWithOptions(),
                  inputFormatters: [FilteringTextInputFormatter.digitsOnly],
                  pinTheme: PinTheme(
                    fieldWidth: 70,
                    shape: PinCodeFieldShape.circle,
                    selectedColor: primarycolor,
                    activeColor: greycolor2,
                    inactiveColor: greycolor2,
                  ),
                ),
              ),
            ),
            Gap(24),
            Text(
              'Send a new code',
              style: headingTextStyle16,
            ),
            Gap(85),
            ReuseTextButton(
              text: 'Confirm',
              onPressed: () {},
              // onPressed: () {
              //   Navigator.push(
              //     context,
              //     MaterialPageRoute(
              //       builder: (context) => const NewpasswordScreen(),
              //     ),
              //   );
              // },
            )
          ],
        ),
      ),
    );
  }
}
