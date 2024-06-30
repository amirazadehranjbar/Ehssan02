import 'package:ehssam01/Widgets/MyAppBarWidget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';

import '../../FontColors.dart';
import '../../PatientInformationController.dart';

class SeriesTestScreen extends StatelessWidget {
   SeriesTestScreen({super.key});
  final userController = Get.put(PatientInformationController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppBar(
        titleText: "آزمون کلمات متناوب",
        pageNumber: "صفحه کلمات متناوب",
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            ///////////// Text Fields
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ///////// Name Text Field
                Row(
                  children: [
                    SizedBox(width: 5.w,),
                    Text("نام", style: MyTextStyles.large_2),
                    SizedBox(width: 5.5.w,),
                    SizedBox(
                      width: 30.w,
                      child: TextField(
                        controller: userController.nameController,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 5.w),
                //////// Age Text Field
                Row(
                  children: [
                    SizedBox(width: 5.w,),
                    Text("سن", style: MyTextStyles.large_2),
                    SizedBox(width: 5.w,),
                    SizedBox(
                      width: 30.w,
                      child: TextField(
                        controller: userController.ageController,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 5.w),
                /////// Sex Text Field
                Row(
                  children: [
                    SizedBox(width: 5.w,),
                    Text("جنس", style: MyTextStyles.large_2),
                    SizedBox(width: 4.5.w,),
                    SizedBox(
                      width: 30.w,
                      child: TextField(
                        controller: userController.sexController,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 5.w),
                Padding(
                  padding: EdgeInsets.only(left: 12.w),
                  child: ElevatedButton(
                    onPressed: () {},
                    child: Text("ثبت", style: MyTextStyles.large_3),
                  ),
                )
              ],
            ),
            Align(
              alignment: FractionalOffset(0, 0.6),
                child: ElevatedButton(
              onPressed: () {},
              child: Padding(
                padding: const EdgeInsets.all(12),
                child: Text(
                  "ورود به صفحه آزمون",
                  style: MyTextStyles.large_3,
                ),
              ),
            ))
          ],
        ),
      ),
      floatingActionButton: Padding(
        padding: const EdgeInsets.all(30),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            ElevatedButton(
                onPressed: () {},
                child: Padding(
                  padding: const EdgeInsets.all(12),
                  child: Text(
                    "راهنما",
                    style: MyTextStyles.large_3,
                  ),
                )),
            FloatingActionButton(
              onPressed: () {Get.toNamed("/TestScreen");},
              child: const Icon(Icons.arrow_back),
            )
          ],
        ),
      ),
    );
  }
}
