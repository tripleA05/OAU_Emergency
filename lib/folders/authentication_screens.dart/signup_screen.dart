import 'package:flutter/material.dart';
import 'package:get/get.dart';
// import 'package:oau_emergency_1/folders/authentication_screens.dart/aisignin_screen.dart';
import 'package:oau_emergency_1/folders/resource_file.dart/reuse_passwordtextfield.dart';

import 'package:oau_emergency_1/folders/resource_file.dart/reuse_textbutton.dart';
import 'package:oau_emergency_1/folders/resource_file.dart/reuse_textfield.dart';
import 'package:oau_emergency_1/folders/resource_file.dart/constant.dart';
import 'package:gap/gap.dart';
import 'package:oau_emergency_1/folders/authentication_screens.dart/activate_account_screen.dart';
import 'package:oau_emergency_1/folders/authentication_screens.dart/signin_screen.dart';
import 'package:oau_emergency_1/repositories/auth_repository.dart';

class SignupScreen extends StatefulWidget {
  static const routeName = '/SigninScreen';
  const SignupScreen({super.key});

  @override
  State<SignupScreen> createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final firstnameController = TextEditingController();
  final lastnameController = TextEditingController();
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final _authController = Get.find<AuthRepository>();

  bool isLoading = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: whitecolor,
      body: Container(
        height: Get.height,
        width: Get.width,
        padding: const EdgeInsets.only(bottom: 24, right: 24, left: 24),
        child: SingleChildScrollView(
          child: Form(
            key: _formKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Gap(180),
                const Text(
                  'Welcome!',
                  style: headingTextStyle,
                ),
                const Gap(8),
                const Text(
                  "Let’s get started creating an account",
                  style: greyTextStyle,
                ),
                const Gap(24),
                ReuseTextfield(
                  hintText: 'firstname',
                  prefixIcon: Icon(
                    Icons.account_circle_outlined,
                    size: 25,
                  ),
                  controller: firstnameController,
                  // obscureText: false,
                ),
                const Gap(24),
                ReuseTextfield(
                  hintText: 'lastname',
                  prefixIcon: Icon(
                    Icons.account_circle_outlined,
                    size: 25,
                  ),
                  controller: lastnameController,
                  // obscureText: false,
                ),
                const Gap(24),
                ReuseTextfield(
                  hintText: 'Student Email',
                  prefixIcon: Icon(
                    Icons.email_outlined,
                    size: 25,
                  ),
                  controller: emailController,
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
                ReusePasswordTextfield(
                  hintText: 'Password',
                  controller: passwordController,
                ),
                const Gap(50),
                ReuseTextButton(
                  text: 'Sign Up',
                  child: isLoading
                      ? const CircularProgressIndicator(
                          color: Colors.white,
                        )
                      : null,
                  onPressed: () async {
                    if (!_formKey.currentState!.validate()) {
                      return;
                    }
                    setState(() {
                      isLoading = true;
                    });
                    await _authController.signUp(
                      email: emailController.text.trim(),
                      password: passwordController.text.trim(),
                      firstName: firstnameController.text.trim(),
                      lastName: lastnameController.text.trim(),
                    );
                    setState(() {
                      isLoading = false;
                    });
                  }

                  // Navigator.push(
                  //   context,
                  //   MaterialPageRoute(
                  //     builder: (context) => ActivateAccountScreen(),
                  //   ),
                  // );
                  ,
                ),
                const Gap(20),
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
                          builder: (context) => const SigninScreen(),
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
        ),
      ),
    );
  }
}
