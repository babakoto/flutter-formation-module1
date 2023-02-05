import 'package:flutter_module1/domain/entities/trano.dart';
import 'package:flutter_module1/generated/assets.dart';

List<Trano> items = const [
  Trano(
      id: 1,
      title: "Studio 20 m² rue franklin,",
      price: 1000,
      images: Assets.imagesTrano1),
  Trano(
      id: 2,
      title: "Colocation 20 m² Rue des Confédérés",
      price: 500,
      images: Assets.imagesTrano2),
  Trano(
      id: 3,
      title: "Kot chez l'habitant 21 m² rue René Devillers",
      price: 850,
      images: Assets.imagesTrano3),
  Trano(
    id: 4,
    title: "Appartement 60 m² Chaussée de Boondael",
    price: 350,
    images: Assets.imagesTrano4,
  ),
];
