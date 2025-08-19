// ignore_for_file: camel_case_types, deprecated_member_use

import 'package:flutter/material.dart';

import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:oau_emergency_1/folders/admin_screens.dart/admin2.dart';
import 'package:oau_emergency_1/folders/home_route_screens.dart/profile_screen.dart';
// import 'package:oau_emergency_1/folders/admin_screens.dart/admin_report_screen.dart';
import 'package:oau_emergency_1/folders/home_route_screens.dart/report_screen2.dart';
// import 'package:oau_emergency_1/folders/admin_screens.dart/admin_report_screen.dart';
// import 'package:oau_emergency_1/folders/home_route_screens.dart/chat_screen.dart';

import 'package:oau_emergency_1/folders/resource_file.dart/constant.dart';
import 'package:oau_emergency_1/folders/home_route_screens.dart/notification_screen.dart';
// import 'package:oau_emergency_1/folders/home_route_screens.dart/profile_screen.dart';

// import 'package:oau_emergency_1/folders/home_route_screens.dart/report_emergency.dart';
import 'package:oau_emergency_1/folders/home_route_screens.dart/safety_tips_screen.dart';
import 'package:oau_emergency_1/repositories/auth_repository.dart';

class HomeScreen extends StatelessWidget {
  static const routeName = '/HomeScreen';
  HomeScreen({super.key});
  final _authController = Get.find<AuthRepository>();

  @override
  Widget build(BuildContext context) {
    return Obx(() {
      return Scaffold(
        appBar: AppBar(
          toolbarHeight: 70,
          automaticallyImplyLeading: false,
          leadingWidth: 80,
          leading: Padding(
            padding: const EdgeInsets.only(right: 0, left: 24),
            child: InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const ProfileScreen()),
                );
              },
              child: Image.asset(
                'assets/Group 34 (1).png',
                height: 50,
                width: 50,
              ),
            ),
          ),
          centerTitle: false,
          title: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Welcome Back',
                style: GoogleFonts.inter(
                  textStyle: const TextStyle(
                    color: Color(0xff5C5C76),
                    fontSize: 13,
                  ),
                ),
              ),
              const Gap(5),
              Text(
                '${_authController.user.value?.firstname ?? 'User'} ${_authController.user.value?.lastname ?? ''}',
                style: GoogleFonts.inter(
                  textStyle: const TextStyle(
                    color: primarycolor,
                    fontSize: 15,
                  ),
                ),
              ),
            ],
          ),
          actions: [
            Padding(
              padding: const EdgeInsets.only(right: 24),
              child: Container(
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(
                    width: 1.2,
                    color: blackcolor,
                  ),
                ),
                child: CircleAvatar(
                  backgroundColor: whitecolor,
                  foregroundColor: blackcolor,
                  radius: 18,
                  child: IconButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const NotificationScreen()),
                      );
                    },
                    icon: Badge.count(
                      count: 1,
                      child: const Icon(Icons.notifications_none_outlined),
                    ),
                    iconSize: 20,
                  ),
                ),
              ),
            ),
          ],
        ),
        backgroundColor: whitecolor,
        body: Padding(
          padding: const EdgeInsets.only(top: 10, left: 24, right: 24),
          child: ListView(
            children: [
              Stack(
                children: [
                  Image.asset(
                    'assets/Ambulance Image (1).png',
                    width: double.infinity,
                    height: 154,
                  ),
                  Container(
                    height: 154,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: primarycolor.withOpacity(0.7),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(
                        left: 30,
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
                            'Accident/Fire incident',
                            style: GoogleFonts.inter(
                              textStyle: const TextStyle(
                                color: Color(0xffffffff),
                                fontWeight: FontWeight.w900,
                                fontSize: 19,
                                fontStyle: FontStyle.italic,
                              ),
                            ),
                          ),
                          Text(
                            'happening?',
                            style: italicStyle,
                          ),
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
                                onPressed: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) =>
                                          const ReportScreen2(),
                                    ),
                                  );
                                },
                                child: Text(
                                  'Report it',
                                  style: GoogleFonts.inter(
                                    textStyle: const TextStyle(
                                      color: primarycolor,
                                      fontSize: 16,
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
              const Gap(30),
              Text(
                'Which Emergency Occurred?',
                style: interStyle16,
              ),
              const Gap(13),
              InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const ReportScreen2(),
                    ),
                  );
                },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    // ReuseStackHomeScreen(
                    //   image: Image.asset(
                    //     'assets/Security Incident.png',
                    //     width: 110,
                    //     height: 120,
                    //   ),
                    //   text: 'Security\n Incident',
                    // ),
                    ReuseStackHomeScreen(
                      image: Image.asset(
                        'assets/Fire Incident.png',
                        width: 175,
                        height: 170,
                      ),
                      text: 'Fire\nIncident',
                    ),
                    ReuseStackHomeScreen(
                      image: Image.asset(
                        'assets/Medical Incident.png',
                        width: 175,
                        height: 170,
                      ),
                      text: 'Road\nAccident',
                    ),
                    // ReuseStackHomeScreen(
                    //   image: Image.asset(
                    //     'assets/Security Incident.png',
                    //     width: 110,
                    //     height: 120,
                    //   ),
                    //   text: 'Security\nIncident',
                    // ),
                  ],
                ),
              ),
              const Gap(22),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Safety Tips',
                    style: interStyle16,
                  ),
                  InkWell(
                    onTap: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const SafetyTips(),
                      ),
                    ),
                    child: Text(
                      'View all',
                      style: interStyle16,
                    ),
                  ),
                ],
              ),
              const Gap(13),
              const reuseHomecontainer(),
              const reuseHomecontainer(),
              const reuseHomecontainer(),
            ],
          ),
        ),
      );
    });
  }
}

class ReuseStackHomeScreen extends StatelessWidget {
  const ReuseStackHomeScreen({
    super.key,
    required this.image,
    required this.text,
  });
  final Image image;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        image,
        Positioned(
          bottom: 5,
          left: 15,
          child: Text(
            text,
            style: interStylewhite16,
          ),
        ),
      ],
    );
  }
}

class reuseHomecontainer extends StatelessWidget {
  const reuseHomecontainer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 13.0),
      child: Container(
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
              const Gap(5),
              Text(
                'Maintain a safe distance between flammable\nmaterials like curtains, furniture, and appliances\nsuch as heaters or stoves.',
                style: GoogleFonts.inter(
                  textStyle: const TextStyle(
                    color: Colors.black,
                    fontSize: 12.0,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
