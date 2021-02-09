import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:shoppingApp/domain/product.dart';
import 'package:shoppingApp/presentation/core/app_router.gr.dart';
import 'package:shoppingApp/presentation/dashboard/widgets/product_grid_item.dart';

class PopularDealsGrid extends StatelessWidget {
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
            childAspectRatio: 0.65,
            physics: NeverScrollableScrollPhysics(),
            // padding: EdgeInsets.all(8),
            mainAxisSpacing: 16,
            crossAxisSpacing: 16,
            // scrollDirection: Axis.horizontal,
            shrinkWrap: true,
            crossAxisCount: 2,
            children: products
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
