import 'package:ehssam01/FontColors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';
import 'package:ehssam01/Widgets/MyAppBarWidget.dart';
import 'ControllerDichodic03.dart';
import 'WorldList03.dart';


class DichodicListThreeScreen extends StatelessWidget {
  final controller = Get.put(DichodicListOneController03());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppBar(
        titleText: "آزمون دایکوتیک کلمات\nلیست 3",
        pageNumber: "صفحه آزمون دایکوتیک",
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
          Expanded(
            child: Column(
              children: [
                // Scrollable content
                Expanded(
                  child: SingleChildScrollView(
                    child: Obx(
                          () => DataTable(
                        decoration: BoxDecoration(
                            color: Colors.white10,
                            border: Border.all(color: Colors.white30, width: 2),
                            borderRadius: BorderRadius.circular(10)),
                        columns:  [
                          DataColumn(label: Text('شماره', style:  MyTextStyles.large_2)),
                          DataColumn(label: Text('پاسخ', style:  MyTextStyles.large_2)),
                          DataColumn(label: Text('چپ', style:  MyTextStyles.large_2)),
                          DataColumn(label: Text('تیک چپ', style:  MyTextStyles.large_2)),
                          DataColumn(label: Text('راست', style:  MyTextStyles.large_2)),
                          DataColumn(label: Text('تیک راست', style:  MyTextStyles.large_2)),
                        ],
                        rows: List<DataRow>.generate(
                          25,
                              (index) => DataRow(
                            cells: [
                              DataCell(Text('${index + 1}')),
                              DataCell(Text('پاسخ ${index + 1}')),
                              DataCell(Text(WordList03.wordsLeft[index])),
                              DataCell(
                                Checkbox(
                                  value: controller.leftCheckboxStates[index],
                                  onChanged: (bool? value) {
                                    controller.leftCheckboxStates[index] =
                                    value!;
                                  },
                                ),
                              ),
                              DataCell(Text(WordList03.wordsRight[index])),
                              DataCell(
                                Checkbox(
                                  value: controller.rightCheckboxStates[index],
                                  onChanged: (bool? value) {
                                    controller.rightCheckboxStates[index] =
                                    value!;
                                  },
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 20.0),
          Obx(
                () => Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.black45,
                        borderRadius: BorderRadius.circular(12),
                        border: Border.all(color: Colors.white, width: 2),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(12),
                        child: Text(
                          'تعداد پاسخ صحیح چپ: ${controller.calculateCorrectLeftAnswers()}',
                          style: MyTextStyles.large_2,
                        ),
                      ),
                    ),
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.black45,
                        borderRadius: BorderRadius.circular(12),
                        border: Border.all(color: Colors.white, width: 2),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(12),
                        child: Text(
                          'درصد پاسخ صحیح چپ: % ${controller.calculateCorrectLeftAnswersPercent()}',
                          style: MyTextStyles.large_2,
                        ),
                      ),
                    ),
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.black45,
                        borderRadius: BorderRadius.circular(12),
                        border: Border.all(color: Colors.white, width: 2),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(12),
                        child: Text(
                          'تعداد پاسخ صحیح راست: ${controller.calculateCorrectRightAnswers()}',
                          style: MyTextStyles.large_2,
                        ),
                      ),
                    ),
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.black45,
                        borderRadius: BorderRadius.circular(8),
                        border: Border.all(color: Colors.white, width: 2),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(8),
                        child: Text(
                          'درصد پاسخ صحیح راست: % ${controller.calculateCorrectRightAnswersPercent()}',
                          style: MyTextStyles.large_2,
                        ),
                      ),
                    ),
                    FloatingActionButton(onPressed: (){Get.toNamed("DichoticTestScreen");},child: Icon(Icons.arrow_back),)
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
