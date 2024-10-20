// import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
// import 'package:flutter/widgets.dart';
// import 'package:flutter/widgets.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';
// import 'package:flutter_svg/flutter_svg.dart';
import 'package:oau_emergency_1/constant.dart';
// import 'package:oau_emergency_1/reuse_textbutton.dart';

class HomeScreen extends StatelessWidget {
  static const routeName = '/HomeScreen';
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: whitecolor,
      body: Padding(
        padding: const EdgeInsets.only(top: 15, left: 24, right: 24),
        child: ListView(
          children: [
            Row(
              children: [
                Image.asset(
                  'assets/Group 34 (1).png',
                  height: 50,
                  width: 50,
                ),
                Gap(14),
                Column(
                  // mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Welcome Back',
                      style: GoogleFonts.inter(
                        textStyle: TextStyle(
                          color: Color(0xff5C5C76),
                          fontSize: 12,
                          // fontWeight: fon
                        ),
                      ),
                    ),
                    Gap(7),
                    Text(
                      'Damilola Thompson',
                      style: GoogleFonts.inter(
                        textStyle: TextStyle(
                          color: Color(0xff010080),
                          fontSize: 14,
                          // fontWeight: fon
                        ),
                      ),
                    ),
                  ],
                ),
                Gap(125),
                // CircleAvater(child: SvgPicture.asset('assets/Combined Shape.svg')),
                Container(
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(
                      width: 1,
                      color: blackcolor,
                    ),
                  ),
                  child: CircleAvatar(
                    backgroundColor: whitecolor,
                    foregroundColor: blackcolor,
                    radius: 18,
                    child: SvgPicture.asset(
                      'assets/Combined Shape.svg',
                      width: 20,
                      height: 20,
                      color: blackcolor,
                    ),
                  ),
                )
              ],
            ),
            Gap(30),
            Center(
              child: Stack(
                children: [
                  Image.asset(
                    'assets/Ambulance Image.png',
                    // width: MediaQuery.of(context).size.width,
                    width: 327,
                    height: 154,
                  ),
                  Container(
                    height: 154,
                    width: 327,
                    decoration: BoxDecoration(
                      color: primarycolor.withOpacity(0.8),
                      borderRadius: BorderRadius.circular(10),
                      // image: DecorationImage(
                      //   image: AssetImage(
                      //     'assets/Ambulance Image.png',
                      //   ),
                      // ),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(
                        left: 25,
                        top: 15,
                        bottom: 15,
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Text(
                            'is there an',
                            style: italicStyle,
                          ),
                          Text(
                            'accident/incident',
                            style: GoogleFonts.inter(
                              textStyle: const TextStyle(
                                color: Color(0xffffffff),
                                fontWeight: FontWeight.w900,
                                fontSize: 18,
                                fontStyle: FontStyle.italic,
                              ),
                            ),
                          ),
                          Text(
                            'happening?',
                            style: italicStyle,
                          ),
                          // ReuseTextButton(text: 'Confirm', onPressed: () {})
                          Padding(
                            padding: const EdgeInsets.only(top: 5),
                            child: Container(
                              decoration: BoxDecoration(
                                color: whitecolor,
                                borderRadius: BorderRadius.circular(10),
                              ),
                              height: 35,
                              width: 96,
                              // color: whitecolor,
                              child: TextButton(
                                onPressed: () {},
                                child: Text(
                                  'Report it',
                                  style: GoogleFonts.inter(
                                    textStyle: const TextStyle(
                                      color: primarycolor,
                                      fontSize: 14,
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Gap(30),
            Text(
              'Incident that Occurred',
              style: interStyle16,
            ),
            Gap(13),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Stack(
                  children: [
                    Image.asset(
                      'assets/Security Incident.png',
                      width: 110,
                      height: 120,
                    ),
                    Positioned(
                      bottom: 5,
                      left: 5,
                      child: Text(
                        'Security\nIncident',
                        style: interStyle12,
                      ),
                    ),
                  ],
                ),
                Stack(
                  children: [
                    Image.asset(
                      'assets/Fire Incident.png',
                      width: 110,
                      height: 120,
                    ),
                    Positioned(
                      bottom: 5,
                      left: 5,
                      child: Text(
                        'Fire\nIncident',
                        style: interStyle12,
                      ),
                    ),
                  ],
                ),
                Stack(
                  children: [
                    Image.asset(
                      'assets/Medical Incident.png',
                      width: 110,
                      height: 120,
                    ),
                    Positioned(
                      bottom: 5,
                      left: 5,
                      child: Text(
                        'Medical\nIncident',
                        style: interStyle12,
                      ),
                    ),
                  ],
                ),
              ],
            ),
            Gap(22),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Safety Tips',
                  style: interStyle16,
                ),
                Text(
                  'View all',
                  style: greyinterStyle12,
                ),
              ],
            ),
            Gap(13),
            reuse_container(),
            Gap(13),
            reuse_container(),
            Gap(13),
            reuse_container(),
          ],
        ),
      ),
    );
  }
}

class reuse_container extends StatelessWidget {
  const reuse_container({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: 100.0,
      decoration: const BoxDecoration(
        color: whitecolor,
        border: Border(
          left: BorderSide(width: 2, color: greycolor2),
          bottom: BorderSide(width: 2, color: greycolor2),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.only(
          left: 15,
          top: 10,
          right: 10,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Flammable Objects',
              style: interStyle14,
            ),
            Gap(5),
            Text(
              'Maintain a safe distance between flammable\nmaterials like curtains, furniture, and appliances\nsuch as heaters or stoves.',
              style: GoogleFonts.inter(
                textStyle: TextStyle(
                  color: Colors.black,
                  fontSize: 12.0,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
