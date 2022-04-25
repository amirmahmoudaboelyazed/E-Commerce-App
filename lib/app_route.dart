import 'package:flutter/material.dart';
import 'package:zahran_phone/ui/layout_home/home_screen.dart';
import 'package:zahran_phone/ui/splash/splash.dart';

import 'constants/my_strings.dart';

class AppRouters {
  Route? generateRouter(RouteSettings settings) {
    switch (settings.name) {
      case MyStrings.splash:
        return MaterialPageRoute(builder: (_) => const SplashScreen());
      case MyStrings.homeScreen:
        return MaterialPageRoute(builder: (_) => const HomeScreen());
    }
    return null;
  }
}
