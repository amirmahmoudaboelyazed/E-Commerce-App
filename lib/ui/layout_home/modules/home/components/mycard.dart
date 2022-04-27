import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:zahran_phone/constants/my_colors.dart';
import 'package:zahran_phone/ui/layout_home/modules/home/components/my_space.dart';

Widget myCard(String image, String title, String description) {
  return Container(
    height: 350,
    child: Card(
      elevation: 10,
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 20),
            child: Image.asset(
              image,
              width: 80,
              height: 80,
            ),
          ),
          mySpace(height: 20.0),
          Container(
            width: double.infinity,
            child: Center(
                child: Text(
              title,
              style: TextStyle(color: MyColors.myDarkGreen),
            )),
          ),
          Expanded(
            child: Container(
                width: double.infinity,
                color: MyColors.myWhite,
                child: Text(
                  description,
                  textAlign: TextAlign.center,
                  style: TextStyle(color: MyColors.myDarkGreen),
                )),
          ),
        ],
      ),
    ),
  );
}
