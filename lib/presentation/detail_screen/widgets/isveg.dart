import 'package:flutter/material.dart';

import '../../../domain/product/product.dart';

class Isveg extends StatelessWidget {
  const Isveg({
    Key key,
    @required this.product,
  }) : super(key: key);

  final Product product;

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      'assets/veg60.png',
      color: product.isVeg == "0" ? Colors.green : Colors.red,
      width: 30,
      height: 30,
    );
  }
}
