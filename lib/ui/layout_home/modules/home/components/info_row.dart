import 'package:flutter/material.dart';

import '../../../../../constants/my_colors.dart';

Widget infoRow(context) {
  return Padding(
    padding: const EdgeInsets.only(top: 20),
    child: Container(
      decoration: const BoxDecoration(
          color: MyColors.myWhiteGreen,
          borderRadius: BorderRadius.all(Radius.circular(20))),
      width: MediaQuery.of(context).size.width - 25,
      height: 140,
      child: Image.asset("assets/descount.png", fit: BoxFit.fill),
    ),
  );
}
