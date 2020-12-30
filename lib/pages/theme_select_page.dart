import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

class ThemeSelectPage extends StatefulWidget {
  @override
  _ThemeSelectPageState createState() => _ThemeSelectPageState();
}

class _ThemeSelectPageState extends State<ThemeSelectPage> {
  int _selectedTheme = 0;
  GetStorage storage = GetStorage();
  String appThemeKey = 'appTheme';

  void _onThemeTappped(int theme) {
    setState(() {
      if (theme == 1) {
        Get.changeTheme(ThemeData.dark());
      } else {
        Get.changeTheme(ThemeData.light());
      }
      this.storage.write(appThemeKey, theme);
      _selectedTheme = theme;
    });
  }

  @override
  Widget build(BuildContext context) {
    _selectedTheme =
        this.storage.hasData(appThemeKey) ? this.storage.read(appThemeKey) : 0;

    return Scaffold(
      appBar: AppBar(
        title: Text("appTheme".tr),
      ),
      body: Column(children: [
        Container(
          alignment: Alignment.center,
          padding: EdgeInsets.all(16),
          child: Text(
            "appThemeDescription".tr,
          ),
        ),
        Expanded(
          child: ListView(children: [
            InkWell(
              child: ListTile(
                onTap: () => _onThemeTappped(0),
                title: Text(
                  "lightTheme".tr,
                ),
                subtitle: _selectedTheme == 0 ? Text("current".tr) : Text(""),
                trailing: Container(
                  width: 20,
                  height: 20,
                  decoration: BoxDecoration(
                    color: Colors.grey[300],
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              ),
            ),
            InkWell(
              onTap: () => _onThemeTappped(1),
              child: ListTile(
                title: Text(
                  "darkTheme".tr,
                ),
                subtitle: _selectedTheme == 1 ? Text("current".tr) : Text(""),
                trailing: Container(
                  width: 20,
                  height: 20,
                  decoration: BoxDecoration(
                    color: Colors.black87,
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              ),
            ),
          ]),
        ),
      ]),
    );
  }
}
