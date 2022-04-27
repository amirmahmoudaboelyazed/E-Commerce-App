import 'package:flutter/material.dart';
import 'package:zahran_phone/constants/my_colors.dart';
import 'package:zahran_phone/ui/layout_home/modules/home/all.dart';
import 'package:zahran_phone/ui/layout_home/modules/home/camera.dart';
import 'package:zahran_phone/ui/layout_home/modules/home/computers.dart';
import 'package:zahran_phone/ui/layout_home/modules/home/printers.dart';
import 'package:zahran_phone/ui/layout_home/modules/home/program.dart';

Widget titleBarList(context) {
  return DefaultTabController(
    length: 5,
    child: Column(
      children: [
        Container(
          height: 40,
          child: const TabBar(
            unselectedLabelColor: MyColors.myWhite,
            indicatorColor: MyColors.myGreen,
            labelPadding: EdgeInsets.all(0),
            labelColor: MyColors.myDarkGreen,
            unselectedLabelStyle: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 17,
                color: MyColors.myWhiteGreen),
            labelStyle: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
            tabs: [
              Tab(
                text: 'الكل',
              ),
              Tab(
                text: 'البرامج',
              ),
              Tab(
                text: 'كمبيوتر',
              ),
              Tab(
                text: 'كاميرات',
              ),
              Tab(
                text: 'طابعات',
              ),
            ],
          ),
        ),
        Container(
          height: MediaQuery.of(context).size.height - 425,
          child: TabBarView(
            children: [
              AllProducts(),
              ProgramsProducts(),
              ComputersProducts(),
              CameraProducts(),
              PrintersProducts(),
            ],
          ),
        ),
      ],
    ),
  );
}
