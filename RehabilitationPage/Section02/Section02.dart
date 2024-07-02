import 'package:ehssam01/FontColors.dart';
import 'package:ehssam01/Widgets/HelpBackWidget.dart';
import 'package:ehssam01/Widgets/MyAppBarWidget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';

class SectionTwo extends StatelessWidget {
  const SectionTwo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppBar(
        titleText: "جلسه 2",
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
                child: ButtonSectionSelection(TextButton: "۴. دایکوتیک کلمات (۲۰)\nلیست ۶",PageToGo: "Section02Button04Screen",),
              ),
              ////////////////////////////////// 3
              SizedBox(
                height: 5.h,
                width: 25.w,
                child: ButtonSectionSelection(TextButton:"۳. دایکوتیک کلمات (۲۰)\nلیست ۵",PageToGo: "Section02Button03Screen",),
              ),
              ////////////////////////////////// 2
              SizedBox(
                  height: 5.h,
                  width: 25.w,
                  child: ButtonSectionSelection(TextButton: "۲. دایکوتیک کلمات (۲۰)\nلیست ۴",PageToGo: "Section02Button02Screen",)
              ),
              ////////////////////////////////// 1
              SizedBox(
                  height: 5.h,
                  width: 25.w,
                  child: ButtonSectionSelection(TextButton: "۱. دایکوتیک اعداد (۵۰)\nلیست ۴",PageToGo: "Section02Button01Screen",)
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              ///////////////////////// 8
              SizedBox(
                  height: 5.h,
                  width: 25.w,
                  child: ButtonSectionSelection(TextButton: "۸. دایکوتیک کلمات (۲۰)\nلیست ۸",PageToGo: "Section02Button08Screen",)
              ),
              ///////////////////////// 7
              SizedBox(
                  height: 5.h,
                  width: 25.w,
                  child: ButtonSectionSelection(TextButton: "۷. دایکوتیک کلمات (۲۰)\nلیست ۷",PageToGo: "Section02Button07Screen",)
              ),
              ///////////////////////// 6
              SizedBox(
                  height: 5.h,
                  width: 25.w,
                  child: ButtonSectionSelection(TextButton: "۶. دایکوتیک اسپوندی (۲۰)\nلیست ۳",PageToGo: "Section02Button06Screen",)
              ),
              ///////////////////////// 5
              SizedBox(
                  height: 5.h,
                  width: 25.w,
                  child: ButtonSectionSelection(TextButton: "۵. دایکوتیک اعداد (۵۰)\nلیست ۵",PageToGo: "Section02Button05Screen",)
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
