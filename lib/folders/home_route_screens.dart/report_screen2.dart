import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
// import 'package:oau_emergency_1/folders/home_route_screens.dart/home_screen.dart';
// import 'package:google_fonts/google_fonts.dart';
// import 'package:oau_emergency_1/folders/home_route_screens.dart/navbar.dart';
// import 'package:oau_emergency_1/folders/home_route_screens.dart/report_emergency.dart';
import 'package:oau_emergency_1/folders/resource_file.dart/constant.dart';
import 'package:dotted_border/dotted_border.dart';
import 'package:oau_emergency_1/folders/resource_file.dart/reuse_textbutton.dart';
import 'package:oau_emergency_1/folders/resource_file.dart/reuse_textfield2.dart';

class ReportScreen2 extends StatelessWidget {
  const ReportScreen2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
            // Navigator.push(
            //   context,
            //   MaterialPageRoute(
            //     builder: (context) => const HomeScreen(),
            //   ),
            // );
          },
          icon: const Icon(
            Icons.arrow_back_rounded,
            color: Color.fromARGB(255, 26, 7, 153),
          ),
        ),
        backgroundColor: whitecolor,
        leadingWidth: 60,
      ),
      body: Padding(
        padding: const EdgeInsets.only(
          right: 24,
          left: 24,
          bottom: 10,
          top: 24,
        ),
        child: ListView(
          children: [
            Stack(
              alignment: Alignment.center,
              children: [
                Container(
                  height: 203,
                  width: 237,
                  decoration: BoxDecoration(
                    color: whitecolor,
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(
                      width: 2,
                      color: greycolor2,
                    ),
                  ),
                ),
                DottedBorder(
                  dashPattern: const [6, 10],
                  color: greycolor2,
                  borderType: BorderType.RRect,
                  radius: const Radius.circular(10),
                  // padding: EdgeInsets.all(6),
                  child: ClipRRect(
                    borderRadius: const BorderRadius.all(Radius.circular(12)),
                    child: SizedBox(
                      height: 183,
                      width: 217,
                      child: Column(
                        // crossAxisAlignment: CrossAxisAlignment.center,
                        // mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          // Gap(40),
                          Padding(
                            padding: const EdgeInsets.only(
                              top: 40.0,
                              bottom: 10,
                            ),
                            child: Image.asset(
                              'assets/CloudUpload.png',
                              height: 80,
                              width: 80,
                            ),
                          ),
                          const Gap(2),
                          Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: const Color(0xff8080BF),
                            ),
                            height: 42,
                            width: 120,
                            child: TextButton(
                              onPressed: () {},
                              child: Text(
                                'Upload Image',
                                style: interStyle14,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
            const Gap(45),
            const ReuseTextfield2(
                hintText: 'Along Anglomoz',
                prefixIcon: Icon(
                  Icons.location_on_sharp,
                  size: 30,
                ),
                //     Image.asset(
                //   'assets/PinMap.png',
                //   height: 50,
                //   width: 50,
                // ),
                obscureText: false),
            const Gap(19),
            const ReuseTextfield2(
              hintText: '23rd, October, 2014',
              prefixIcon: Icon(Icons.calendar_month_rounded),
              obscureText: false,
            ),
            const Gap(19),
            const ReuseTextfield2(
                hintText: '5:00pm',
                prefixIcon: Icon(Icons.alarm),
                obscureText: false),
            const Gap(19),
            TextField(
              maxLines: 4,
              keyboardType: TextInputType.name,
              decoration: InputDecoration(
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: const BorderSide(color: greycolor2),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: const BorderSide(color: primarycolor, width: 1),
                ),
                hintText:
                    'Additional Description  (Optional) \n ie. A robbery case',
                hintStyle: greyTextStyle2,
              ),
            ),
            const Gap(38),
            ReuseTextButton(text: 'Report', onPressed: () {})
          ],
        ),
      ),
    );
  }
}
