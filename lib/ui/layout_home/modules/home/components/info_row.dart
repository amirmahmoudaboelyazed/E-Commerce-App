import 'package:flutter/material.dart';

import '../../../../../constants/my_colors.dart';

Widget infoRow(context) {
  return Padding(
    padding: const EdgeInsets.only(top: 20),
    child: Container(
      width: MediaQuery.of(context).size.width - 25,
      height: 140,
      child: Card(
        color: MyColors.myWhiteGreen,
        elevation: 10,
        child: Row(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Text(
                    "شركة زهران لتصميم كافه",
                    style: TextStyle(fontSize: 21, color: Colors.white),
                  ),
                  Text(
                    "الانظمه البرمجية",
                    style: TextStyle(fontSize: 21, color: Colors.white),
                  ),
                  Text(
                    "التي تناسب احتياجاتك",
                    style: TextStyle(fontSize: 21, color: Colors.white),
                  ),
                ],
              ),
            ),
            SizedBox(
              width: 50,
            ),
            Expanded(
              child: Image.asset(
                "assets/logo.png",
                height: 100,
                width: 100,
              ),
            ),
          ],
        ),
      ),
    ),
  );
}
