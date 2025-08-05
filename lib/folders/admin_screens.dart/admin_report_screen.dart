import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';
// import 'package:oau_emergency_1/folders/home_route_screens.dart/navbar.dart';
import 'package:oau_emergency_1/folders/resource_file.dart/constant.dart';

class AdminReport extends StatefulWidget {
  const AdminReport({super.key});

  @override
  State<AdminReport> createState() => _AdminReportState();
}

class _AdminReportState extends State<AdminReport> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      initialIndex: 0,
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          toolbarHeight: 80,
          backgroundColor: primarycolor,
          automaticallyImplyLeading: false,
          title: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Welcome Back',
                  style: GoogleFonts.inter(
                    textStyle: const TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w300,
                      color: whitecolor,
                    ),
                  ),
                ),
                const Gap(7),
                Text(
                  'Admin',
                  style: GoogleFonts.inter(
                    textStyle: const TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.w800,
                      color: whitecolor,
                    ),
                  ),
                ),
              ],
            ),
          ),
          bottom: TabBar(
            // indicator: BoxDecoration(
            //   borderRadius: BorderRadius.circular(20),
            //   color: primarycolor,
            // ),
            tabs: [
              Tab(
                child: Container(
                  height: 50,
                  width: 150,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: whitecolor,
                  ),
                  child: Center(
                    child: Text(
                      'Reports',
                      style: GoogleFonts.inter(
                        textStyle: const TextStyle(
                          color: primarycolor,
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              Tab(
                child: Container(
                  height: 50,
                  width: 150,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: whitecolor,
                  ),
                  child: Center(
                    child: Text(
                      'Safety Tips',
                      style: GoogleFonts.inter(
                        textStyle: const TextStyle(
                          color: primarycolor,
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
        body: const TabBarView(
          children: [
            Center(
              child: Text('report'),
            ),
            Center(
              child: Text('safety tips'),
            ),
          ],
        ),
      ),
    );
  }
}
