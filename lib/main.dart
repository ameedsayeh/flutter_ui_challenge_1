import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ui_challenge_1/app_page.dart';
import 'package:ui_challenge_1/translations/dictionary.dart';

void main() {
  var direction = TextDirection.ltr;

  if (Get.deviceLocale.languageCode == "ar") {
    direction = TextDirection.rtl;
  }

  Get.updateLocale(Locale(Get.deviceLocale.languageCode));

  runApp(
    GetMaterialApp(
      translations: Dictionary(),
      fallbackLocale: Locale('en'),
      debugShowCheckedModeBanner: false,
      title: "UI Challenge 1",
      theme: ThemeData.light(),
      home: Directionality(
        textDirection: direction,
        child: AppPage(),
      ),
    ),
  );
}
