import 'package:flutter/material.dart';
import 'components/animation_text.dart';
import 'components/info_row.dart';
import 'components/my_space.dart';
import 'components/tech_info.dart';
import 'components/upper_title_row.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Directionality(
            textDirection: TextDirection.rtl,
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Column(
                children: [
                  upperTitleRow("assets/mero.jpg", "Amir Mahmoud"),
                  infoRow(context),
                  animationText(context),
                  mySpace(height: 25.0),
                  techInfo(),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
