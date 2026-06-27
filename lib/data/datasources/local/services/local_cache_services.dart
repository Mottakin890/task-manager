import 'dart:convert';

import 'package:task_manager/data/entities/user_entities.dart';
import 'package:shared_preferences/shared_preferences.dart';

class LocalCacheServices {
  static String? accessToken;
  static UserEntities? userData;

  static Future saveUserData(UserEntities userEntities, String token) async {
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
    await sharedPreferences.setString("token", token);
    await sharedPreferences.setString(
      "userData",
      jsonEncode(userEntities.toJson()),
    );
    accessToken = token;
    userData = userEntities;
  }
}
