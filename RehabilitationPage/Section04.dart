import 'package:ehssam01/FontColors.dart';
import 'package:ehssam01/Widgets/HelpBackWidget.dart';
import 'package:ehssam01/Widgets/MyAppBarWidget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';

class SectionFour extends StatelessWidget {
  const SectionFour({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppBar(
        titleText: "جلسه 4",
        pageNumber: "برنامه توانبخشی",
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              //////////////////////////////// 4
              SizedBox(
                  height: 5.h,
                  width: 25.w,
                  child: ButtonSectionSelection(TextButton: "۴. قصه \nلیست ۳")
              ),
              ///////////////////////////////// 3
              SizedBox(
                  height: 5.h,
                  width: 25.w,
                  child: ButtonSectionSelection(TextButton: "۳. دایکوتیک اعداد (۵۰/۷۵) \nلیست ۸/ لیست ۳")
              ),
              //// //////////////////////////// 2
              SizedBox(
                  height: 5.h,
                  width: 25.w,
                  child: ButtonSectionSelection(TextButton: "۲. دایکوتیک کلمات \nلیست ۱۴")
              ),
              ///////////////////////////////// 1
              SizedBox(
                  height: 5.h,
                  width: 25.w,
                  child: ButtonSectionSelection(TextButton: "۱. دایکوتیک کلمات\nلیست ۱۳",)
              ),



            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              ///////////////////////////////// 8
              SizedBox(
                  height: 5.h,
                  width: 25.w,
                  child: ButtonSectionSelection(TextButton: "۸. دایکوتیک کلمات (۲۰)\nلیست ۱۶",)
              ),
              //// //////////////////////////// 7
              SizedBox(
                  height: 5.h,
                  width: 25.w,
                  child: ButtonSectionSelection(TextButton: "۷. دایکوتیک کلمات (۲۰)\nلیست ۱۵")
              ),
              ///////////////////////////////// 6
              SizedBox(
                  height: 5.h,
                  width: 25.w,
                  child: ButtonSectionSelection(TextButton: "۶. دایکوتیک اسپوندی (۳۵)\nلیست ۶")
              ),
              //////////////////////////////// 5
              SizedBox(
                  height: 5.h,
                  width: 25.w,
                  child: ButtonSectionSelection(TextButton: "۵. قصه\nلیست ۴")
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              //// //////////////////////////// 9
              SizedBox(
                  height: 5.h,
                  width: 25.w,
                  child: ButtonSectionSelection(TextButton: "۹. دایکوتیک اعداد (۵۰/۷۵) \nلیست ۹/ لیست ۴")
              ),

            ],
          ),
        ],
      ),
      ////////////// Help and Back button
      floatingActionButton: HelpBackWidget(
        PageDestination: "RehabilitationSelectSectionScreen",
      ),
    );
  }
}


//////////////// Button Widget //////////////////
class ButtonSectionSelection extends StatelessWidget {
  const ButtonSectionSelection({
    super.key, required this.TextButton, this.PageToGo,
  });

  final TextButton;
  final PageToGo;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        onPressed: () {Get.toNamed(PageToGo);},
        child: Text(
          TextButton,
          style: MyTextStyles.large_1,
          textAlign: TextAlign.center,
          textDirection: TextDirection.rtl,
        ));
  }
}
