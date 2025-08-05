import 'dart:ui';

import 'package:flutter/material.dart';
// import 'package:flutter/widgets.dart';
import 'package:gap/gap.dart';
// import 'package:flutter/widgets.dart';
// import 'package:flutter/widgets.dart';
// import 'package:flutter/widgets.dart';
// import 'package:flutter/widgets.dart';
// import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:oau_emergency_1/folders/resource_file.dart/constant.dart';
import 'package:oau_emergency_1/folders/home_route_screens.dart/navbar.dart';

class ContactAdminScreen extends StatelessWidget {
  const ContactAdminScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 80,
        centerTitle: true,
        title: Text(
          'Contact',
          style: GoogleFonts.inter(
            textStyle: const TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 20,
            ),
          ),
        ),
        automaticallyImplyLeading: false,
        leading: IconButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const Navbar(),
              ),
            );
          },
          icon: const Icon(Icons.arrow_back_rounded),
        ),
        backgroundColor: primarycolor,
        foregroundColor: whitecolor,
      ),
      body: const Padding(
        padding: EdgeInsets.fromLTRB(24, 23, 24, 24),
        child: Column(
          children: [
            ReuseContactCard(
              text1: 'Fire Emergency',
              text2: '+234 011 022 0333',
              text3: 'fireemergency@agency.oauife.edu.ng',
              text4: 'Beside Banking Area, Road 1, Oau Campus.',
            ),
            ReuseContactCard(
              text1: 'Security  Emergency',
              text2: '+234 011 022 0333',
              text3: 'securityemergency@agency.oauife.edu.ng',
              text4: 'DSA, Oau Campus.',
            ),
            ReuseContactCard(
              text1: 'Medical  Emergency ',
              text2: '+234 011 022 0333',
              text3: 'medicalemergency@agency.oauife.edu.ng',
              text4: 'Beside Awo Hall, OAU Campus.',
            ),
          ],
        ),
      ),
    );
  }
}

class ReuseContactCard extends StatelessWidget {
  const ReuseContactCard(
      {super.key,
      required this.text1,
      required this.text2,
      required this.text3,
      required this.text4});

  final String text1;
  final String text2;
  final String text3;
  final String text4;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 15.0),
      child: SizedBox(
        width: MediaQuery.of(context).size.width,
        height: 190,
        child: Card(
          // elevation: 2,
          color: whitecolor,
          child: ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: BackdropFilter(
              filter: ImageFilter.blur(),
              child: Padding(
                padding: const EdgeInsets.fromLTRB(20, 10, 20, 0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      // 'Fire Emergency',
                      text1,
                      style: GoogleFonts.inter(
                        textStyle: const TextStyle(
                          color: Color(0xff010080),
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                    const Gap(20),
                    Row(
                      children: [
                        const Icon(
                          Icons.phone,
                          size: 15,
                          color: primarycolor,
                        ),
                        const Gap(15),
                        Text(
                          // '+234 011 022 0333',
                          text2,
                          style: GoogleFonts.inter(
                            textStyle: const TextStyle(
                              color: Color(0xff5C5C76),
                              fontSize: 14,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ),
                      ],
                    ),
                    // const Gap(3),
                    Padding(
                      padding: const EdgeInsets.only(bottom: 1.0),
                      child: SizedBox(
                        // height: 100,
                        width: MediaQuery.of(context).size.width,
                        child: const Divider(
                          // width: 100,
                          thickness: 1,
                          // color: blackcolor,
                        ),
                      ),
                    ),

                    Row(
                      children: [
                        const Icon(
                          Icons.email,
                          size: 15,
                          color: primarycolor,
                        ),
                        const Gap(15),
                        Text(
                          // 'fireemergency@agency.oauife.edu.ng',
                          text3,
                          style: GoogleFonts.inter(
                            textStyle: const TextStyle(
                              color: Color(0xff5C5C76),
                              fontSize: 13,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ),
                      ],
                    ),
                    // const Gap(3),
                    Padding(
                      padding: const EdgeInsets.only(bottom: 5.0),
                      child: SizedBox(
                        // height: 100,
                        width: MediaQuery.of(context).size.width,
                        child: const Divider(
                          // width: 100,
                          thickness: 1,
                          // color: blackcolor,
                        ),
                      ),
                    ),
                    Row(
                      children: [
                        const Icon(
                          Icons.location_on,
                          size: 15,
                          color: primarycolor,
                        ),
                        const Gap(15),
                        Text(
                          // 'Beside Banking Area, Road 1, Oau Campus.',
                          text4,
                          style: GoogleFonts.inter(
                            textStyle: const TextStyle(
                              color: Color(0xff5C5C76),
                              fontSize: 13,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ),
                      ],
                    ),
                    // const Gap(3),
                    SizedBox(
                      // height: 100,
                      width: MediaQuery.of(context).size.width,
                      child: const Divider(
                        // width: 100,
                        thickness: 1,
                        // color: blackcolor,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
