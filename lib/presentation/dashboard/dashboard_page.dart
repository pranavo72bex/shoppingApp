import 'package:flutter/material.dart';
import 'package:shoppingApp/presentation/dashboard/widgets/categories_grid.dart';
import 'package:shoppingApp/presentation/dashboard/widgets/homepage_slider.dart';
import 'package:shoppingApp/presentation/dashboard/widgets/popular_deals_grid.dart';
import 'package:shoppingApp/presentation/dashboard/widgets/search_bar.dart';

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
          ],
        ),
      ),
    );
  }
}
