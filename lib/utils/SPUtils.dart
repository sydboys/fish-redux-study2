import 'dart:async';
import 'package:shared_preferences/shared_preferences.dart';

class SPUtils {
  static save(var key, var data) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    if (data is String) {
      prefs.setString(key, data);
    } else if (data is int) {
      prefs.setInt(key, data);
    } else if (data is double) {
      prefs.setDouble(key, data);
    } else if (data is bool) {
      prefs.setBool(key, data);
    }
  }

  static Future<Object> get(var key) async {
    var value;
    SharedPreferences prefs = await SharedPreferences.getInstance();
    value = prefs.get(key);
    return await value;
  }
}
