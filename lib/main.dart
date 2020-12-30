import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:ui_challenge_1/app_page.dart';
import 'package:ui_challenge_1/translations/dictionary.dart';

String appThemeKey = 'appTheme';
String appLanguageKey = 'appLanguage';
var direction = TextDirection.ltr;
var theme = ThemeData.light();

void applyLanguage(storage) {
  var lang = Dictionary.defaultLanguage;

  if (storage.hasData(appLanguageKey)) {
    lang = storage.read(appLanguageKey);
  } else {
    String deviceLang = Get.deviceLocale.languageCode;
    if (Dictionary.supportedLanguages.contains(deviceLang)) {
      lang = deviceLang;
    }
  }

  if (Dictionary.rtlSupportedLanguages.contains(lang)) {
    direction = TextDirection.rtl;
  }

  Get.updateLocale(Locale(lang));
}

void applyTheme(storage) {
  if (storage.hasData(appThemeKey)) {
    if (storage.read(appThemeKey) == 1) {
      theme = ThemeData.dark();
    }
  } else {
    storage.write(appThemeKey, 0);
  }
}

Future<void> main() async {
  await GetStorage.init();

  GetStorage storage = GetStorage();

  applyLanguage(storage);
  applyTheme(storage);

  runApp(
    GetMaterialApp(
      translations: Dictionary(),
      fallbackLocale: Locale('en'),
      debugShowCheckedModeBanner: false,
      title: "UI Challenge 1",
      theme: theme,
      home: Directionality(
        textDirection: direction,
        child: AppPage(),
      ),
    ),
  );
}
