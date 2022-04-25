import 'package:flutter/material.dart';

import '../../../constants/my_colors.dart';

Widget loginTextFormField({controller, prefixIcon, labelText}) {
  return TextFormField(
    textAlign: TextAlign.right,
    controller: controller,
    textDirection: TextDirection.rtl,
    keyboardType: TextInputType.emailAddress,
    decoration: InputDecoration(
      prefixIcon: Icon(
        prefixIcon,
        color: MyColors.myWhiteGreen,
      ),
      hintTextDirection: TextDirection.rtl,
      border: OutlineInputBorder(),
      focusedBorder: OutlineInputBorder(
        borderSide: BorderSide(color: MyColors.myWhiteGreen),
      ),
      labelText: labelText,
      labelStyle: TextStyle(color: MyColors.myWhiteGreen),
      alignLabelWithHint: true,
    ),
  );
}
