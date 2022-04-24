import 'package:flutter/material.dart';
import 'package:zahran_phone/my_widgets/mycard.dart';

import '../constants/my_colors.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //  backgroundColor: MyColors.myWhite,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Directionality(
            textDirection: TextDirection.rtl,
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Column(
                children: [
                  Padding(
                    padding:
                        const EdgeInsets.only(top: 20, right: 10, left: 10),
                    child: Row(
                      children: [
                        const Icon(
                          Icons.notifications_none_outlined,
                          size: 33,
                          color: MyColors.myGreen,
                        ),
                        Expanded(
                          child: Directionality(
                            textDirection: TextDirection.ltr,
                            child: Row(
                              children: [
                                ClipRRect(
                                  borderRadius: BorderRadius.circular(7),
                                  child: Image.asset(
                                    "assets/mero.jpg",
                                    fit: BoxFit.fill,
                                    width: 45,
                                    height: 50,
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 5),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: const [
                                      Text(
                                        "Hello",
                                        style: TextStyle(
                                            fontSize: 13, color: Colors.grey),
                                      ),
                                      Text(
                                        "Amir Mahmoud",
                                        style: TextStyle(
                                            fontSize: 14,
                                            color: MyColors.myDarkGreen),
                                      ),
                                    ],
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 20),
                    child: Container(
                      width: MediaQuery.of(context).size.width - 25,
                      height: 140,
                      child: Card(
                        color: MyColors.myWhiteGreen,
                        elevation: 10,
                        child: Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: const [
                                  Text(
                                    "شركة زهران لتصميم كافه",
                                    style: TextStyle(
                                        fontSize: 21, color: Colors.white),
                                  ),
                                  Text(
                                    "الانظمه البرمجية",
                                    style: TextStyle(
                                        fontSize: 21, color: Colors.white),
                                  ),
                                  Text(
                                    "التي تناسب احتياجاتك",
                                    style: TextStyle(
                                        fontSize: 21, color: Colors.white),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(
                              width: 50,
                            ),
                            Expanded(
                              child: Image.asset(
                                "assets/logo.png",
                                height: 100,
                                width: 100,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Column(
                    children: [
                      Row(
                        children: [
                          Expanded(
                              child: myCard("assets/desktop.jpg",
                                  "تطوير تطبيقات سطح المكتب")),
                          SizedBox(
                            width: 10,
                          ),
                          Expanded(
                              child: myCard(
                                  "assets/mobile.png", "تطوير تطبيقات الجوال")),
                        ],
                      ),
                      Row(
                        children: [
                          Expanded(
                              child: myCard("assets/web.jpg", "تطوير المواقع")),
                          SizedBox(
                            width: 10,
                          ),
                          Expanded(
                              child: myCard(
                                  "assets/ui.png", "إستراتيجية UI / UX")),
                        ],
                      )
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
