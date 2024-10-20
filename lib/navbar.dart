// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:oau_emergency_1/constant.dart';
import 'package:oau_emergency_1/screens/home_screen.dart';
// import 'package:oau_emergency_1/home_screen.dart';

class Navbar extends StatefulWidget {
  const Navbar({super.key});
  static const routeName = '/navbar';

  @override
  State<Navbar> createState() => _NavbarState();
}

class _NavbarState extends State<Navbar> {
  final List<Widget> _screens = const [
    HomeScreen(),
    // NotificationsScreen(),
    // FavScreen(),
    // ProfileScreen(),
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
              icon: SvgPicture.asset(
                'assets/home.svg',
                color: selectedPageIndex == 0 ? navbarcolor : null,
              ),
              label: ''),
          BottomNavigationBarItem(
              icon: SvgPicture.asset(
                'assets/message-circle.svg',
                color: selectedPageIndex == 1 ? navbarcolor : null,
              ),
              label: ''),
          BottomNavigationBarItem(
              icon: SvgPicture.asset(
                'assets/heart.svg',
                color: selectedPageIndex == 2 ? navbarcolor : null,
              ),
              label: ''),
          BottomNavigationBarItem(
            icon: SvgPicture.asset(
              'assets/user.svg',
              color: selectedPageIndex == 3 ? navbarcolor : null,
            ),
            label: '',
          ),
        ],
      ),
    );
  }
}
