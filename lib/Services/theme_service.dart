import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

class ThemeService extends GetxService {
  ThemeData themeData = ThemeData();

  final box = GetStorage();

  @override
  void onInit() {
    super.onInit();
    restoreTheme();
  }

  restoreTheme() {
    String storedColor = box.read('themeStored') ?? 'orange';
    if (storedColor == 'orange') {
      themeData =
          ThemeData(primaryColor: Colors.orange, primarySwatch: Colors.orange);
    } else if (storedColor == 'pink') {
      themeData =
          ThemeData(primaryColor: Colors.pink, primarySwatch: Colors.pink);
    } else if (storedColor == 'purple') {
      themeData =
          ThemeData(primaryColor: Colors.purple, primarySwatch: Colors.purple);
    }
  }

  storeTheme(String themeColor) {
    box.write('themeStored', themeColor);
  }
}
