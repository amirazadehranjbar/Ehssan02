import 'package:ehssam01/FontColors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';
import 'package:ehssam01/Widgets/MyAppBarWidget.dart';
import 'Button07Controller.dart';
import 'DigitsTable.dart';



class Section03Button07Screen extends StatelessWidget {
  final controller = Get.put(Button07controller());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppBar(
        titleText: "جلسه 3_بخش 7",
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
                    ResultWidget(textName: "ETX A 01 :",textResults: controller.calculateCorrectEXTA01Answers().toString()),
                    ResultWidget(textName: "ETX A 01 Percent :",textResults: "${controller.calculateCorrectEXTA01AnswersPercent().toInt()} %"),
                    ////////////////// EXT A 02 Count And Percent
                    ResultWidget(textName: "ETX A 02 :",textResults: controller.calculateCorrectEXTA02Answers().toString()),
                    ResultWidget(textName: "ETX A 02 Percent :",textResults: "${controller.calculateCorrectEXTA02AnswersPercent().toInt()} %"),
                    ////////////////// EXT B 01 Count And Percent
                    ResultWidget(textName: "ETX B 01 :",textResults: controller.calculateCorrectEXTB01Answers().toString()),
                    ResultWidget(textName: "ETX B 01 Percent :",textResults: "${controller.calculateCorrectEXTB01AnswersPercent().toInt()} %"),
                    ////////////////// EXT B 02 Count And Percent
                    ResultWidget(textName: "ETX B 02 :",textResults: controller.calculateCorrectEXTB02Answers().toString()),
                    ResultWidget(textName: "ETX B 02 Percent :",textResults: "${controller.calculateCorrectEXTB02AnswersPercent().toInt()} %"),

                    FloatingActionButton(onPressed: (){Get.toNamed("SectionThree");},child: Icon(Icons.arrow_back),)
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


