import 'package:ehssam01/FontColors.dart';
import 'package:ehssam01/Widgets/HelpBackWidget.dart';
import 'package:ehssam01/Widgets/MyAppBarWidget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';

class SectionThree extends StatelessWidget {
  const SectionThree({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppBar(
        titleText: "جلسه 3",
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
                  child: ButtonSectionSelection(TextButton: "۴. دایکوتیک کلمات (۲۰)\nلیست ۹",PageToGo: "Section03Button04Screen",)
              ),
              ///////////////////////////////// 3
              SizedBox(
                  height: 5.h,
                  width: 25.w,
                  child: ButtonSectionSelection(TextButton: "۳. قصه \nلیست ۲",PageToGo: "Section03Button03Screen",)
              ),
              //// //////////////////////////// 2
              SizedBox(
                  height: 5.h,
                  width: 25.w,
                  child: ButtonSectionSelection(TextButton: "۲. قصه \nلیست ۱",PageToGo: "Section03Button02Screen",)
              ),
              ///////////////////////////////// 1
              SizedBox(
                  height: 5.h,
                  width: 25.w,
                  child: ButtonSectionSelection(TextButton: "۱. دایکوتیک اعداد (۵۰/۷۵)\nلیست ۶/ لیست ۱",PageToGo: "Section03Button01SelectPage",)
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
                  child: ButtonSectionSelection(TextButton: "۸. دایکوتیک اعداد (۵۰/۷۵)\nلیست ۷/ لیست ۲",PageToGo: "Section03Button08Screen",)
              ),
              //// //////////////////////////// 7
              SizedBox(
                  height: 5.h,
                  width: 25.w,
                  child: ButtonSectionSelection(TextButton: "۷. دایکوتیک اسپوندی (۲۰)\nلیست ۵",PageToGo: "Section03Button07Screen",)
              ),
              ///////////////////////////////// 6
              SizedBox(
                  height: 5.h,
                  width: 25.w,
                  child: ButtonSectionSelection(TextButton: "۶. دایکوتیک اسپوندی (۱۵)\nلیست ۴",PageToGo: "Section03Button06Screen",)
              ),
              //////////////////////////////// 5
              SizedBox(
                  height: 5.h,
                  width: 25.w,
                  child: ButtonSectionSelection(TextButton: "۵. دایکوتیک کلمات (۲۰)\nلیست ۱۰",PageToGo: "Section03Button05Screen",)
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              ///////////////////////////////// 10
              SizedBox(
                  height: 5.h,
                  width: 25.w,
                  child: ButtonSectionSelection(TextButton: "10. دایکوتیک کلمات (۲۰)\nلیست ۱۲",PageToGo: "Section03Button10Screen",)
              ),
              //// //////////////////////////// 9
              SizedBox(
                  height: 5.h,
                  width: 25.w,
                  child: ButtonSectionSelection(TextButton: "۹. دایکوتیک کلمات (۲۰)\nلیست ۱۱",PageToGo: "Section03Button09Screen",)
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
