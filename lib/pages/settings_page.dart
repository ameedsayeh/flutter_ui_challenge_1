import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ui_challenge_1/pages/home_page.dart';
import 'package:ui_challenge_1/pages/language_select_page.dart';
import 'package:ui_challenge_1/pages/theme_select_page.dart';

class SettingsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          margin: EdgeInsets.all(24),
          child: Image.asset('assets/images/settings.png'),
        ),
        Container(
          padding: EdgeInsets.only(right: 16, left: 16),
          child: Text(
            "settings".tr,
            style: TextStyle(
              fontFamily: "OpenSans",
              fontSize: 18,
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
        Expanded(
          child: ListView(
            children: [
              InkWell(
                onTap: () => Get.to(LanguageSelectPage()),
                child: ListTile(
                  title: Text("appLanguage".tr),
                  subtitle: Text("appLanguageDescription".tr),
                  trailing: Icon(Icons.navigate_next),
                ),
              ),
              InkWell(
                onTap: () => {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => ThemeSelectPage()),
                  )
                },
                child: ListTile(
                  title: Text("appTheme".tr),
                  subtitle: Text("appThemeDescription".tr),
                  trailing: Icon(Icons.navigate_next),
                ),
              ),
            ],
          ),
        )
      ],
    );
  }
}
