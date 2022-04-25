import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:zahran_phone/constants/my_colors.dart';

Widget myCard(String image, String description) {
  return Container(
    height: 250,
    child: Card(
      elevation: 10,
      child: Column(
        children: [
          Image.asset(
            image,
            width: double.infinity,
            fit: BoxFit.fill,
            height: 200,
          ),
          Expanded(
            child: Container(
              width: double.infinity,
              color: MyColors.myWhite,
              child: Center(
                  child: Text(
                description,
                style: TextStyle(color: MyColors.myDarkGreen),
              )),
            ),
          )
        ],
      ),
    ),
  );
}
