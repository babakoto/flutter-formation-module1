import 'package:flutter/material.dart';
import 'package:flutter_module1/presentation/routes/app_routes.dart';
import 'package:flutter_module1/presentation/themes/app_themes.dart';

void main() {
  addition(2, 5);
}

/// Cette fonction retourne la somme de a et b
int addition(int a, int b) {
  return a + b;
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
