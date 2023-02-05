import 'package:flutter/material.dart';
import 'package:flutter_module1/domain/entities/trano.dart';

class TranoCard extends StatelessWidget {
  final Trano trano;
  const TranoCard({Key? key, required this.trano}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 16,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      child: Ink(
        height: 300,
        width: 300,
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(12)),
        child: Column(
          children: [
            Ink(
              decoration: const BoxDecoration(
                  borderRadius: BorderRadius.only(
                topRight: Radius.circular(12),
                topLeft: Radius.circular(12),
              )),
              height: 150,
              width: double.infinity,
              child: Image.asset(
                trano.images,
                fit: BoxFit.cover,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
