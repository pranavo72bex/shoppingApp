import 'package:flutter/material.dart';
import 'package:shoppingApp/presentation/dashboard/widgets/our_brand.dart';
import 'package:shoppingApp/presentation/dashboard/widgets/recent_product.dart';
import 'package:shoppingApp/presentation/dashboard/widgets/top_product.dart';

import 'widgets/categories_grid.dart';
import 'widgets/homepage_slider.dart';
import 'widgets/popular_deals_grid.dart';
import 'widgets/search_bar.dart';

class DashboardPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        title: SearchBar(),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            HomepageSlider(),
            CategoriesGrid(),
            PopularDealsGrid(),
            TopProduct(),
            RecentProduct(),
            OurBrand()
          ],
        ),
      ),
    );
  }
}
