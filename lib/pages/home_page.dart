import 'package:flutter/material.dart';
import 'package:ui_challenge_1/globals/color_palette.dart';
import 'package:ui_challenge_1/pages/cells/task_cell.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Container(
          height: MediaQuery.of(context).size.height / 3,
          alignment: Alignment.center,
          child: Padding(
            padding: EdgeInsets.only(left: 16, right: 16),
            child: Image.asset(
              "assets/images/team.png",
              fit: BoxFit.scaleDown,
            ),
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
                        "Create New Task",
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
                          tooltip: 'New Task',
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
            child: Padding(
          padding: EdgeInsets.only(left: 16, right: 16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Todays task",
                textAlign: TextAlign.start,
                style: TextStyle(
                    color: ColorPalette.grayTextColor,
                    fontSize: 16,
                    fontFamily: "OpenSans",
                    fontWeight: FontWeight.w600),
              ),
              SizedBox(
                height: 12,
              ),
              Column(
                children: [
                  TaskCell(Task("Sketching", Colors.purple, "09.00 - 10.00")),
                  TaskCell(Task(
                      "Meeting with team", Colors.yellow, "10.30 - 11.30")),
                  TaskCell(Task("Lunch", Colors.blueAccent, "12.00 - 13.00")),
                  TaskCell(Task("Sleep", Colors.green, "14.00 - 16.00"))
                ],
              )
            ],
          ),
        ))
      ],
    );
  }
}
