import 'package:flutter/material.dart';
import 'components/animation_text.dart';
import 'components/info_row.dart';
import 'components/my_space.dart';
import 'components/tech_info.dart';
import 'components/title_bar_list.dart';
import 'components/upper_title_row.dart';

class Home extends StatelessWidget {
  Home({Key? key}) : super(key: key);
  final searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Directionality(
          textDirection: TextDirection.rtl,
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              children: [
                upperTitleRow(searchController),
                infoRow(context),
                mySpace(height: 25.0),
                titleBarList(context)
              ],
            ),
          ),
        ),
      ),
    );
  }
}
