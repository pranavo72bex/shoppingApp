import 'package:flutter/material.dart';
import 'isveg.dart';

import '../../../domain/product/product.dart';

class ProductTitle extends StatelessWidget {
  const ProductTitle({
    Key key,
    @required this.product,
  }) : super(key: key);

  final Product product;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Row(
          children: <Widget>[
            Expanded(
              child: Text(
                product.title + "(${product.quantityInfo})",
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 18),
              ),
            ),
            Isveg(product: product),
          ],
        )
      ],
    );
  }
}
