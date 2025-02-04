import 'package:ehssam01/FontColors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';
import 'package:ehssam01/Widgets/MyAppBarWidget.dart';
import 'Button08Controller.dart';
import 'DigitsTable.dart';



class Section02Button08Screen extends StatelessWidget {
  final controller = Get.put(Button08controller());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppBar(
        titleText: "جلسه 2_بخش 8",
        pageNumber: "برنامه توانبخشی",
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ///// Slider For Time Of Play
          Obx(
                () => SizedBox(
              width: 20.w,
              child: Slider(
                value: controller.position.value.inSeconds.toDouble(),
                max: controller.duration.value.inSeconds.toDouble(),
                onChanged: (double value) {
                  controller.audioPlayer.seek(Duration(seconds: value.toInt()));
                },
              ),
            ),
          ),
          Obx(
                () => Text(
              "${controller.position.value.toString().split('.').first} / ${controller.duration.value.toString().split('.').first}",
              style: MyTextStyles.large_1,
            ),
          ),
          const SizedBox(height: 10.0),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Obx(
                    () => IconButton(
                  iconSize: 30,
                  icon: Icon(Icons.play_arrow),
                  onPressed:
                  controller.isPlaying.value ? null : controller.play,
                ),
              ),
              Obx(
                    () => IconButton(
                  iconSize: 30,
                  icon: Icon(Icons.pause),
                  onPressed:
                  controller.isPlaying.value ? controller.pause : null,
                ),
              ),
              IconButton(
                iconSize: 30,
                icon: Icon(Icons.replay),
                onPressed: controller.replay,
              ),
            ],
          ),
          ElevatedButton(
            onPressed: () {},
            child: Text("راهنما", style: MyTextStyles.large_2),
          ),
          const SizedBox(height: 20.0),
          //////////////// Data Table///////////////////////////////////////////////////
          DigitsTable(controller: controller),
          const SizedBox(height: 20.0),
          ////////////////// Show Results //////////////////////////////////////////////////
          Obx(
                () => Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    ////////////////// EXT A 01 Count And Percent
                    ResultWidget(textName: "ETX A:",textResults: controller.calculateCorrectEXTA01Answers().toString()),
                    ResultWidget(textName: "ETX A Percent :",textResults: "${controller.calculateCorrectEXTA01AnswersPercent().toInt()} %"),
                    ////////////////// EXT A 02 Count And Percent
                    ResultWidget(textName: "ETX B:",textResults: controller.calculateCorrectEXTA02Answers().toString()),
                    ResultWidget(textName: "ETX B Percent :",textResults: "${controller.calculateCorrectEXTA02AnswersPercent().toInt()} %"),


                    FloatingActionButton(onPressed: (){Get.toNamed("SectionTwo");},child: Icon(Icons.arrow_back),)
                  ],
                ),
          ),
        ],
      ),
    );
  }
}




class ResultWidget extends StatelessWidget {
  const ResultWidget({
    super.key,
     this.textResults, this.textName,
  });

  final textResults;
  final textName;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.black45,
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: Colors.white, width: 1),
      ),
      child: Padding(
        padding: const EdgeInsets.all(8),
        child: Text(
          textName + textResults,
          style: MyTextStyles.medium_1,
        ),
      ),
    );
  }
}


