import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:oau_emergency_1/constant.dart';

class ReportScreen extends StatelessWidget {
  const ReportScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: Row(
          children: [
            IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: const Icon(
                Icons.arrow_back_ios,
                color: primarycolor,
                size: 20.0,
              ),
            ),
            // Gap(5),
            Text(
              'Back',
              style: interStyle16,
            ),
          ],
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.only(
          left: 24.0,
          right: 24,
          top: 30,
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
            Stack(
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
                    'Medical\nIncident',
                    style: interStylewhite16,
                  ),
                ),
              ],
            ),
            const Gap(44),
            Stack(
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
            const Gap(44),
            Stack(
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
                    'Medical\nIncident',
                    style: interStylewhite16,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
