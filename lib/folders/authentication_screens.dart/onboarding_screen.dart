import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'package:oau_emergency_1/folders/resource_file.dart/constant.dart';
import 'package:oau_emergency_1/folders/authentication_screens.dart/signup_screen.dart';
import 'package:oau_emergency_1/folders/resource_file.dart/sharedpreference.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({super.key});

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  final introKey = GlobalKey<IntroductionScreenState>();
  @override
  Widget build(BuildContext context) {
    return IntroductionScreen(
      key: introKey,
      globalBackgroundColor: Colors.white,
      globalHeader: const Align(
        alignment: Alignment.topRight,
        child: SafeArea(
          child: Padding(
            padding: EdgeInsets.all(20),
          ),
        ),
      ),
      pages: [
        PageViewModel(
          image: Stack(
            clipBehavior: Clip.none,
            children: [
              Container(
                height: 230.0,
                width: 290.0,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: stackcolor,
                ),
              ),
              Positioned(
                bottom: -12,
                right: -12,
                child: Image.asset(
                  'assets/Frame 1020 (1).png',
                  alignment: Alignment.bottomCenter,
                  fit: BoxFit.cover,
                  height: 230.0,
                  width: 290,
                ),
              ),
            ],
          ),
          title:
              'Stay safe with instant \n emergency alerts and \nquick reporting',
          body:
              'Instantly call for help from the right\n authorities in time of emergency.',
          decoration: const PageDecoration(
            titleTextStyle: TextStyle(
              fontFamily: 'PlusJakartaSans',
              fontWeight: FontWeight.bold,
              fontSize: 28.0,
              color: Color(0xff8080BF),
            ),
            bodyTextStyle: TextStyle(
              fontFamily: 'PlusJakartaSans',
              color: Colors.black,
              fontWeight: FontWeight.w600,
              fontSize: 16.0,
            ),
            safeArea: 0,
            imageAlignment: Alignment.topCenter,
            imagePadding: EdgeInsets.only(top: 190),
            bodyAlignment: Alignment.center,
            titlePadding: EdgeInsets.only(bottom: 12.0),
            bodyPadding: EdgeInsets.only(bottom: 20, top: 30),
            pageColor: Colors.white,
            imageFlex: 4,
            bodyFlex: 3,
          ),
        ),
        PageViewModel(
          image: Stack(clipBehavior: Clip.none, children: [
            Container(
              height: 230.0,
              width: 290.0,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: stackcolor,
              ),
            ),
            Positioned(
              top: -12,
              left: -12,
              child: Image.asset(
                'assets/Frame 1020 (1).png',
                alignment: Alignment.bottomCenter,
                fit: BoxFit.cover,
                height: 230.0,
                width: 290,
              ),
            ),
          ]),
          title: 'Stay safe, Stay informed \n on campus',
          body:
              'Quickly report emergencies and receive\n campus safety alerts in real time',
          decoration: const PageDecoration(
            titleTextStyle: TextStyle(
              fontFamily: 'PlusJakartaSans',
              fontWeight: FontWeight.bold,
              fontSize: 28.0,
              color: Color(0xff8080BF),
            ),
            bodyTextStyle: TextStyle(
              fontFamily: 'PlusJakartaSans',
              color: Colors.black,
              fontWeight: FontWeight.w600,
              fontSize: 16.0,
            ),
            safeArea: 0,
            imageAlignment: Alignment.topCenter,
            imagePadding: EdgeInsets.only(top: 190),
            bodyAlignment: Alignment.center,
            titlePadding: EdgeInsets.only(bottom: 12.0),
            bodyPadding: EdgeInsets.only(bottom: 20, top: 30),
            pageColor: Colors.white,
            // imagePadding: EdgeInsets.zero,
            imageFlex: 4,
            bodyFlex: 3,
          ),
        ),
        PageViewModel(
          image: Stack(clipBehavior: Clip.none, children: [
            Container(
              height: 230.0,
              width: 290.0,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: stackcolor,
              ),
            ),
            Positioned(
              bottom: -12,
              right: -12,
              child: Image.asset(
                'assets/Frame 1020 (1).png',
                alignment: Alignment.bottomCenter,
                fit: BoxFit.cover,
                height: 230.0,
                width: 290,
              ),
            ),
          ]),
          title: 'Get alert and reporting \n at your finger tip.',
          body: 'Report emergencies and receive\n alerts with just a tap',
          decoration: const PageDecoration(
            titleTextStyle: TextStyle(
              fontFamily: 'PlusJakartaSans',
              fontWeight: FontWeight.bold,
              fontSize: 28.0,
              color: Color(0xff8080BF),
            ),
            bodyTextStyle: TextStyle(
                fontFamily: 'PlusJakartaSans',
                color: Colors.black,
                fontSize: 16.0,
                fontWeight: FontWeight.w600),
            safeArea: 0,
            imageAlignment: Alignment.topCenter,
            imagePadding: EdgeInsets.only(top: 190),
            bodyAlignment: Alignment.center,
            titlePadding: EdgeInsets.only(bottom: 12.0),
            bodyPadding: EdgeInsets.only(bottom: 20, top: 30),
            pageColor: Colors.white,
            imageFlex: 4,
            bodyFlex: 3,
          ),
        ),
      ],

      onDone: () {
        Navigator.of(context).pushReplacement(MaterialPageRoute(
          builder: (context) => const SignupScreen(),
        ));
        Shared.setSeenIntro(true);
      },
      onSkip: () {
        Navigator.of(context).pushReplacement(MaterialPageRoute(
          builder: (context) => const SignupScreen(),
        ));
        Shared.setSeenIntro(true);
      }, // You can override onSkip callback
      showSkipButton: true,
      // skipOrBackFlex: 0,
      // nextFlex: 0,
      showBackButton: false,
      //rtl: true, // Display as right-to-left
      back: const Icon(Icons.arrow_back),
      skip: const Text('Skip', style: headingTextStyle22),
      // nextStyle: ElevatedButton.styleFrom(
      //   alignment: Alignment.centerRight,
      // ),
      next: const CircleAvatar(
        radius: 25,
        backgroundColor: primarycolor,
        child: Icon(
          Icons.arrow_forward,
          color: whitecolor,
        ),
      ),
      done: const Text('Proceed', style: headingTextStyle22),

      doneStyle: TextButton.styleFrom(
        fixedSize: const Size(20, 90),
      ),
      // curve: Curves.fastLinearToSlowEaseIn,

      controlsMargin: const EdgeInsets.only(bottom: 20),
      // controlsPosition: Position(right: 5, ),
      controlsPadding: const EdgeInsets.all(0),
      // controlsPadding: kIsWeb
      //     ? const EdgeInsets.all(12.0)
      //     : const EdgeInsets.fromLTRB(8.0, 4.0, 8.0, 4.0),
      dotsDecorator: const DotsDecorator(
        size: Size(10.0, 10.0),
        color: Colors.black26,
        activeColor: primarycolor,
        activeSize: Size(30, 10),
        activeShape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(25),
          ),
        ),
      ),
    );
  }
}
