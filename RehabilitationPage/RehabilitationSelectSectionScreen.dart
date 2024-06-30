import 'package:ehssam01/FontColors.dart';
import 'package:ehssam01/Widgets/MyAppBarWidget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';

import '../../Widgets/HelpBackWidget.dart';

class RehabilitationSelectSectionScreen extends StatelessWidget {
  const RehabilitationSelectSectionScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: MyAppBar(
          pageNumber: "صفحه توان بخشی",
          titleText: "برنامه توانبخشی",
        ),
        body: Padding(
          padding: EdgeInsets.only(top: 5.h),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  ElevatedButton(
                      onPressed: () {Get.toNamed("SectionOne");},
                      child: Padding(
                        padding: const EdgeInsets.all(12),
                        child: Text("جلسه ۱", style: MyTextStyles.large_3),
                      )),
                  ElevatedButton(
                      onPressed: () {Get.toNamed("SectionTwo");},
                      child: Padding(
                        padding: const EdgeInsets.all(12),
                        child: Text("جلسه 2", style: MyTextStyles.large_3),
                      )),
                  ElevatedButton(
                      onPressed: () {Get.toNamed("SectionThree");},
                      child: Padding(
                        padding: const EdgeInsets.all(12),
                        child: Text("جلسه 3", style: MyTextStyles.large_3),
                      )),
                  ElevatedButton(
                      onPressed: () {Get.toNamed("SectionFour");},
                      child: Padding(
                        padding: const EdgeInsets.all(12),
                        child: Text("جلسه 4", style: MyTextStyles.large_3),
                      )),
                ],
              ),
            ],
          ),
        ),

        /// Buttons For Help and Back
        floatingActionButton: HelpBackWidget(PageDestination: "HomeScreen",),
      ),
    );
  }
}


