import 'package:bottom_navy_bar/bottom_navy_bar.dart';
import 'package:flutter/material.dart';

import '../../../constants/my_colors.dart';

bottomNavyBarItem(text, icon) {
  return BottomNavyBarItem(
      title: Text(text),
      icon: Icon(icon),
      inactiveColor: MyColors.myGreen,
      activeColor: MyColors.myDarkGreen);
}
