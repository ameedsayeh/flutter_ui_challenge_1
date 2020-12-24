import 'package:flutter/material.dart';
import 'package:ui_challenge_1/globals/color_palette.dart';
import 'package:ui_challenge_1/pages/cells/task_cell.dart';
import 'package:get/get.dart';

class TaskTileCell extends StatelessWidget {
  final Task task;

  TaskTileCell(this.task);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Get.snackbar(task.title, task.time);
      },
      child: ListTile(
        leading: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: 4,
                height: (MediaQuery.of(context).size.height * 1 / 9) - 48,
                decoration: BoxDecoration(
                  shape: BoxShape.rectangle,
                  color: task.color,
                  borderRadius: BorderRadius.circular(4),
                ),
              ),
            ]),
        trailing: Icon(Icons.navigate_next),
        title: Text(
          task.title,
          style: TextStyle(
            fontFamily: "OpenSans",
            fontSize: 16,
            fontWeight: FontWeight.w700,
          ),
        ),
        subtitle: Text(
          task.time,
          style: TextStyle(
              color: ColorPalette.grayTextColor,
              fontFamily: "OpenSans",
              fontSize: 14,
              fontWeight: FontWeight.w600),
        ),
      ),
    );
  }
}
