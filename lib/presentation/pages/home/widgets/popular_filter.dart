import 'package:flutter/material.dart';

class PopularFilter extends StatelessWidget {
  const PopularFilter({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    TextTheme textTheme = Theme.of(context).textTheme;
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text("Popular",
            style: textTheme.displayLarge
                ?.copyWith(fontWeight: FontWeight.w500, fontSize: 20)),
        TextButton(onPressed: () {}, child: Text("See All"))
      ],
    );
  }
}
