import 'package:flutter_module1/presentation/pages/home/home_page.dart';

abstract class AppRoutes {
  static var routes = {
    HomePage.path: (context) => const HomePage(),
  };
}
