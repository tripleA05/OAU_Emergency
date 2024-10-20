import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gap/gap.dart';
import 'package:oau_emergency_1/constant.dart';
import 'package:dotted_border/dotted_border.dart';
import 'package:oau_emergency_1/constant.dart';
// import 'package:oau_emergency_1/reuse_textfield.dart';
import 'package:oau_emergency_1/reuse_textfield2.dart';

class ReportScreen2 extends StatelessWidget {
  const ReportScreen2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(
          right: 24,
          left: 24,
          top: 15,
          bottom: 10,
        ),
        child: ListView(
          children: [
            Row(
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
            const Gap(35),
            Padding(
              padding: const EdgeInsets.only(
                  // left: 45,
                  // right: 45,
                  ),
              child: Stack(
                alignment: Alignment.center,
                children: [
                  Container(
                    height: 220,
                    width: 260,
                    decoration: BoxDecoration(
                      color: whitecolor,
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(
                        width: 2,
                        color: greycolor2,
                      ),
                    ),
                  ),
                  // Container(
                  //   height: 200,
                  //   width: 240,
                  //   decoration: BoxDecoration(
                  //     color: whitecolor,
                  //     borderRadius: BorderRadius.circular(10),
                  //     border: Border.all(
                  //       width: 2,
                  //       color: greycolor2,
                  //     ),
                  //   ),
                  //   child: Column(
                  //     // crossAxisAlignment: CrossAxisAlignment.center,
                  //     // mainAxisAlignment: MainAxisAlignment.start,
                  //     children: [
                  //       // Gap(40),
                  //       Padding(
                  //         padding: const EdgeInsets.only(
                  //           top: 40.0,
                  //           bottom: 10,
                  //         ),
                  //         child: Image.asset(
                  //           'assets/CloudUpload.png',
                  //           height: 80,
                  //           width: 80,
                  //         ),
                  //       ),
                  //       Gap(10),
                  //       Container(
                  //         decoration: BoxDecoration(
                  //           borderRadius: BorderRadius.circular(10),
                  //           color: const Color(0xffE2E8F0),
                  //         ),
                  //         height: 42,
                  //         width: 120,
                  //         child: TextButton(
                  //           onPressed: () {},
                  //           child: Text(
                  //             'Upload Image',
                  //             style: interStyle14,
                  //           ),
                  //         ),
                  //       ),
                  //     ],
                  //   ),
                  // ),
                  DottedBorder(
                    dashPattern: const [6, 10],
                    color: greycolor2,
                    borderType: BorderType.RRect,
                    radius: const Radius.circular(10),
                    // padding: EdgeInsets.all(6),
                    child: ClipRRect(
                      borderRadius: const BorderRadius.all(Radius.circular(12)),
                      child: SizedBox(
                        height: 190,
                        width: 230,
                        // decoration: BoxDecoration(
                        //   color: whitecolor,
                        //   borderRadius: BorderRadius.circular(10),
                        //   border: Border.all(
                        //     width: 2,
                        //     color: greycolor2,
                        //   ),
                        // ),
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
                            const Gap(10),
                            Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: const Color(0xffE2E8F0),
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
            // Container(
            //   width: MediaQuery.of(context).size.width,
            //   height: 117,
            //   decoration: BoxDecoration(
            //     color: whitecolor,
            //     borderRadius: BorderRadius.circular(10),
            //     border: Border.all(
            //       width: 2,
            //       color: greycolor2,
            //     ),
            //   ),
            //   child: Padding(
            //     padding: const EdgeInsets.all(8.0),
            //     child: Text(
            //       'Additional Description  (Optional)',
            //       style: greyTextStyle2,
            //     ),
            //   ),
            // ),
            // TextField(
            //   decoration: InputDecoration(
            //     border: OutlineInputBorder(
            //       borderRadius: BorderRadius.circular(10),

            //     ),

            //   ),
            // )
            TextField(
              // controller: textEditingController,
              keyboardType: TextInputType.name,
              style: const TextStyle(
                fontWeight: FontWeight.w600,
                fontSize: 18,
              ),
              decoration: InputDecoration(
                hintText: 'please enter amount in USD',
                hintStyle: const TextStyle(
                  fontSize: 18,
                ),
                prefixIcon: const Icon(
                  Icons.monetization_on,
                  size: 30.0,
                ),
                prefixIconColor: Colors.black,
                filled: true,
                fillColor: Colors.white,
                // focusedBorder: border,
                // enabledBorder: border,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
