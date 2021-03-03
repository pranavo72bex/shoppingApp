import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';
import 'package:shoppingApp/domain/product/product.dart';

import '../../core/app_router.gr.dart';
import 'product_grid_item.dart';

class PopularDealsGrid extends StatelessWidget {
  final List<Product> featureProducts;

  const PopularDealsGrid({Key key, @required this.featureProducts})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'Popular Deals'.toUpperCase(),
              style: Theme.of(context).textTheme.headline6,
            ),
            IconButton(
                icon: Icon(Icons.arrow_forward),
                onPressed: () {
                  ExtendedNavigator.of(context).push(Routes.categoryItemsList,
                      arguments: CategoryItemsListArguments(
                          categoryName: 'Popular Deals'.toUpperCase()));
                })
          ],
        ),
        Container(
          child: GridView.count(
            childAspectRatio: 0.55,
            physics: NeverScrollableScrollPhysics(),
            // padding: EdgeInsets.all(8),
            mainAxisSpacing: 16,
            crossAxisSpacing: 16,
            // scrollDirection: Axis.horizontal,
            shrinkWrap: true,
            crossAxisCount: 2,
            children: featureProducts
                .map(
                  (product) => ProductGridItem(product: product),
                )
                .toList(),
          ),
        )
      ],
    );
  }
}

class ShimmerItem extends StatelessWidget {
  final double height, width;
  const ShimmerItem({
    Key key,
    @required this.height,
    this.width,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Shimmer.fromColors(
      baseColor: Colors.white,
      highlightColor: Colors.grey,
      child: Container(
        height: height,
        width: width ?? double.infinity,
        color: Colors.white,
      ),
    );
  }
}
