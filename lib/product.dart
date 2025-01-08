import 'package:flutter/material.dart';

class ProductModel extends ChangeNotifier {
  final List _listProduts = [
    ["Potato", 1.2, "assets/potato.png"],
    ["Banana", 0.5, "assets/banana.png"],
    ["Cabbage", 2.5, "assets/Cabbage.png"],
    ["EggPlant", 1.3, "assets/eggPlant.png"],
  ];

  get listProducts => _listProduts;
}
