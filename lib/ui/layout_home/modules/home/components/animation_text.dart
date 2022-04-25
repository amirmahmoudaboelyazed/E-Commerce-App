import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';

Widget animationText(context) {
  return Container(
    height: 100,
    width: MediaQuery.of(context).size.width,
    child: DefaultTextStyle(
      style: const TextStyle(
          fontSize: 23.0, fontFamily: 'Canterbury', color: Colors.red),
      child: Center(
        child: AnimatedTextKit(
          repeatForever: true,
          animatedTexts: [
            ScaleAnimatedText(
              'ندعم اكثر من 2000 عميل بتطبيقات زهران\n لتقنية المعلومات',
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    ),
  );
}
