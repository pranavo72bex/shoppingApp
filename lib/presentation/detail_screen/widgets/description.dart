import 'package:flutter/material.dart';

import '../../../domain/product/product.dart';

class Description extends StatelessWidget {
  const Description({
    Key key,
    @required this.product,
  }) : super(key: key);

  final Product product;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Quick Overview",
          style:
              TextStyle(height: 1, fontWeight: FontWeight.bold, fontSize: 20),
        ),
        Text(
          product.description,
          style: Theme.of(context).textTheme.subtitle2,
          maxLines: 4,
          overflow: TextOverflow.ellipsis,
        ),
      ],
    );
  }
}
