import 'package:flutter/material.dart';
// import 'package:flutter/widgets.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:oau_emergency_1/folders/resource_file.dart/constant.dart';
// import 'package:oau_emergency_1/folders/home_route_screens.dart/navbar.dart';
import 'package:oau_emergency_1/folders/resource_file.dart/reuse_passwordtextfield.dart';
// import 'package:oau_emergency_1/home_screen.dart';
import 'package:oau_emergency_1/folders/resource_file.dart/reuse_textbutton.dart';
import 'package:oau_emergency_1/folders/resource_file.dart/reuse_textfield.dart';
import 'package:oau_emergency_1/folders/authentication_screens.dart/forgotpassword_screen.dart';
// import 'package:oau_emergency_1/screens/home_screen.dart';
import 'package:oau_emergency_1/folders/authentication_screens.dart/signup_screen.dart';
import 'package:oau_emergency_1/repositories/auth_repository.dart';

class SigninScreen extends StatefulWidget {
  static const routeName = '/SigninScreen';
  const SigninScreen({super.key});

  @override
  State<SigninScreen> createState() => _SigninScreenState();
}

class _SigninScreenState extends State<SigninScreen> {
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final _authController = Get.find<AuthRepository>();
  bool isLoading = false;

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
            ReuseTextfield(
              hintText: 'Student Email',
              prefixIcon: const Icon(
                Icons.email_outlined,
                size: 25,
              ),
              controller: emailController,
              // obscureText: false,
            ),
            const Gap(16),
            ReusePasswordTextfield(
              hintText: 'Password',
              // prefixIcon: Icon(
              //   Icons.lock_outlined,
              //   size: 25,
              // ),
              // obscureText: true,
              controller: passwordController,
            ),
            const Gap(16),
            InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const ForgotPasswordScreen(),
                  ),
                );
              },
              child: const Text(
                'Forgot Password?',
                style: headingTextStyle16,
              ),
            ),
            const Gap(24),
            ReuseTextButton(
              text: 'Sign In',
              onPressed: () async {
                setState(() {
                  isLoading = true;
                });
                await _authController.login(
                  email: emailController.text.trim(),
                  password: passwordController.text.trim(),
                );
                setState(() {
                  isLoading = false;
                });
                // Navigator.push(
                //   context,
                //   MaterialPageRoute(
                //     builder: (context) => const Navbar(),
                //   ),
                // );
              },
              child: isLoading
                  ? const CircularProgressIndicator(
                      color: Colors.white,
                    )
                  : null,
            ),
            const Gap(240),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  'Don\'t have an account?',
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
                    '  Sign Up',
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
