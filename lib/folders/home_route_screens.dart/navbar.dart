// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:oau_emergency_1/folders/resource_file.dart/constant.dart';
import 'package:oau_emergency_1/folders/home_route_screens.dart/contact_admin_screen.dart';
import 'package:oau_emergency_1/folders/home_route_screens.dart/profile_screen.dart';
import 'package:oau_emergency_1/folders/home_route_screens.dart/home_screen.dart';
// import 'package:oau_emergency_1/home_screen.dart';

class Navbar extends StatefulWidget {
  const Navbar({super.key});
  static const routeName = '/navbar';

  @override
  State<Navbar> createState() => _NavbarState();
}

class _NavbarState extends State<Navbar> {
  final List<Widget> _screens = [
    HomeScreen(),
    ContactAdminScreen(),
    ProfileScreen(),
  ];

  int selectedPageIndex = 0;

  void selectPage(int index) {
    setState(() {
      selectedPageIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _screens[selectedPageIndex],
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: whitecolor,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        selectedIconTheme: const IconThemeData(size: 40),
        unselectedIconTheme: const IconThemeData(size: 20),
        selectedFontSize: 16,
        unselectedFontSize: 16,
        currentIndex: selectedPageIndex,
        onTap: (index) {
          setState(() {
            selectedPageIndex = index;
          });
        },
        items: [
          BottomNavigationBarItem(
              icon: Icon(
                Icons.home_outlined, size: 25,
                // SvgPicture.asset(
                //   'assets/home.svg',
                color: selectedPageIndex == 0 ? primarycolor : null,
              ),
              label: ''),
          BottomNavigationBarItem(
              icon: SvgPicture.asset(
                'assets/Contact Icon.svg',
                height: 25,
                width: 25,
                color: selectedPageIndex == 1 ? primarycolor : null,
              ),
              label: ''),
          BottomNavigationBarItem(
            icon: SvgPicture.asset(
              'assets/user.svg',
              height: 25,
              width: 25,
              color: selectedPageIndex == 2 ? primarycolor : null,
            ),
            label: '',
          ),
        ],
      ),
    );
  }
}
