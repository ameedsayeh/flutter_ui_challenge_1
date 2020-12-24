import 'package:flutter/material.dart';
import 'package:ui_challenge_1/globals/color_palette.dart';

class TaskCell extends StatelessWidget {
  final Task task;

  TaskCell(this.task);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
        height: MediaQuery.of(context).size.height * 1 / 9,
        child: Column(
          children: [
            Expanded(
              child: Row(
                children: [
                  Expanded(
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            width: 4,
                            height:
                                (MediaQuery.of(context).size.height * 1 / 9) -
                                    48,
                            decoration: BoxDecoration(
                                shape: BoxShape.rectangle,
                                color: task.color,
                                borderRadius: BorderRadius.circular(4)),
                          ),
                        ]),
                    flex: 1,
                  ),
                  Expanded(
                    child: Container(
                      padding: EdgeInsets.only(left: 24, right: 16),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(task.title,
                              style: TextStyle(
                                  fontFamily: "OpenSans",
                                  fontSize: 16,
                                  fontWeight: FontWeight.w700)),
                          SizedBox(
                            height: 8,
                          ),
                          Text(task.time,
                              style: TextStyle(
                                  color: ColorPalette.grayTextColor,
                                  fontFamily: "OpenSans",
                                  fontSize: 14,
                                  fontWeight: FontWeight.w600))
                        ],
                      ),
                    ),
                    flex: 10,
                  ),
                  Expanded(
                    child: Icon(Icons.navigate_next),
                    flex: 2,
                  ),
                ],
              ),
              flex: 11,
            ),
            Expanded(
                child: Column(children: [
                  Container(
                    padding: EdgeInsets.only(left: 24, right: 24),
                    height: 0.2,
                    color: ColorPalette.separatorColor,
                  )
                ]),
                flex: 1),
          ],
        ));
  }
}

class Task {
  final String title;
  final Color color;
  final String time;

  Task(this.title, this.color, this.time);
}
