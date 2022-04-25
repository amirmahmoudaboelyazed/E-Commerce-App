import 'package:flutter/material.dart';

Widget logoWidget(context) {
  return Center(
      child: Padding(
    padding: const EdgeInsets.only(right: 50),
    child: Image.asset(
      "assets/logo.png",
      width: MediaQuery.of(context).size.width - 80,
    ),
  ));
}
