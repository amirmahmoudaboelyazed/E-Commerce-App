import 'package:flutter/material.dart';

import 'mycard.dart';

Widget techInfo() {
  return Column(
    children: [
      Row(
        children: [
          Expanded(
              child: myCard("assets/desktop.jpg", "تطوير تطبيقات سطح المكتب")),
          SizedBox(
            width: 10,
          ),
          Expanded(child: myCard("assets/mobile.png", "تطوير تطبيقات الجوال")),
        ],
      ),
      Row(
        children: [
          Expanded(child: myCard("assets/web.jpg", "تطوير المواقع")),
          SizedBox(
            width: 10,
          ),
          Expanded(child: myCard("assets/ui.png", "إستراتيجية UI / UX")),
        ],
      )
    ],
  );
}
