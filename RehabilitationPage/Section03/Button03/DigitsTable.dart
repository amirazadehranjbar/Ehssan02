import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../FontColors.dart';
import 'Button03Controller.dart';
import 'Button03DigitsList.dart';

class DigitsTable extends StatelessWidget {
  const DigitsTable({
    super.key,
    required this.controller,
  });

  final Button03controller controller;

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
                    DataColumn(label: Text('EXT_A ', style:  MyTextStyles.large_2)),
                    DataColumn(label: Text('Answers', style:  MyTextStyles.large_2)),
                    DataColumn(label: Text('EXT_B', style:  MyTextStyles.large_2)),
                    DataColumn(label: Text('Answers', style:  MyTextStyles.large_2)),

                  ],
                  rows: List<DataRow>.generate(
                    32,
                        (index) => DataRow(
                      cells: [

                        ////////////////////////////////////////////////////////
                        DataCell(Text(Button03DigitsList.EXTA[index])),
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
                        DataCell(Text(Button03DigitsList.EXTB[index])),
                        DataCell(
                          Checkbox(
                            value: controller.EXTA02CheckboxStates[index],
                            onChanged: (bool? value) {
                              controller.EXTA02CheckboxStates[index] =
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