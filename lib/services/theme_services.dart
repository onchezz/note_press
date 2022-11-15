import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

class ThemeService {
  final _box = GetStorage();
  final _key = "isDarkMode";

  bool _loadThemefromBox() => _box.read(_key) ?? false;
  _saveThemeToBox(bool isDarkMode) => _box.write(_key, isDarkMode);
  ThemeMode get theme => _loadThemefromBox() ? ThemeMode.dark : ThemeMode.light;
  void switchTheme() {
    Get.changeThemeMode(_loadThemefromBox() ? ThemeMode.light : ThemeMode.dark);
    _saveThemeToBox(!_loadThemefromBox());
  }
}
