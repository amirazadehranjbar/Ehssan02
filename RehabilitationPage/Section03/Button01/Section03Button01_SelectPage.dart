import 'package:ehssam01/FontColors.dart';
import 'package:ehssam01/Widgets/HelpBackWidget.dart';
import 'package:ehssam01/Widgets/MyAppBarWidget.dart';
import 'package:ehssam01/pages/RehabilitationPage/Section03/Button01/List6/Button01List06.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';

import 'List1/Button01List01.dart';

class Section03Button01SelectPage extends StatelessWidget {
  const Section03Button01SelectPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppBar(
        pageNumber: "برنامه توان بخشی",
        titleText: "جلسه 3",
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ElevatedButton(
                  onPressed: () {Get.to(Section03ButtonList06Screen());},
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      "لیست ۶ (۷۵)",
                      style: MyTextStyles.large_2,
                    ),
                  )),
              ElevatedButton(
                  onPressed: () {Get.to(Section03ButtonList01Screen());},
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      "لیست 1 (۷۵)",
                      style: MyTextStyles.large_2,
                    ),
                  )),
            ],
          ),
          SizedBox(height: 20.h,),
          HelpBackWidget(PageDestination: "SectionThree"),
        ],

      ),

    );
  }
}
