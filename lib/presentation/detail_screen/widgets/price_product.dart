import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:shoppingApp/presentation/core/konstants.dart';

import '../../../domain/product/product.dart';

class ProductPrice extends StatelessWidget {
  const ProductPrice({
    Key key,
    @required this.product,
  }) : super(key: key);

  final Product product;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          '₹ ' + product.oldPrice.toString(),
          style: TextStyle(
            color: Colors.grey,
            fontSize: 18,
            fontWeight: FontWeight.bold,
            decoration: TextDecoration.lineThrough,
          ),
        ),
        SizedBox(width: 10),
        Text(
          '₹ ' + product.price.toString(),
          style: TextStyle(
            color: Colors.green,
            fontSize: 30,
            fontWeight: FontWeight.bold,
          ),
        ),
        Spacer(),
        RatingBarIndicator(
          // rating: 3,
          rating: double.tryParse(product.avgRating ?? '0'),
          itemSize: 16,
          direction: Axis.horizontal,
          itemCount: 5,
          itemBuilder: (BuildContext context, int index) => Icon(
            Icons.star_rounded,
            color: kSecondaryColor,
          ),
        ),
      ],
    );
  }
}
