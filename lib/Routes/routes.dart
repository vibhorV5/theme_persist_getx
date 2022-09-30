import 'package:get/get.dart';
import 'package:theme_persist_getx/Screens/Home/View/home_screen.dart';

const String home = '/homeScreen';

class Routes {
  static final routes = [
    GetPage(name: home, page: () => const HomeScreen()),
  ];
}
