import 'package:flutter/material.dart';
import 'package:flutter_module1/core/constants/fake.dart';
import 'package:flutter_module1/core/constants/presentation.dart';
import 'package:flutter_module1/presentation/pages/home/widgets/menus_widget.dart';
import 'package:flutter_module1/presentation/pages/home/widgets/popular_filter.dart';
import 'package:flutter_module1/presentation/pages/home/widgets/trano_card.dart';
import 'package:flutter_module1/presentation/themes/app_themes.dart';

class HomePage extends StatefulWidget {
  static const path = "/";
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String category = menus.first;

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    TextTheme textTheme = Theme.of(context).textTheme;
    Size size = MediaQuery.of(context).size;
    print("-------Home Rebuild-------");
    return Scaffold(
      appBar: AppBar(
        title: Align(
          alignment: Alignment.centerLeft,
          child: Text(
            "Discover",
            style: textTheme.displayLarge,
            textScaleFactor: 1.5,
            textAlign: TextAlign.start,
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 18),
            child: IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.search,
                color: AppThemes.black,
                size: 40,
              ),
            ),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 20, top: 40),
        child: Column(
          children: [
            MenuWidget(),
            PopularFilter(),
            SizedBox(
              height: size.height * .45,
              child: ListView.separated(
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, int index) {
                  return TranoCard(
                    trano: items[index],
                  );
                },
                separatorBuilder: (context, int index) {
                  return const SizedBox(
                    width: 16,
                  );
                },
                itemCount: items.length,
              ),
            )
          ],
        ),
      ),
    );
  }

  @override
  void dispose() {
    super.dispose();
  }
}
