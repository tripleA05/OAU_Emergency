// import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:oau_emergency_1/folders/authentication_screens.dart/signin_screen.dart';
import 'package:oau_emergency_1/folders/resource_file.dart/constant.dart';
import 'package:gap/gap.dart';
// import 'package:oau_emergency_1/folders/home_route_screens.dart/navbar.dart';
import 'package:oau_emergency_1/folders/resource_file.dart/reuse_row.dart';
import 'package:oau_emergency_1/folders/home_route_screens.dart/edit_profile_screen.dart';
// import 'package:oau_emergency_1/reuse_row.dart';
// import 'package:oau_emergency_1/reuse_row.dart';
// import 'package:oau_emergency_1/navbar.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        // leading: IconButton(
        //   onPressed: () {
        //     Navigator.push(
        //       context,
        //       MaterialPageRoute(
        //         builder: (context) => const Navbar(),
        //       ),
        //     );
        //   },
        //   icon: const Icon(Icons.arrow_back_rounded),
        // ),
        backgroundColor: whitecolor,
        title: Text(
          'Profile',
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
        padding: const EdgeInsets.all(24),
        child: ListView(children: [
          Row(
            // mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Image.asset(
                'assets/Group 34 (1).png',
                height: 50,
                width: 50,
              ),
              const Gap(14),
              Column(
                // mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Damilola Thompson',
                    style: GoogleFonts.inter(
                      textStyle: const TextStyle(
                        color: Color(0xff010080),
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                  const Gap(7),
                  Text(
                    'ttdamilola@student.edu.oauife.ng',
                    style: GoogleFonts.inter(
                      textStyle: const TextStyle(
                        color: Color(0xff5C5C76),
                        fontSize: 12,
                        // fontWeight: fon
                      ),
                    ),
                  ),
                ],
              ),
              const Gap(50),
              // const InkWell(
              //   child: Icon(
              //     Icons.edit,
              //     color: primarycolor,
              //     size: 30,
              //   ),
              // )
              IconButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const EditProfile(),
                    ),
                  );
                },
                icon: const Icon(
                  Icons.edit,
                  color: primarycolor,
                  size: 30,
                ),
              ),
            ],
          ),
          const Gap(5),
          SizedBox(
            child: InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const SigninScreen(),
                  ),
                );
              },
              child: const Text(
                'Sign out',
                style: TextStyle(
                  color: Colors.red,
                  fontSize: 18.0,
                  fontWeight: FontWeight.w800,
                ),
              ),
            ),
          ),
          const Gap(25),
          Text(
            'My Post',
            style: GoogleFonts.inter(
              textStyle: const TextStyle(
                color: Color(0xff010080),
                fontSize: 18,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
          const Gap(5),
          ReuseRowProfileScreen(
            image: Image.asset(
              'assets/Frame 8250.png',
              height: 63,
            ),
            text1: 'Security Emergency\nAngola hostel',
            text2: 'Thurs 15TH Aug, 2024 | 8:00pm',
            text3: 'A Robbery case',
          ),
          ReuseRowProfileScreen(
            image: Image.asset(
              'assets/Frame 8250.png',
              height: 63,
            ),
            text1: 'Security Emergency\nAngola hostel',
            text2: 'Thurs 15TH Aug, 2024 | 8:00pm',
            text3: 'A Robbery case',
          ),
          ReuseRowProfileScreen(
            image: Image.asset(
              'assets/Frame 8250.png',
              height: 63,
            ),
            text1: 'Security Emergency\nAngola hostel',
            text2: 'Thurs 15TH Aug, 2024 | 8:00pm',
            text3: 'A Robbery case',
          ),
          ReuseRowProfileScreen(
            image: Image.asset(
              'assets/Frame 8250.png',
              height: 63,
            ),
            text1: 'Security Emergency\nAngola hostel',
            text2: 'Thurs 15TH Aug, 2024 | 8:00pm',
            text3: 'A Robbery case',
          ),
          ReuseRowProfileScreen(
            image: Image.asset(
              'assets/Frame 8250.png',
              height: 63,
            ),
            text1: 'Security Emergency\nAngola hostel',
            text2: 'Thurs 15TH Aug, 2024 | 8:00pm',
            text3: 'A Robbery case',
          ),
          ReuseRowProfileScreen(
            image: Image.asset(
              'assets/Frame 8250.png',
              height: 63,
            ),
            text1: 'Security Emergency\nAngola hostel',
            text2: 'Thurs 15TH Aug, 2024 | 8:00pm',
            text3: 'A Robbery case',
          ),
        ]),
      ),
    );
  }
}
