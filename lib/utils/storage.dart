import 'package:shared_preferences/shared_preferences.dart';

//键值对存储
class LocalStorage {
  static SharedPreferences? prefs;

  static initSP() async {
    prefs = await SharedPreferences.getInstance();
  }

  static save(String key, String value) {
    initSP();
    prefs?.setString(key, value);
  }

  static get(String key) {
    initSP();
    return prefs?.get(key);
  }

  static remove(String key) {
    initSP();
    prefs?.remove(key);
  }
}

// 文件存储


// 数据库存储