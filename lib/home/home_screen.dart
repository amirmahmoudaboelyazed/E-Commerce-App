import 'package:bottom_navy_bar/bottom_navy_bar.dart';
import 'package:flutter/material.dart';
import 'package:zahran_phone/home/programs.dart';
import 'package:zahran_phone/home/services.dart';
import 'package:zahran_phone/home/settings.dart';

import '../constants/my_colors.dart';
import 'home.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final GlobalKey<ScaffoldState> _globalKey = GlobalKey<ScaffoldState>();
  List screens = [
    const Home(),
    const Programs(),
    const Services(),
    const Settings()
  ];
  int _currentIndex = 0;
  PageController? _pageController;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _globalKey,
      body: screens[_currentIndex],
      bottomNavigationBar: BottomNavyBar(
        selectedIndex: _currentIndex,
        onItemSelected: (index) {
          setState(() => _currentIndex = index);
          _pageController?.jumpToPage(index);
        },
        items: <BottomNavyBarItem>[
          BottomNavyBarItem(
              title: const Text('Home'),
              icon: const Icon(Icons.home),
              inactiveColor: MyColors.myGreen,
              activeColor: MyColors.myDarkGreen),
          BottomNavyBarItem(
              title: const Text('Programs'),
              icon: const Icon(Icons.apps),
              inactiveColor: MyColors.myGreen,
              activeColor: MyColors.myDarkGreen),
          BottomNavyBarItem(
              title: const Text('Services'),
              icon: const Icon(Icons.home_repair_service),
              inactiveColor: MyColors.myGreen,
              activeColor: MyColors.myDarkGreen),
          BottomNavyBarItem(
              title: const Text('Setting'),
              icon: const Icon(Icons.settings),
              inactiveColor: MyColors.myGreen,
              activeColor: MyColors.myDarkGreen),
        ],
      ),
    );
  }
}
