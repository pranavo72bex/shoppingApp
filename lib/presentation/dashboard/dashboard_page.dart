import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shimmer/shimmer.dart';
import 'package:shoppingApp/application/dashboard/dashboard_bloc.dart';
import 'package:shoppingApp/presentation/core/konstants.dart';
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
        body: SingleChildScrollView(
          padding: EdgeInsets.all(16),
          child: BlocBuilder<DashboardBloc, DashboardState>(
            builder: (context, state) {
              return state.map(
                loading: (_) => Shimmerdashboard(),
                failure: (_) => Error404Screen(),
                loaded: (s) => Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 10,
                    ),
                    SearchBar(),
                    SizedBox(
                      height: 10,
                    ),
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

class Shimmerdashboard extends StatelessWidget {
  const Shimmerdashboard({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Shimmer.fromColors(
      baseColor: Colors.white,
      highlightColor: Colors.grey[300],
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 10,
          ),
          Container(
            height: 55,
            margin: EdgeInsets.only(
              top: 10,
              left: 5,
              right: 5,
            ),
            decoration: BoxDecoration(
              color: Colors.white,
              boxShadow: kShadow,
              borderRadius: BorderRadius.circular(25),
            ),
          ),
          Container(
            height: 180,
            width: double.infinity,
            margin: EdgeInsets.only(
              top: 10,
              left: 5,
              right: 5,
            ),
            decoration: BoxDecoration(
              color: Colors.white,
              boxShadow: kShadow,
            ),
          ),
          Container(
            height: 180,
            width: double.infinity,
            margin: EdgeInsets.only(
              top: 10,
              left: 5,
              right: 5,
            ),
            decoration: BoxDecoration(
              color: Colors.white,
              boxShadow: kShadow,
              borderRadius: BorderRadius.circular(25),
            ),
          ),
          Container(
            height: 40,
            width: 150,
            margin: EdgeInsets.only(
              top: 10,
              left: 5,
              right: 5,
            ),
            decoration: BoxDecoration(
              color: Colors.white,
              boxShadow: kShadow,
            ),
          ),
          Row(
            children: [
              Container(
                width: 160,
                height: 120,
                margin: EdgeInsets.only(
                  top: 10,
                  left: 5,
                  right: 5,
                ),
                decoration: BoxDecoration(
                  color: Colors.white,
                  boxShadow: kShadow,
                  borderRadius: BorderRadius.circular(25),
                ),
              ),
              Container(
                height: 120,
                width: 160,
                margin: EdgeInsets.only(
                  top: 10,
                  left: 5,
                  right: 5,
                ),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(25),
                  boxShadow: kShadow,
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
