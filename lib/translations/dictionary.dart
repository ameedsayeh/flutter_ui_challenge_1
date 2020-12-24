import 'package:get/route_manager.dart';

class Dictionary extends Translations {
  @override
  // TODO: implement keys
  Map<String, Map<String, String>> get keys => {
        "en": {
          "createNewTask": "Create New Task",
          "todaysTasks": "Todays tasks",
          "newTask": "New Task",
        },
        "ar": {
          "createNewTask": "إضافة مهمة جديدة",
          "todaysTasks": "مهمات اليوم",
          "newTask": "مهمة جديدة",
        },
      };
}
