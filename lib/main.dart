import 'package:flutter/material.dart';
import 'package:flutter_statusbarcolor_ns/flutter_statusbarcolor_ns.dart';
import 'package:zahran_phone/constants/my_colors.dart';
import 'app_route.dart';

void main() {
  runApp(MyApp(
    appRouters: AppRouters(),
  ));
}

class MyApp extends StatelessWidget {
  final AppRouters appRouters;
  const MyApp({Key? key, required this.appRouters}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    FlutterStatusbarcolor.setStatusBarColor(MyColors.myDarkGreen);
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      onGenerateRoute: appRouters.generateRouter,
    );
  }
}
