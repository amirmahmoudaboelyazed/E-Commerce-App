import 'package:flutter/material.dart';
import 'package:flutter_onboarding_screen/OnbordingData.dart';
import 'package:flutter_onboarding_screen/flutteronboardingscreens.dart';
import 'package:zahran_phone/ui/log_in/home_login/home_login.dart';

class OnBoardingScreen extends StatelessWidget {
  OnBoardingScreen({Key? key}) : super(key: key);
  final List<OnbordingData> list = [
    OnbordingData(
      imagePath: "assets/home_design.json",
      title: "تطوير سطح المكتب",
      desc:
          "  يمكننا إنشاء تطبيق سطح المكتب بواجهة مستخدم واضحة بتصاميم ذكية ، ويمكننا أن نجعل نظامك سهلأ وسريعا ودقيقا ",
    ),
    OnbordingData(
      imagePath: "assets/mobile_develop.json",
      title: "تطوير تطبيقات الموبيل",
      desc:
          "   يمكننا إنشاء تطبيق Smart Mobile لنظامي  Android و IOS  ، والذي يمكن تشغيله  لجميع الأجهزة ، لجميع أنواع المنظمات والأشخاص والشركات",
    ),
    OnbordingData(
      imagePath: "assets/web.json",
      title: "تطوير المواقع الالكترونيه",
      desc:
          " يمكن نا إنشاء مواقع ويب وتطبيقات ويب ذكية بمواضيع مثالية وأمان عالي المستوی وبيانات دقيقة للغاية مع أداء عال لجميع أنواع المنظمات والأشخاص والشركات",
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IntroScreen(
          list, MaterialPageRoute(builder: (context) => const HomeLogin())),
    );
  }
}
