import 'package:flutter/material.dart';
import 'package:ui_challenge_1/globals/color_palette.dart';
import 'package:ui_challenge_1/pages/cells/task_cell.dart';
import 'package:get/get.dart';

import 'cells/task_tile_cell.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: EdgeInsets.all(24),
          child: Image.asset(
            "assets/images/team.png",
          ),
        ),
        Container(
          height: MediaQuery.of(context).size.height * 1 / 9,
          child: Padding(
              padding: EdgeInsets.only(left: 16, right: 16),
              child: Container(
                decoration: BoxDecoration(
                    shape: BoxShape.rectangle,
                    color: ColorPalette.boxColor,
                    borderRadius: BorderRadius.circular(24)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Expanded(
                      child: Text(
                        'createNewTask'.tr,
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontSize: 24,
                            fontFamily: "OpenSans",
                            fontWeight: FontWeight.w700),
                      ),
                      flex: 3,
                    ),
                    Expanded(
                        child: FloatingActionButton(
                          backgroundColor: ColorPalette.selectedColor,
                          child: Icon(
                            Icons.add,
                            color: Colors.black,
                          ),
                          tooltip: 'newTask'.tr,
                          onPressed: () {},
                        ),
                        flex: 1),
                  ],
                ),
              )),
        ),
        SizedBox(
          height: 16,
        ),
        Container(
          child: Text(
            "todaysTasks".tr,
            textAlign: TextAlign.left,
            style: TextStyle(
              color: ColorPalette.grayTextColor,
              fontSize: 16,
              fontFamily: "OpenSans",
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.only(left: 16, right: 16),
            child: ListView(
              padding: EdgeInsets.zero,
              children: [
                TaskTileCell(
                  Task(
                    "Sketching",
                    Colors.purple,
                    "09.00 - 10.00",
                  ),
                ),
                TaskTileCell(
                  Task(
                    "Meeting with team",
                    Colors.yellow,
                    "10.30 - 11.30",
                  ),
                ),
                TaskTileCell(
                  Task(
                    "Lunch",
                    Colors.blueAccent,
                    "12.00 - 13.00",
                  ),
                ),
                TaskTileCell(
                  Task(
                    "Sleep",
                    Colors.green,
                    "14.00 - 16.00",
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
