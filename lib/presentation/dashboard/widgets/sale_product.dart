import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import '../../../application/category/category_bloc.dart';
import '../../../domain/product/product.dart';
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
                  ExtendedNavigator.of(context).push(
                    Routes.categoryPage,
                    arguments: CategoryPageArguments(
                      categoryName: 'Sales Product',
                      categoryEvent: CategoryEvent.getSalesProductsstarted(),
                    ),
                  );
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
