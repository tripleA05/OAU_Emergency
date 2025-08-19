// import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:oau_emergency_1/folders/authentication_screens.dart/signin_screen.dart';
import 'package:oau_emergency_1/folders/home_route_screens.dart/full_image.dart';
import 'package:oau_emergency_1/folders/home_route_screens.dart/navbar.dart';
import 'package:oau_emergency_1/folders/resource_file.dart/constant.dart';
import 'package:gap/gap.dart';
// import 'package:oau_emergency_1/folders/home_route_screens.dart/navbar.dart';
import 'package:oau_emergency_1/folders/resource_file.dart/reuse_row.dart';
// import 'package:oau_emergency_1/folders/home_route_screens.dart/edit_profile_screen.dart';
import 'package:oau_emergency_1/repositories/auth_repository.dart';
import 'package:oau_emergency_1/repositories/user_repository.dart';
// import 'package:oau_emergency_1/reuse_row.dart';
// import 'package:oau_emergency_1/reuse_row.dart';
// import 'package:oau_emergency_1/navbar.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  final _authController = Get.find<AuthRepository>();

  final _userController = Get.find<UserRepository>();

  @override
  void initState() {
    if (_userController.reportList.value == null) {
      _userController.fetchReports();
    }

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
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
      body: Obx(() {
        return Padding(
          padding: const EdgeInsets.all(24),
          child: ListView(
            children: [
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
                        '${_authController.user.value?.firstname ?? 'User'} ${_authController.user.value?.lastname ?? ''}',
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
                        _authController.user.value?.email ?? '',
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
                  // IconButton(
                  //   onPressed: () {
                  //     Navigator.push(
                  //       context,
                  //       MaterialPageRoute(
                  //         builder: (context) => const EditProfile(),
                  //       ),
                  //     );
                  //   },
                  //   icon: const Icon(
                  //     Icons.edit,
                  //     color: primarycolor,
                  //     size: 30,
                  //   ),
                  // ),
                ],
              ),
              const Gap(5),
              SizedBox(
                child: InkWell(
                  onTap: () {
                    // Navigator.push(
                    //   context,
                    //   MaterialPageRoute(
                    //     builder: (context) => const ,
                    //   ),
                    // );
                    Get.offAll(() => const SigninScreen());
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
                'My Reports',
                style: GoogleFonts.inter(
                  textStyle: const TextStyle(
                    color: Color(0xff010080),
                    fontSize: 18,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
              const Gap(5),
              _userController.reportList.value == null
                  ? const Center(
                      child: CircularProgressIndicator(),
                    )
                  : _userController.reportList.value!.isEmpty
                      ? const Center(
                          child: Text(
                            'No reports found',
                            style: TextStyle(
                              fontSize: 16,
                              color: Colors.grey,
                            ),
                          ),
                        )
                      : const SizedBox.shrink(),
              if (_userController.reportList.value != null)
                ..._userController.reportList.value!.reversed.map(
                  (report) => ReuseRowProfileScreen(
                    image: GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (_) =>
                                FullImageScreen(imageUrl: report.image),
                          ),
                        );
                      },
                      child: report.image == null
                          ? Image.asset(
                              'assets/Frame 8250.png',
                              fit: BoxFit.cover,
                            )
                          : Image.network(
                              report.image ?? '',
                              fit: BoxFit.cover,
                            ),
                    ),
                    text1: "Emergency Report",
                    text2: DateFormat('EEE d MMM, yyyy | h:mm a').format(
                      DateTime.tryParse(report.date ?? '') ?? DateTime.now(),
                    ),
                    text3: report.details ?? "No details provided",
                    isAcknowledged: report.isAcknowledged ?? false,
                  ),
                ),

              // if (_userController.reportList.value != null)
              //   ..._userController.reportList.value!.map(
              //     (report) => ListView(
              //             padding: const EdgeInsets.all(10),
              //             children: reports.reversed.map((report) {
              //               return ReuseRowProfileScreen(
              //                 image: GestureDetector(
              //                   onTap: () {
              //                     Navigator.push(
              //                       context,
              //                       MaterialPageRoute(
              //                         builder: (_) => FullImageScreen(
              //                             imageUrl: report.image),
              //                       ),
              //                     );
              //                   },
              //                   child: report.image == null
              //                       ? Image.asset(
              //                           'assets/Frame 8250.png',
              //                           fit: BoxFit.cover,
              //                         )
              //                       : Image.network(
              //                           report.image ?? '',
              //                           fit: BoxFit.cover,
              //                         ),
              //                 ),
              //                 text1: "Emergency Report",
              //                 text2: report.location ?? "Unknown Location",
              //                 text3: report.details ?? "No details provided",
              //                 isAcknowledged: report.isAcknowledged ?? false,
              //               );
              //             }).toList(),

              // ReuseRowProfileScreen(
              //   image: GestureDetector(
              //     onTap: () {
              //       Navigator.push(
              //         context,
              //         MaterialPageRoute(
              //           builder: (_) =>
              //               FullImageScreen(imageUrl: report.image),
              //         ),
              //       );
              //     },
              //     child: report.image == null
              //         ? Image.asset(
              //             'assets/Frame 8250.png',
              //             fit: BoxFit.cover,
              //           )
              //         : Image.network(
              //             report.image ?? '',
              //             fit: BoxFit.cover,
              //           ),
              //   ),

              //   //  report.image == null
              //   //     ? Image.asset(
              //   //         'assets/Frame 8250.png',
              //   //         fit: BoxFit.cover,
              //   //       )
              //   //     : Image.network(
              //   //         report.image ?? '',
              //   //         fit: BoxFit.cover,
              //   //       ),
              //   text1: report.location ?? '',
              //   text2: DateFormat('EEE d MMM, yyyy | h:mm a').format(
              //     DateTime.tryParse(report.date ?? '') ?? DateTime.now(),
              //   ),
              //   text3: report.details ?? '',
              //   isAcknowledged: report.isAcknowledged ?? false,
              // ),

              // ReuseRowProfileScreen(
              //   image: Image.asset(
              //     'assets/Frame 8250.png',
              //     height: 63,
              //   ),
              //   text1: 'Security Emergency\nAngola hostel',
              //   text2: 'Thurs 15TH Aug, 2024 | 8:00pm',
              //   text3: 'A Robbery case',
              // ),
              // ReuseRowProfileScreen(
              //   image: Image.asset(
              //     'assets/Frame 8250.png',
              //     height: 63,
              //   ),
              //   text1: 'Security Emergency\nAngola hostel',
              //   text2: 'Thurs 15TH Aug, 2024 | 8:00pm',
              //   text3: 'A Robbery case',
              // ),
              // ReuseRowProfileScreen(
              //   image: Image.asset(
              //     'assets/Frame 8250.png',
              //     height: 63,
              //   ),
              //   text1: 'Security Emergency\nAngola hostel',
              //   text2: 'Thurs 15TH Aug, 2024 | 8:00pm',
              //   text3: 'A Robbery case',
              // ),
              // ReuseRowProfileScreen(
              //   image: Image.asset(
              //     'assets/Frame 8250.png',
              //     height: 63,
              //   ),
              //   text1: 'Security Emergency\nAngola hostel',
              //   text2: 'Thurs 15TH Aug, 2024 | 8:00pm',
              //   text3: 'A Robbery case',
              // ),
              // ReuseRowProfileScreen(
              //   image: Image.asset(
              //     'assets/Frame 8250.png',
              //     height: 63,
              //   ),
              //   text1: 'Security Emergency\nAngola hostel',
              //   text2: 'Thurs 15TH Aug, 2024 | 8:00pm',
              //   text3: 'A Robbery case',
              // ),
              // ReuseRowProfileScreen(
              //   image: Image.asset(
              //     'assets/Frame 8250.png',
              //     height: 63,
              //   ),
              //   text1: 'Security Emergency\nAngola hostel',
              //   text2: 'Thurs 15TH Aug, 2024 | 8:00pm',
              //   text3: 'A Robbery case',
              // ),
            ],
          ),
        );
      }),
    );
  }
}
