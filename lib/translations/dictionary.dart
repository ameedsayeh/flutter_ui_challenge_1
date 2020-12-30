import 'package:get/route_manager.dart';

class Dictionary extends Translations {
  static final defaultLanguage = 'en';
  static final supportedLanguages = ['ar', 'en'];
  static final rtlSupportedLanguages = ['ar'];

  @override
  Map<String, Map<String, String>> get keys => {
        "en": {
          "createNewTask": "Create New Task",
          "todaysTasks": "Todays tasks",
          "newTask": "New Task",
          "appLanguage": "App Language",
          "appLanguageDescription": "Choose your preferred language",
          "appTheme": "App Theme",
          "appThemeDescription": "Choose your preferred theme",
          "settings": "Settings",
          "lightTheme": "Light Theme",
          "darkTheme": "Dark Theme",
          "autoLang": "Auto Detect",
          "english": "English",
          "arabic": "Arabic",
          "current": "Current",
        },
        "ar": {
          "createNewTask": "إضافة مهمة جديدة",
          "todaysTasks": "مهمات اليوم",
          "newTask": "مهمة جديدة",
          "appLanguage": "لغة التطبيق",
          "appLanguageDescription": "قم باختيار لغتك المفضلة",
          "appTheme": "مظهر التطبيق",
          "appThemeDescription": "قم باختيار المظهر المفضل لك",
          "settings": "الإعدادات",
          "lightTheme": "مظهر فاتح",
          "darkTheme": "مظهر داكن",
          "autoLang": "تلقائي",
          "english": "الإنجليزية",
          "arabic": "العربية",
          "current": "الحالي",
        },
      };
}
