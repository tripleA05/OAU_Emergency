import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:gap/gap.dart';
import 'package:oau_emergency_1/folders/resource_file.dart/constant.dart';
import 'package:oau_emergency_1/folders/resource_file.dart/reuse_textbutton.dart';
import 'package:oau_emergency_1/folders/home_route_screens.dart/navbar.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

class ActivateAccountScreen extends StatelessWidget {
  static const routeName = '/ActivateAccountScreen';
  ActivateAccountScreen({super.key});
  final TextEditingController controller = TextEditingController();

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
        padding: const EdgeInsets.fromLTRB(24, 80, 24, 24),
        child: ListView(
          children: [
            const Text(
              'Activate Account',
              style: headingTextStyle,
            ),
            const Gap(28),
            const Text(
              'Enter verification code sent to',
              style: greyTextStyle,
            ),
            const Gap(8),
            const Text(
              '*******afeez@student.oauife.edu.ng',
              style: headingTextStyle16,
            ),
            const Gap(24),
            Form(
              key: key,
              child: Padding(
                padding: const EdgeInsets.only(
                  top: 8,
                ),
                child: PinCodeTextField(
                  appContext: context,
                  pastedTextStyle: const TextStyle(
                    color: primarycolor,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                  length: 5,
                  controller: controller,
                  backgroundColor: whitecolor,
                  keyboardType: const TextInputType.numberWithOptions(),
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
            const Gap(24),
            InkWell(
              onTap: () {
                // write onTap function here
              },
              child: const Text(
                'Send a new code',
                style: headingTextStyle16,
              ),
            ),
            const Gap(50),
            ReuseTextButton(
              text: 'Confirm',
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const Navbar(),
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
