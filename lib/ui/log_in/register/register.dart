import 'package:flutter/material.dart';
import 'package:zahran_phone/constants/my_colors.dart';
import 'package:zahran_phone/ui/log_in/components/password_widget.dart';

import '../../layout_home/modules/home/components/my_space.dart';
import '../components/login_but.dart';
import '../components/login_text.dart';
import '../components/login_text_form_field.dart';

class SignIn extends StatefulWidget {
  SignIn({Key? key}) : super(key: key);

  @override
  State<SignIn> createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  final userNameController = TextEditingController();
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final _passwordFieldKey = GlobalKey<FormFieldState<String>>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Directionality(
          textDirection: TextDirection.rtl,
          child: Container(
            color: MyColors.myGreen,
            child: Column(
              children: [
                mySpace(height: 25.0),
                Directionality(
                  textDirection: TextDirection.ltr,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 22),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        IconButton(
                          color: Colors.white,
                          icon: const Icon(Icons.arrow_back_ios),
                          onPressed: () {
                            Navigator.of(context).pop();
                          },
                        ),
                        loginText("انشاء حساب"),
                      ],
                    ),
                  ),
                ),
                mySpace(height: 15.0),
                Expanded(
                  child: Container(
                    decoration: const BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                            topRight: Radius.circular(50),
                            topLeft: Radius.circular(50))),
                    child: SingleChildScrollView(
                      child: Padding(
                        padding:
                            const EdgeInsets.only(top: 70, left: 12, right: 12),
                        child: Column(
                          children: [
                            Image.asset(
                              "assets/logo.png",
                              height: 150,
                              width: 150,
                            ),
                            mySpace(height: 35.0),
                            loginTextFormField(
                              controller: userNameController,
                              labelText: "اسم المستخدم",
                              prefixIcon: Icons.account_circle_rounded,
                            ),
                            mySpace(height: 35.0),
                            loginTextFormField(
                              controller: emailController,
                              labelText: " إيميل",
                              prefixIcon: Icons.alternate_email,
                            ),
                            mySpace(height: 35.0),
                            PasswordField(
                              controller: passwordController,
                              fieldKey: _passwordFieldKey,
                              helperText:
                                  'كلمه المرور لا تتعدى 8 احرف او ارقام',
                              labelText: 'كلمه المرور',
                            ),
                            mySpace(height: 35.0),
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 40),
                              child: logInBut(context, () {}, "انشاء"),
                            ),
                            mySpace(height: 35.0),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
