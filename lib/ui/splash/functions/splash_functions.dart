import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:zahran_phone/constants/my_strings.dart';

class SplashFunctions {
  static void navigateTo(context) {
    Future.delayed(const Duration(seconds: 2), () {
      Navigator.popAndPushNamed(context, MyStrings.homeScreen);
    });
  }
}
