import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

Widget loginLottieImg(lottieFile) {
  return Expanded(
      child: Lottie.asset(
    lottieFile,
  ));
}
