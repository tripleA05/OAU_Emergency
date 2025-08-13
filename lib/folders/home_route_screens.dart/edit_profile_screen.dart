import 'package:flutter/material.dart';
// import 'package:flutter/widgets.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:oau_emergency_1/folders/resource_file.dart/constant.dart';
import 'package:oau_emergency_1/folders/resource_file.dart/reuse_textbutton.dart';
import 'package:oau_emergency_1/folders/resource_file.dart/reuse_textfield2.dart';

class EditProfile extends StatelessWidget {
  const EditProfile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(Icons.arrow_back_rounded),
        ),
        backgroundColor: whitecolor,
        title: Text(
          'Profile Settings',
          style: GoogleFonts.inter(
            textStyle: const TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 20,
            ),
          ),
        ),
        centerTitle: true,
        foregroundColor: primarycolor,
        leadingWidth: 60,
      ),
      body: Padding(
        padding: const EdgeInsets.only(
          top: 93.0,
          left: 24,
          right: 24,
        ),
        child: ListView(
          // crossAxisAlignment: CrossAxisAlignment.start,
          // mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: Column(
                // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Image.asset(
                    'assets/Group 34 (1).png',
                    height: 67,
                    width: 67,
                  ),
                  const Gap(14),
                  Text(
                    'Damilola Thompson',
                    style: GoogleFonts.inter(
                      textStyle: const TextStyle(
                        color: blackcolor,
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                  const Gap(5),
                  Text(
                    'ttdamilola@student.edu.oauife.ng',
                    style: GoogleFonts.inter(
                      textStyle: const TextStyle(
                          color: blackcolor,
                          fontSize: 12,
                          fontWeight: FontWeight.w400),
                    ),
                  ),
                ],
              ),
            ),
            const Gap(50),
            Text(
              'Set a New Display Name',
              style: GoogleFonts.inter(
                textStyle: const TextStyle(
                  color: Color.fromARGB(255, 26, 7, 153),
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
            const Gap(15),
            // ignore: missing_required_param
            const ReuseTextfield2(
              hintText: "Display Name",
              obscureText: false,
            ),
            const Gap(15),
            ReuseTextButton(
              text: 'Update Profile',
              onPressed: () {
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
    );
  }
}
