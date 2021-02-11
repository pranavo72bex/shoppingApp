import 'package:flutter/material.dart';
import 'package:shoppingApp/domain/product.dart';
import 'package:shoppingApp/presentation/dashboard/widgets/product_grid_item.dart';

class CategoryItemsList extends StatelessWidget {
  final String categoryName;

  const CategoryItemsList({Key key, this.categoryName}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(categoryName),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: GridView.builder(
          itemCount: products.length,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            childAspectRatio: 0.55,
            crossAxisSpacing: 10,
            mainAxisSpacing: 10,
          ),
          itemBuilder: (_, index) {
            return ProductGridItem(product: products[index]);
          },
        ),
      ),
    );
  }
}
