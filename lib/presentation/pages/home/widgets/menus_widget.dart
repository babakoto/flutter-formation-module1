import 'package:flutter/material.dart';
import 'package:flutter_module1/core/constants/presentation.dart';
import 'package:flutter_module1/presentation/themes/app_themes.dart';

class MenuWidget extends StatefulWidget {
  const MenuWidget({Key? key}) : super(key: key);

  @override
  State<MenuWidget> createState() => _MenuWidgetState();
}

class _MenuWidgetState extends State<MenuWidget> {
  String category = menus.first;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50,
      child: ListView.separated(
          separatorBuilder: (context, int index) {
            return const SizedBox(
              width: 12,
            );
          },
          itemCount: menus.length,
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, int index) {
            return ActionChip(
              label: Text(
                menus[index],
                style: TextStyle(
                  color:
                      category == menus[index] ? Colors.white : AppThemes.black,
                ),
              ),
              backgroundColor: category == menus[index]
                  ? AppThemes.primary
                  : AppThemes.secondary,
              onPressed: () {
                setState(() {
                  category = menus[index];
                });
                print(category);
              },
            );
          }),
    );
  }
}
