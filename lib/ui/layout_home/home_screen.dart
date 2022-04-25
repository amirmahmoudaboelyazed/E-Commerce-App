import 'package:bottom_navy_bar/bottom_navy_bar.dart';
import 'package:flutter/material.dart';
import 'package:zahran_phone/ui/layout_home/modules/programs/programs.dart';
import 'package:zahran_phone/ui/layout_home/modules/services/services.dart';
import 'package:zahran_phone/ui/layout_home/modules/settings/settings.dart';
import 'components/bottom_navy_bar_item.dart';
import 'modules/home/home.dart';

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
      bottomNavigationBar: Directionality(
        textDirection: TextDirection.rtl,
        child: BottomNavyBar(
          selectedIndex: _currentIndex,
          onItemSelected: (index) {
            setState(() => _currentIndex = index);
            _pageController?.jumpToPage(index);
          },
          items: <BottomNavyBarItem>[
            bottomNavyBarItem('الرئيسة', Icons.home),
            bottomNavyBarItem('برامجنا', Icons.apps),
            bottomNavyBarItem('خدمتنا', Icons.home_repair_service),
            bottomNavyBarItem('الاعدادات', Icons.settings),
          ],
        ),
      ),
    );
  }
}
