import 'package:ehssam01/FontColors.dart';
import 'package:ehssam01/gen/assets.gen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';

import '../../Widgets/MyAppBarWidget.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: MyAppBar(
          pageNumber: "صفحه اول",
          titleText:
              "نرم افزار مواد آزمونی و توانبخشی\n اختلال نقص تلفیق دو گوشی",
        ),
        body: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              // Button For Test Screen
              ElevatedButton(
                  onPressed: () {Get.toNamed("TestScreen");},
                  child: Padding(
                    padding: const EdgeInsets.all(12),
                    child: Text(
                      "آزمون ها",
                      style: MyTextStyles.large_3,
                    ),
                  )),
              // Button For Rehabilitation
              ElevatedButton(
                  onPressed: () {Get.toNamed("RehabilitationSelectSectionScreen");},
                  child: Padding(
                    padding: const EdgeInsets.all(12),
                    child: Text(
                      "برنامه توانبخشی",
                      style: MyTextStyles.large_3,
                    ),
                  )),
              SizedBox(height: 10.h,)
            ],
          ),
        ),
      ),
    );
  }
}
