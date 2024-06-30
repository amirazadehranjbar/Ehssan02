import 'package:ehssam01/FontColors.dart';
import 'package:ehssam01/PatientInformationController.dart';
import 'package:ehssam01/Widgets/MyAppBarWidget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';

class DichoticTestScreen extends StatelessWidget {
  DichoticTestScreen({super.key});
  final userController = Get.put(PatientInformationController());

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: MyAppBar(
          pageNumber: "صفحه آزمون دایکوتیک",
          titleText: "آزمون دایکوتیک کلمات",
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
              ///////////// Buttons
              Padding(
                padding: EdgeInsets.only(right: 5.w),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    ElevatedButton(
                      onPressed: () {Get.toNamed("DichodicListOneScreen");},
                      child: Text("لیست 1", style: MyTextStyles.large_3),
                    ),
                    SizedBox(height: 16.0),
                    ElevatedButton(
                      onPressed: () {Get.toNamed("DichodicListTwoScreen");},
                      child: Text("لیست 2", style: MyTextStyles.large_3),
                    ),
                    SizedBox(height: 16.0),
                    ElevatedButton(
                      onPressed: () {Get.toNamed("DichodicListThreeScreen");},
                      child: Text("لیست 3", style: MyTextStyles.large_3),
                    ),
                    SizedBox(height: 16.0),
                    ElevatedButton(
                      onPressed: () {Get.toNamed("DichodicListFourScreen");},
                      child: Text("لیست 4", style: MyTextStyles.large_3),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        floatingActionButton: Padding(
          padding: EdgeInsets.only(left: 5.w),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              ElevatedButton(
                onPressed: (){},
                child: Padding(
                  padding: const EdgeInsets.all(12),
                  child: Text("راهنما", style: MyTextStyles.large_3),
                ),
              ),
              FloatingActionButton(
                onPressed: () {
                  Get.toNamed("/TestScreen");
                },
                child: Icon(Icons.arrow_back),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
