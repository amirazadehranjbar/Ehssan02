import 'package:ehssam01/FontColors.dart';
import 'package:ehssam01/Widgets/MyAppBarWidget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';

class TestsScreen extends StatelessWidget {
  const TestsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: MyAppBar(
        pageNumber: "صفحه آزمون ها",
        titleText: "آزمون های تشخیص آمبلیودیا",
      ),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            // Button For Test Screen
            ElevatedButton(
                onPressed: () {Get.toNamed("DichoticTestScreen");},
                child: Padding(
                  padding: const EdgeInsets.all(12),
                  child: Text(
                    "آزمون دایکوتیک کلمات",
                    style: MyTextStyles.large_3,
                  ),
                )),
            // Button For Rehabilitation
            ElevatedButton(
                onPressed: () {Get.toNamed("SeriesTestScreen");},
                child: Padding(
                  padding: const EdgeInsets.all(12),
                  child: Text(
                    "آزمون کلمات تناوبی",
                    style: MyTextStyles.large_3,
                  ),
                )),
            SizedBox(height: 10.h,)
          ],
        ),
      ),
      // Button For Back To Home Screen
      floatingActionButton: Padding(
        padding:  EdgeInsets.only(left: 5.w),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            ElevatedButton(onPressed: (){}, child: Padding(
              padding: const EdgeInsets.all(12),
              child: Text("راهنما", style: MyTextStyles.large_3),
            )),
            FloatingActionButton(
              onPressed: () {
                Get.toNamed("/HomeScreen");
              },
              child: Icon(Icons.arrow_back),
            ),
          ],
        ),
      ),
    ));
  }
}
