import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';
import 'package:ui_challenge_1/app_page.dart';

void main() {
  Get.updateLocale(Locale("ar"));

  runApp(GetMaterialApp(
      locale: Locale("ar"),
      debugShowCheckedModeBanner: false,
      title: "UI Challenge 1",
      theme: ThemeData.light(),
      home: AppPage()));
}
