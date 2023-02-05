import 'package:flutter/material.dart';
import 'package:flutter_module1/presentation/routes/app_routes.dart';
import 'package:flutter_module1/presentation/themes/app_themes.dart';

void main() {
  runApp(Trano());
}

class Trano extends StatelessWidget {
  const Trano({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: AppRoutes.routes,
      debugShowCheckedModeBanner: false,
      theme: AppThemes.themes,
    );
  }
}
