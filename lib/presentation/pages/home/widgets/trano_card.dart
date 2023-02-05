import 'package:flutter/material.dart';
import 'package:flutter_module1/domain/entities/trano.dart';
import 'package:flutter_module1/presentation/themes/app_themes.dart';

class TranoCard extends StatelessWidget {
  final Trano trano;
  const TranoCard({Key? key, required this.trano}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Card(
      elevation: 16,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Ink(
          height: size.height * .3,
          width: size.width * .6,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(12),
                    topLeft: Radius.circular(12),
                  ),
                ),
                height: 150,
                width: size.width * .6,
                child: Stack(
                  children: [
                    Positioned.fill(
                        child: ClipRRect(
                      borderRadius: BorderRadius.circular(12),
                      child: Image.asset(
                        trano.images,
                        fit: BoxFit.cover,
                      ),
                    )),
                    Positioned(
                      top: 20,
                      right: 20,
                      child: MouseRegion(
                        child: InkWell(
                          onTap: () {
                            print("OK");
                          },
                          child: Container(
                              height: 50,
                              width: 50,
                              decoration: BoxDecoration(
                                color: Colors.black.withOpacity(.2),
                                shape: BoxShape.circle,
                              ),
                              child: const Icon(
                                Icons.favorite_border,
                                color: Colors.white,
                              )),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Expanded(
                    child: Text(
                      trano.title,
                      overflow: TextOverflow.fade,
                      style: AppThemes.displayLarge.copyWith(fontSize: 20),
                    ),
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Icon(Icons.star, color: Colors.yellow),
                      Text("4.7"),
                    ],
                  )
                ],
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: RichText(
                    text: const TextSpan(children: [
                  WidgetSpan(child: Icon(Icons.location_on_outlined)),
                  WidgetSpan(child: Text("Paris, France")),
                ])),
              ),
              Text(
                "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin condimentum lacinia est. Curabitur lacinia luctus leo vel blandit. Morbi dolor lacus, luctus at mollis id, faucibus at elit.",
                maxLines: 2,
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: RichText(
                    text: TextSpan(
                        text: "\$${trano.price}",
                        style: AppThemes.displayLarge.copyWith(fontSize: 13),
                        children: [WidgetSpan(child: Text("/person"))])),
              )
            ],
          ),
        ),
      ),
    );
  }
}
