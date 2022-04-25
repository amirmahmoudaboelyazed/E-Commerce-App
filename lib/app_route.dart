import 'package:flutter/material.dart';
import 'package:zahran_phone/ui/layout_home/home_screen/home_screen.dart';
import 'package:zahran_phone/ui/log_in/login/login.dart';
import 'package:zahran_phone/ui/log_in/register/register.dart';
import 'package:zahran_phone/ui/onboarding_screen/on_boarding_screen.dart';
import 'package:zahran_phone/ui/splash/splash.dart';

import 'constants/my_strings.dart';

class AppRouters {
  Route? generateRouter(RouteSettings settings) {
    switch (settings.name) {
      case MyStrings.splash:
        return MaterialPageRoute(builder: (_) => const SplashScreen());
      case MyStrings.homeScreen:
        return MaterialPageRoute(builder: (_) => const HomeScreen());
      case MyStrings.onBoardingScreen:
        return MaterialPageRoute(builder: (_) => OnBoardingScreen());
      case MyStrings.loginScreen:
        return MaterialPageRoute(builder: (_) => Login());
      case MyStrings.signInScreen:
        return MaterialPageRoute(builder: (_) => SignIn());
    }
    return null;
  }
}
