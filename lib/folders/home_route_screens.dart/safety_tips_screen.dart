import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:oau_emergency_1/folders/resource_file.dart/constant.dart';
import 'package:oau_emergency_1/folders/home_route_screens.dart/navbar.dart';
import 'package:oau_emergency_1/folders/home_route_screens.dart/home_screen.dart';

class SafetyTips extends StatelessWidget {
  const SafetyTips({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 80,
        centerTitle: true,
        title: Text(
          'Safety Tips',
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
      body: Padding(
        padding: const EdgeInsets.fromLTRB(24, 20, 24, 10),
        child: ListView(
          children: const [
            reuseHomecontainer(),
            reuseHomecontainer(),
            reuseHomecontainer(),
            reuseHomecontainer(),
            reuseHomecontainer(),
            reuseHomecontainer(),
            reuseHomecontainer(),
            reuseHomecontainer(),
            reuseHomecontainer(),
          ],
        ),
      ),
    );
  }
}
