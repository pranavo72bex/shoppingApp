import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import '../../../application/category/category_bloc.dart';
import '../../../domain/product/product.dart';
import '../../core/app_router.gr.dart';
import 'product_grid_item.dart';

class TopProduct extends StatelessWidget {
  final List<Product> topProducts;

  const TopProduct({Key key, this.topProducts}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'Top Product'.toUpperCase(),
              style: Theme.of(context).textTheme.headline6,
            ),
            IconButton(
                icon: Icon(Icons.arrow_forward),
                onPressed: () {
                  ExtendedNavigator.of(context).push(
                    Routes.categoryPage,
                    arguments: CategoryPageArguments(
                      categoryName: 'Top Products',
                      categoryEvent: CategoryEvent.getTopProductsstarted(),
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
            children: topProducts
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
