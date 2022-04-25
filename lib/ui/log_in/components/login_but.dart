import 'package:flutter/material.dart';
import '../../../constants/my_colors.dart';

Widget logInBut(context, function, butText) {
  return SizedBox(
    width: MediaQuery.of(context).size.width - 70,
    child: ElevatedButton(
        style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all<Color>(MyColors.myGreen),
            shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(18.0),
                    side: const BorderSide(color: Colors.green)))),
        onPressed: function,
        child: Text(
          butText,
          style: const TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
        )),
  );
}
