import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:shoppingApp/domain/product/product.dart';
import '../../core/app_router.gr.dart';
import 'product_grid_item.dart';

class SaleProduct extends StatelessWidget {
  final List<Product> saleProducts;

  const SaleProduct({Key key, this.saleProducts}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'Sale Product'.toUpperCase(),
              style: Theme.of(context).textTheme.headline6,
            ),
            IconButton(
                icon: Icon(Icons.arrow_forward),
                onPressed: () {
                  ExtendedNavigator.of(context).push(Routes.categoryItemsList,
                      arguments: CategoryItemsListArguments(
                          categoryName: 'Sale Product'.toUpperCase()));
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
            children: saleProducts
                .map(
                  (featuredProductElement) =>
                      ProductGridItem(product: featuredProductElement),
                )
                .toList(),
          ),
        )
      ],
    );
  }
}
