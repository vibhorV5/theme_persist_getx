import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:theme_persist_getx/Routes/routes.dart';
import 'package:theme_persist_getx/Screens/Home/View/home_screen.dart';
import 'package:theme_persist_getx/Services/theme_service.dart';

void main() async {
  await GetStorage.init();
  Get.put(ThemeService());
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    final themeService = Get.find<ThemeService>();
    return GetMaterialApp(
      themeMode: ThemeMode.light,
      debugShowCheckedModeBanner: false,
      getPages: Routes.routes,
      title: 'Theme toggle and persist getx',
      theme: themeService.themeData,
      home: const HomeScreen(),
    );
  }
}
