import 'package:ehssam01/FontColors.dart';
import 'package:ehssam01/Widgets/HelpBackWidget.dart';
import 'package:ehssam01/Widgets/MyAppBarWidget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';

class SectionOne extends StatelessWidget {
  const SectionOne({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppBar(
        titleText: "جلسه ۱",
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
                child: ButtonSectionSelection(TextButton: "۴. دایکوتیک کلمات (۲۰)\nلیست ۲",PageToGo: "Section01Button04Screen",),
              ),
              ////////////////////////////////// 3
              SizedBox(
                height: 5.h,
                width: 25.w,
                child: ButtonSectionSelection(TextButton:"۳. دایکوتیک کلمات (۲۰)\nلیست ۱",PageToGo: "Section01Button03Screen",),
              ),
              ////////////////////////////////// 2
              SizedBox(
                height: 5.h,
                width: 25.w,
                child: ButtonSectionSelection(TextButton: "۲. دایکوتیک اعداد (۵۰)\nلیست ۲",PageToGo: "Section01Button02Screen",)
              ),
              ////////////////////////////////// 1
              SizedBox(
                height: 5.h,
                width: 25.w,
                child: ButtonSectionSelection(TextButton: "۱. دایکوتیک اعداد (۵۰)\nلیست ۱",PageToGo: "Section01Button01Screen",)
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
                child: ButtonSectionSelection(TextButton: "۸. دایکوتیک اعداد (۵۰)\nلیست ۳",PageToGo: "Section01Button08Screen",)
              ),
              ///////////////////////// 7
              SizedBox(
                height: 5.h,
                width: 25.w,
                child: ButtonSectionSelection(TextButton: "۷. دایکوتیک کلمات (۲۰)\nلیست ۳",PageToGo: "Section01Button07Screen",)
              ),
              ///////////////////////// 6
              SizedBox(
                height: 5.h,
                width: 25.w,
                child: ButtonSectionSelection(TextButton: "۶. دایکوتیک اسپوندی (۱۵)\nلیست ۲",PageToGo: "Section01Button06Screen",)
              ),
              ///////////////////////// 5
              SizedBox(
                height: 5.h,
                width: 25.w,
                child: ButtonSectionSelection(TextButton: "۵. دایکوتیک اسپوندی (۲۰)\nلیست ۱",PageToGo: "Section01Button05Screen",)
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
