import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shoppingApp/application/dashboard/dashboard_bloc.dart';
import 'package:shoppingApp/presentation/dashboard/bottom_body/social_media.dart';
import 'package:shoppingApp/presentation/dashboard/widgets/error_screen.dart';
import 'package:shoppingApp/presentation/dashboard/widgets/homepage_banner.dart';
import 'package:shoppingApp/presentation/dashboard/widgets/our_brand.dart';
import 'package:shoppingApp/presentation/dashboard/widgets/sale_product.dart';
import 'package:shoppingApp/presentation/dashboard/widgets/top_product.dart';
import '../../dependency_injection.dart';
import 'dashboard_widgets/categories_grid.dart';
import 'widgets/homepage_slider.dart';
import 'widgets/popular_deals_grid.dart';
import 'widgets/search_bar.dart';

class DashboardPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) =>
          getIt.get<DashboardBloc>()..add(DashboardEvent.started()),
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          title: SearchBar(),
        ),
        body: SingleChildScrollView(
          padding: EdgeInsets.all(16),
          child: BlocBuilder<DashboardBloc, DashboardState>(
            builder: (context, state) {
              return state.map(
                loading: (_) => Center(
                    child: CircularProgressIndicator(
                  backgroundColor: Colors.orange,
                  valueColor: AlwaysStoppedAnimation(Colors.green),
                  strokeWidth: 5,
                )),
                failure: (_) => Error404Screen(),
                loaded: (s) => Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    HomepageBanner(
                      banner: s.dashboard.banner,
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    HomepageSlider(
                      slider: s.dashboard.slider,
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    CategoriesGrid(
                      shopByCategory: s.dashboard.shopByCategory,
                    ),
                    PopularDealsGrid(
                      featureProducts: s.dashboard.featuredProducts,
                    ),
                    SaleProduct(
                      saleProducts: s.dashboard.saleProducts,
                    ),
                    TopProduct(
                      topProducts: s.dashboard.topProducts,
                    ),
                    // RecentProduct(),
                    OurBrand(brands: s.dashboard.brands),
                    Divider(
                      height: 15,
                    ),
                    SocialMedia()
                  ],
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
