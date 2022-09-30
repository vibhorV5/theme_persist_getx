import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:theme_persist_getx/Services/theme_service.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final themeService = Get.find<ThemeService>();
    return Scaffold(
      appBar: AppBar(
        title: const Center(child: Text('Home Screen')),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            TextButton(
              onPressed: () {
                Get.changeTheme(ThemeData(
                    primaryColor: Colors.orange, primarySwatch: Colors.orange));
                themeService.storeTheme('orange');
              },
              child: const Text('Orange Theme'),
            ),
            TextButton(
              onPressed: () {
                Get.changeTheme(ThemeData(
                    primaryColor: Colors.pink, primarySwatch: Colors.pink));
                themeService.storeTheme('pink');
              },
              child: const Text('Pink Theme'),
            ),
            TextButton(
              onPressed: () {
                Get.changeTheme(ThemeData(
                    primaryColor: Colors.purple, primarySwatch: Colors.purple));
                themeService.storeTheme('purple');
              },
              child: const Text('Purple Theme'),
            ),
          ],
        ),
      ),
    );
  }
}
