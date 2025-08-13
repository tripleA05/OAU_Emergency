import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:oau_emergency_1/folders/resource_file.dart/constant.dart';
import 'package:gap/gap.dart';
import 'package:oau_emergency_1/folders/resource_file.dart/reuse_row.dart';
// import 'package:flutter_svg/flutter_svg.dart';

class NotificationScreen extends StatelessWidget {
  const NotificationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: whitecolor,
        automaticallyImplyLeading: false,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(
            Icons.arrow_back_rounded,
            color: Color.fromARGB(255, 26, 7, 153),
          ),
        ),
        title: Text(
          'Notifications',
          style: GoogleFonts.inter(
            textStyle: const TextStyle(
              fontWeight: FontWeight.bold,
              color: Color.fromARGB(255, 26, 7, 153),
              fontSize: 20,
            ),
          ),
        ),
        centerTitle: true,
        foregroundColor: const Color.fromARGB(255, 26, 7, 153),
        leadingWidth: 60,
        actions: const [
          Padding(
            padding: EdgeInsets.only(right: 24),
            child: CircleAvatar(
              backgroundColor: Color.fromARGB(255, 26, 7, 153),
              radius: 16,
              child: Icon(
                Icons.notifications,
                color: whitecolor,
                size: 20,
              ),
            ),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(24.0),
        child: ListView(
          children: [
            Text(
              'Today',
              style: GoogleFonts.inter(
                textStyle: const TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: 15,
                  color: Color.fromARGB(255, 26, 7, 153),
                ),
              ),
            ),
            const Gap(15),
            ReuseRowNotificationScreen(
              image: Image.asset(
                'assets/Frame 3906 (2).png',
                height: 60,
                width: 60,
              ),
              text1: 'Fire Department Acknowledged your post',
              text2: 'Fire Emergency',
              text3: '06:45pm',
            ),
            ReuseRowNotificationScreen(
              image: Image.asset(
                'assets/Frame 3906 (1).png',
                height: 60,
                width: 60,
              ),
              text1: 'Medical Department Acknowledged your \n post',
              text2: 'Medical Emergency',
              text3: '03:45pm',
            ),
            ReuseRowNotificationScreen(
              image: Image.asset(
                'assets/Frame 3906.png',
                height: 60,
                width: 60,
              ),
              text1: 'Security Department Acknowledged your \n post',
              text2: 'Security Emergency',
              text3: '06:45pm',
            ),
            ReuseRowNotificationScreen(
              image: Image.asset(
                'assets/Frame 3906 (2).png',
                height: 60,
                width: 60,
              ),
              text1: 'You posted an Emergency',
              text2: 'Security Emergency',
              text3: '01:45pm',
            ),
            const Gap(10),
            Padding(
              padding: const EdgeInsets.only(
                top: 13.0,
                bottom: 13,
              ),
              child: Text(
                'Yesterday',
                style: GoogleFonts.inter(
                  textStyle: const TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 15,
                    color: Color.fromARGB(255, 26, 7, 153),
                  ),
                ),
              ),
            ),
            ReuseRowNotificationScreen(
              image: Image.asset(
                'assets/Frame 3906 (1).png',
                height: 60,
                width: 60,
              ),
              text1: 'Medical Department Acknowledged your \n post',
              text2: 'Medical Emergency',
              text3: '03:45pm',
            ),
            ReuseRowNotificationScreen(
              image: Image.asset(
                'assets/Frame 3906.png',
                height: 60,
                width: 60,
              ),
              text1: 'Security Department Acknowledged your \n post',
              text2: 'Security Emergency',
              text3: '06:45pm',
            ),
            ReuseRowNotificationScreen(
              image: Image.asset(
                'assets/Frame 3906 (2).png',
                height: 60,
                width: 60,
              ),
              text1: 'You posted an Emergency',
              text2: 'Security Emergency',
              text3: '01:45pm',
            ),
          ],
        ),
      ),
    );
  }
}
