import 'package:flutter/material.dart';
import 'package:ui_challenge_1/globals/color_palette.dart';
import 'package:ui_challenge_1/pages/home_page.dart';

class AppPage extends StatefulWidget {
  @override
  _AppPageState createState() => _AppPageState();
}

class _AppPageState extends State<AppPage> {
  int _selectedIndex = 0;

  final _childrenPages = [HomePage(), HomePage(), HomePage(), HomePage()];
  void _onItemTappped(int value) {
    setState(() {
      _selectedIndex = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        elevation: 10,
        selectedItemColor: ColorPalette.selectedColor,
        unselectedItemColor: ColorPalette.unselectedColor,
        showSelectedLabels: true,
        showUnselectedLabels: true,
        currentIndex: _selectedIndex,
        onTap: _onItemTappped,
        items: [
          BottomNavigationBarItem(
              icon: Icon(Icons.home_filled),
              activeIcon: Icon(Icons.home_filled),
              // ignore: deprecated_member_use
              title: bottomNavigationBarItemIndicator(_selectedIndex == 0)),
          BottomNavigationBarItem(
              icon: Icon(Icons.calendar_today),
              activeIcon: Icon(Icons.calendar_today),
              // ignore: deprecated_member_use
              title: bottomNavigationBarItemIndicator(_selectedIndex == 1)),
          BottomNavigationBarItem(
              icon: Icon(Icons.settings),
              activeIcon: Icon(Icons.settings),
              // ignore: deprecated_member_use
              title: bottomNavigationBarItemIndicator(_selectedIndex == 2)),
          BottomNavigationBarItem(
              icon: Icon(Icons.pie_chart),
              activeIcon: Icon(Icons.pie_chart),
              // ignore: deprecated_member_use
              title: bottomNavigationBarItemIndicator(_selectedIndex == 3))
        ],
      ),
      body: _childrenPages[_selectedIndex],
    );
  }
}

Widget bottomNavigationBarItemIndicator(show) {
  return show
      ? Container(
          width: 30,
          height: 20,
          child: Padding(
            padding: EdgeInsets.only(top: 16),
            child: Container(
              decoration: BoxDecoration(
                  color: ColorPalette.selectedColor,
                  shape: BoxShape.rectangle,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(4),
                      topRight: Radius.circular(4))),
            ),
          ))
      : SizedBox(height: 20);
}
