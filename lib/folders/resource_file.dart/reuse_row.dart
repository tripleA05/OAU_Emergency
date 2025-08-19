import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:oau_emergency_1/folders/resource_file.dart/constant.dart';

class ReuseRowNotificationScreen extends StatelessWidget {
  const ReuseRowNotificationScreen({
    super.key,
    required this.image,
    required this.text1,
    required this.text2,
    required this.text3,
  });
  final Image image;
  final String text1;
  final String text2;
  final String text3;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 20.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(
              right: 20,
            ),
            child: image,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                text1,
                style: GoogleFonts.inter(
                  textStyle: const TextStyle(
                    fontWeight: FontWeight.w800,
                    fontSize: 13,
                    color: Color.fromARGB(126, 0, 0, 0),
                  ),
                ),
              ),
              Text(
                text2,
                style: GoogleFonts.poppins(
                  textStyle: const TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: 10,
                    color: Color(0xff878787),
                  ),
                ),
              ),
              Text(
                text3,
                style: GoogleFonts.inter(
                  textStyle: const TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 11,
                    color: Color.fromARGB(126, 0, 0, 0),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class ReuseRowProfileScreen extends StatefulWidget {
  const ReuseRowProfileScreen({
    super.key,
    required this.image,
    required this.text1,
    required this.text2,
    required this.text3,
    // required this.iconButton,
    required this.isAcknowledged,
  });

  final Image image;
  final String text1;
  final String text2;
  final String text3;
  final bool isAcknowledged;

  @override
  State<ReuseRowProfileScreen> createState() => _ReuseRowProfileScreenState();
}

class _ReuseRowProfileScreenState extends State<ReuseRowProfileScreen> {
  var changedbox = const Icon(
    Icons.check_box_outline_blank,
    color: Color.fromARGB(255, 33, 5, 137),
  );

  bool isChanged = true;

  // final Widget iconButton;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 14.0),
      child: SizedBox(
        width: MediaQuery.of(context).size.width,
        height: 86,
        child: Card(
          color: Colors.white,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
          elevation: 2.0,
          child: ClipRRect(
            borderRadius: BorderRadius.circular(10.0),
            child: BackdropFilter(
              filter: ImageFilter.blur(),
              child: Padding(
                padding: const EdgeInsets.all(5.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    SizedBox(
                      height: 63,
                      width: 63,
                      child: widget.image,
                    ),

                    const Gap(15),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          widget.text1,
                          style: GoogleFonts.inter(
                            textStyle: const TextStyle(
                              fontWeight: FontWeight.w500,
                              fontSize: 12,
                              color: blackcolor,
                            ),
                          ),
                        ),
                        Text(
                          widget.text2,
                          style: GoogleFonts.poppins(
                            textStyle: const TextStyle(
                              fontWeight: FontWeight.w400,
                              fontSize: 10,
                              color: blackcolor,
                            ),
                          ),
                        ),
                        SizedBox(
                          width: Get.width * 0.5,
                          child: Text(
                            widget.text3,
                            style: GoogleFonts.inter(
                              textStyle: const TextStyle(
                                fontWeight: FontWeight.w600,
                                fontSize: 10,
                                color: blackcolor,
                              ),
                            ),
                            overflow: TextOverflow.clip,
                          ),
                        ),
                      ],
                    ),
                    // const Gap(50),
                    const Spacer(),
                    // IconButton(
                    //   onPressed: () {
                    //     setState(() {
                    //       isChanged = !isChanged;
                    //     });
                    //     if (isChanged) {
                    //       changedbox = const Icon(
                    //         Icons.check_box_outline_blank,
                    //         color: Color.fromARGB(255, 23, 6, 138),
                    //       );
                    //     } else {
                    //       changedbox = const Icon(
                    //         Icons.check_box,
                    //         color: Color.fromARGB(255, 32, 7, 142),
                    //       );
                    //     }
                    //   },
                    //   icon: changedbox,
                    // ),
                    Container(
                      // height: 5,
                      width: 20,
                      decoration: BoxDecoration(
                        color: widget.isAcknowledged
                            ? const Color.fromARGB(255, 32, 7, 142)
                            : Colors.transparent,
                        borderRadius: BorderRadius.circular(2),
                        border: Border.all(
                          color: const Color.fromARGB(255, 32, 7, 142),
                        ),
                      ),
                      // child: widget.isAcknowledged
                      //     ? const Icon(
                      //         Icons.check,
                      //         color: Colors.white,
                      //       )
                      //     : null,
                    ),
                    // iconButton,
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
