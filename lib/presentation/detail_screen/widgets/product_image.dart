import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

import '../../../domain/product/product.dart';

class ProductImage extends StatelessWidget {
  const ProductImage({
    Key key,
    @required this.product,
  }) : super(key: key);

  final Product product;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 80),
      child: Column(
        children: <Widget>[
          ClipRRect(
            borderRadius: BorderRadius.circular(12.0),
            child: Hero(
              tag: "${product.id}",
              child: CachedNetworkImage(
                imageUrl: product.image,
                height: 230,
                width: 200,
                fit: BoxFit.fill,
              ),
            ),
          )
        ],
      ),
    );
  }
}
