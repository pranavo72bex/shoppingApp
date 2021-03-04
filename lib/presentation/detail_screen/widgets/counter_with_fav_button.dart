import 'package:flutter/material.dart';
import 'package:shoppingApp/domain/product/product.dart';
import 'package:shoppingApp/presentation/core/konstants.dart';

import 'cart_counter.dart';

class CounterWithFavBtn extends StatefulWidget {
  final Product product;

  const CounterWithFavBtn({
    Key key,
    this.product,
  }) : super(key: key);

  @override
  _CounterWithFavBtnState createState() => _CounterWithFavBtnState();
}

class _CounterWithFavBtnState extends State<CounterWithFavBtn> {
  @override
  Widget build(BuildContext context) {
    bool isFavorite = false;
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        CartCounter(),
        Container(
          padding: EdgeInsets.all(5),
          decoration: BoxDecoration(
              color: Colors.white, shape: BoxShape.circle, boxShadow: kShadow),
          child: IconButton(
            icon: Icon(isFavorite ? Icons.favorite : Icons.favorite_outline),
            color: isFavorite ? Colors.red : Colors.grey,
            onPressed: () {
              setState(() {
                isFavorite = !isFavorite;
              });
            },
          ),
        )
      ],
    );
  }
}
