import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:ui_challenge_1/main.dart';
import 'package:ui_challenge_1/translations/dictionary.dart';

class LanguageSelectPage extends StatefulWidget {
  @override
  _LanguageSelectPageState createState() => _LanguageSelectPageState();
}

class _LanguageSelectPageState extends State<LanguageSelectPage> {
  String _selectedLang = Dictionary.defaultLanguage;
  GetStorage storage = GetStorage();
  String appLangKey = 'appLanguage';

  void _onLanguageTappped(String lang) {
    setState(() {
      this.storage.write(appLangKey, lang);
      Get.updateLocale(Locale(lang));
      _selectedLang = lang;
    });
  }

  void _onAutoTappped() {
    setState(() {
      this.storage.remove(appLangKey);

      var lang = Get.deviceLocale.languageCode;
      if (!Dictionary.supportedLanguages.contains(lang)) {
        lang = Dictionary.defaultLanguage;
      }

      Get.updateLocale(Locale(lang));

      _selectedLang = 'auto';
    });
  }

  @override
  Widget build(BuildContext context) {
    _selectedLang = this.storage.hasData(appLangKey)
        ? this.storage.read(appLangKey)
        : 'auto';

    return Scaffold(
      appBar: AppBar(
        title: Text("appLanguage".tr),
      ),
      body: Column(children: [
        Container(
          alignment: Alignment.center,
          padding: EdgeInsets.all(16),
          child: Text(
            "appLanguageDescription".tr,
          ),
        ),
        Expanded(
          child: ListView(children: [
            InkWell(
              child: ListTile(
                onTap: () => _onAutoTappped(),
                title: Text(
                  "autoLang".tr,
                ),
                subtitle:
                    _selectedLang == 'auto' ? Text("current".tr) : Text(""),
                trailing: _selectedLang == 'auto' ? Icon(Icons.done) : null,
              ),
            ),
            InkWell(
              child: ListTile(
                onTap: () => _onLanguageTappped('en'),
                title: Text(
                  "english".tr,
                ),
                subtitle: _selectedLang == 'en' ? Text("current".tr) : Text(""),
                trailing: _selectedLang == 'en' ? Icon(Icons.done) : null,
              ),
            ),
            InkWell(
              onTap: () => _onLanguageTappped('ar'),
              child: ListTile(
                title: Text(
                  "arabic".tr,
                ),
                subtitle: _selectedLang == 'ar' ? Text("current".tr) : Text(""),
                trailing: _selectedLang == 'ar' ? Icon(Icons.done) : null,
              ),
            ),
          ]),
        ),
      ]),
    );
  }
}
