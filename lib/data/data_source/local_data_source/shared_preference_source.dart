
import 'package:shared_preferences/shared_preferences.dart';

class SharedPreferenSource {

  late final SharedPreferences _sharedPreferences;

  Future<void> initialize() async {
    _sharedPreferences = await SharedPreferences.getInstance();
  }

  Future<void> saveString(String key, String value) async => _sharedPreferences.setString(key, value);
  String? getString(String key) => _sharedPreferences.getString(key);

  Future<void> saveInt(String key, int value) async => _sharedPreferences.setInt(key, value);
  int? getInt(String key) => _sharedPreferences.getInt(key);

  Future<void> saveBool(String key, bool value) async => _sharedPreferences.setBool(key, value);
  bool? getBool(String key) => _sharedPreferences.getBool(key);

  Future<bool> saveDouble(String key, double value) async => await _sharedPreferences.setDouble(key, value);
  double? getDouble(String key) => _sharedPreferences.getDouble(key);

  Future<bool> saveStringList(String key, List<String> value) async => await _sharedPreferences.setStringList(key, value);
  List<String>? getStringList(String key) => _sharedPreferences.getStringList(key);

  void removeKey(String key) => _sharedPreferences.remove(key);
}