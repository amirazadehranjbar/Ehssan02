import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../../../FontColors.dart';
import 'Button01ControllerList06.dart';
import 'Button01DigitsListList06.dart';

class DigitsTable extends StatelessWidget {
  const DigitsTable({
    super.key,
    required this.controller,
  });

  final Button01controllerList06 controller;

  @override
  Widget build(BuildContext context) {
    return Expanded(
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
                    DataColumn(label: Text('EXT_A Column 1', style:  MyTextStyles.large_2)),
                    DataColumn(label: Text('Answers', style:  MyTextStyles.large_2)),
                    DataColumn(label: Text('EXT_A Column 2', style:  MyTextStyles.large_2)),
                    DataColumn(label: Text('Answers', style:  MyTextStyles.large_2)),
                    DataColumn(label: Text('EXT_B Column 1', style:  MyTextStyles.large_2)),
                    DataColumn(label: Text('Answers', style:  MyTextStyles.large_2)),
                    DataColumn(label: Text('EXT_B Column 2', style:  MyTextStyles.large_2)),
                    DataColumn(label: Text('Answers', style:  MyTextStyles.large_2)),
                  ],
                  rows: List<DataRow>.generate(
                    25,
                        (index) => DataRow(
                      cells: [

                        ////////////////////////////////////////////////////////
                        DataCell(Text(Button01DigitsListList06.EXTA01[index])),
                        DataCell(
                          Checkbox(
                            value: controller.EXTA01CheckboxStates[index],
                            onChanged: (bool? value) {
                              controller.EXTA01CheckboxStates[index] =
                              value!;
                            },
                          ),
                        ),
                        ////////////////////////////////////////////////////////
                        DataCell(Text(Button01DigitsListList06.EXTA02[index])),
                        DataCell(
                          Checkbox(
                            value: controller.EXTA02CheckboxStates[index],
                            onChanged: (bool? value) {
                              controller.EXTA02CheckboxStates[index] =
                              value!;
                            },
                          ),
                        ),
                        ////////////////////////////////////////////////////////
                        DataCell(Text(Button01DigitsListList06.EXTB01[index])),
                        DataCell(
                          Checkbox(
                            value: controller.EXTB01CheckboxStates[index],
                            onChanged: (bool? value) {
                              controller.EXTB01CheckboxStates[index] =
                              value!;
                            },
                          ),
                        ),
                        ////////////////////////////////////////////////////////
                        DataCell(Text(Button01DigitsListList06.EXTB02[index])),
                        DataCell(
                          Checkbox(
                            value: controller.EXTB02CheckboxStates[index],
                            onChanged: (bool? value) {
                              controller.EXTB02CheckboxStates[index] =
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
    );
  }
}