import 'package:flutter/material.dart';
import 'package:zahran_phone/ui/layout_home/modules/home/components/mycard.dart';

import '../../../../constants/my_colors.dart';
import '../home/components/tech_info.dart';

class Services extends StatelessWidget {
  const Services({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(top: 20),
          child: SingleChildScrollView(
            child: Directionality(
              textDirection: TextDirection.rtl,
              child: Column(
                children: [techInfo()],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
