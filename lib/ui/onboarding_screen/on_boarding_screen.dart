import 'package:flutter/material.dart';
import 'package:flutter_onboarding_screen/OnbordingData.dart';
import 'package:flutter_onboarding_screen/flutteronboardingscreens.dart';
import 'package:zahran_phone/ui/layout_home/home_screen/home_screen.dart';

class OnBoardingScreen extends StatelessWidget {
  OnBoardingScreen({Key? key}) : super(key: key);
  final List<OnbordingData> list = [
    OnbordingData(
      imagePath: "assets/logo.png",
      title: "Search",
      desc:
          "Discover restaurants by type of meal, See menus and photos for nearby restaurants and bookmark your favorite places on the go",
    ),
    OnbordingData(
      imagePath: "assets/logo.png",
      title: "Order",
      desc:
          "Best restaurants delivering to your doorstep, Browse menus and build your order in seconds",
    ),
    OnbordingData(
      imagePath: "assets/logo.png",
      title: "Eat",
      desc:
          "Explore curated lists of top restaurants, cafes, pubs, and bars in Mumbai, based on trends.",
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IntroScreen(
          list, MaterialPageRoute(builder: (context) => const HomeScreen())),
    );
  }
}
