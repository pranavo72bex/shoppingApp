import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../application/category/category_bloc.dart';
import '../../common_widget/custom_circular_progress_indicator.dart';
import '../../dashboard/widgets/product_grid_item.dart';

class CategoryPageList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CategoryBloc, CategoryState>(
      builder: (context, state) {
        return state.map(
          loading: (_) {
            return CustomCircularProgressIndicator();
          },
          failure: (_) {
            return Text('Something error occured');
          },
          loaded: (data) {
            return GridView.builder(
              padding: EdgeInsets.all(8.0),
              itemCount: data.products.length,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                childAspectRatio: 0.55,
                crossAxisSpacing: 10,
                mainAxisSpacing: 10,
              ),
              itemBuilder: (_, index) {
                return ProductGridItem(
                  product: data.products[index],
                );
              },
            );
          },
        );
      },
    );
  }
}
