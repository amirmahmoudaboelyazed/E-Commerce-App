import 'package:flutter/material.dart';
import 'package:zahran_phone/constants/my_strings.dart';
import '../../layout_home/modules/home/components/my_space.dart';
import '../components/login_but.dart';
import '../components/login_lottie_img.dart';

class HomeLogin extends StatelessWidget {
  const HomeLogin({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          width: MediaQuery.of(context).size.width,
          child: Column(
            children: [
              mySpace(height: 25.0),
              loginLottieImg("assets/home_login.json"),
              mySpace(height: 50.0),
              logInBut(context, () {
                Navigator.pushNamed(context, MyStrings.loginScreen);
              }, "تسجيل دخول"),
              logInBut(context, () {
                Navigator.pushNamed(context, MyStrings.signInScreen);
              }, "انشاء حساب"),
              mySpace(height: 70.0),
            ],
          ),
        ),
      ),
    );
  }
}
