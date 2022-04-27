import 'package:flutter/material.dart';

import '../../../../../constants/my_colors.dart';

Widget upperTitleRow(
  controller,
) {
  return Container(
    height: 80,
    child: Padding(
      padding: const EdgeInsets.only(top: 20, right: 10, left: 10),
      child: Row(
        children: [
          Expanded(
              flex: 9,
              child: TextFormField(
                textAlign: TextAlign.right,
                controller: controller,
                textDirection: TextDirection.rtl,
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration(
                  filled: true,
                  prefixIcon: Icon(
                    Icons.search_sharp,
                    color: MyColors.myWhiteGreen,
                  ),
                  hintTextDirection: TextDirection.rtl,
                  border: OutlineInputBorder(),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: MyColors.myWhiteGreen),
                  ),
                  labelText: "بحث",
                  labelStyle: TextStyle(color: MyColors.myWhiteGreen),
                  alignLabelWithHint: true,
                ),
              )),
          Expanded(flex: 1, child: Container()),
          const Icon(
            Icons.notifications_none_outlined,
            size: 33,
            color: MyColors.myGreen,
          ),
          // Expanded(
          //   child: Directionality(
          //     textDirection: TextDirection.ltr,
          //     child: Row(
          //       children: [
          //         ClipRRect(
          //           borderRadius: BorderRadius.circular(7),
          //           child: Image.asset(
          //             image,
          //             fit: BoxFit.fill,
          //             width: 45,
          //             height: 50,
          //           ),
          //         ),
          //         Padding(
          //           padding: const EdgeInsets.only(left: 5),
          //           child: Column(
          //             crossAxisAlignment: CrossAxisAlignment.start,
          //             children: [
          //               Text(
          //                 "Hello",
          //                 style: TextStyle(fontSize: 13, color: Colors.grey),
          //               ),
          //               Text(
          //                 name,
          //                 style: TextStyle(
          //                     fontSize: 14, color: MyColors.myDarkGreen),
          //               ),
          //             ],
          //           ),
          //         )
          //       ],
          //     ),
          //   ),
          // ),
        ],
      ),
    ),
  );
}
