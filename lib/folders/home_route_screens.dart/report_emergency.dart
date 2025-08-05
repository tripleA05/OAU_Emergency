import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:oau_emergency_1/folders/home_route_screens.dart/navbar.dart';
import 'package:oau_emergency_1/folders/resource_file.dart/constant.dart';
import 'package:oau_emergency_1/folders/home_route_screens.dart/report_screen2.dart';

class ReportScreen extends StatelessWidget {
  const ReportScreen({super.key});

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
        leadingWidth: 60,
      ),
      // appBar: AppBar(
      //   elevation: 0,
      //   title:
      // ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(
            left: 12.0,
            right: 12,
            top: 15,
          ),
          child: Column(
            children: [
              Center(
                child: Text(
                  'Report\nEmergency',
                  style: interStyle20,
                  textAlign: TextAlign.center,
                ),
              ),
              const Gap(54),
              InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const ReportScreen2(),
                    ),
                  );
                },
                child: Stack(
                  children: [
                    Image.asset(
                      'assets/Fire Incident.jpg',
                      width: 326,
                      height: 100,
                    ),
                    Positioned(
                      bottom: 5,
                      left: 5,
                      child: Text(
                        'Fire\nIncident',
                        style: interStylewhite16,
                      ),
                    ),
                  ],
                ),
              ),
              const Gap(44),
              InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const ReportScreen2(),
                    ),
                  );
                },
                child: Stack(
                  children: [
                    Image.asset(
                      'assets/Medical Incident (1).png',
                      width: 326,
                      height: 100,
                    ),
                    Positioned(
                      bottom: 5,
                      left: 5,
                      child: Text(
                        'Medical\nIncident',
                        style: interStylewhite16,
                      ),
                    ),
                  ],
                ),
              ),
              const Gap(44),
              InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const ReportScreen2(),
                    ),
                  );
                },
                child: Stack(
                  children: [
                    Image.asset(
                      'assets/Security Incident (1).png',
                      width: 326,
                      height: 100,
                    ),
                    Positioned(
                      bottom: 5,
                      left: 5,
                      child: Text(
                        'Security\nIncident',
                        style: interStylewhite16,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
