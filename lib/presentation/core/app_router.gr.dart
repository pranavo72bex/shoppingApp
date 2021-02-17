// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// ignore_for_file: public_member_api_docs

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import '../../domain/product/product.dart';
import '../about_me/about_me_page.dart';
import '../auth/common/password_recovery.dart';
import '../auth/signin/signin_page.dart';
import '../auth/signup/signup_page.dart';
import '../cart/cart_page.dart';
import '../category_items_list/category_items_list.dart';
import '../dashboard/dashboard_page.dart';
import '../detail_screen/detail_screen.dart';
import '../favorites/favorites.dart';
import '../notification/notification_page.dart';
import '../review/review_page.dart';
import 'bottom_navigation_page.dart';
import 'splash_screen.dart';

class Routes {
  static const String splashScreen = '/';
  static const String signinPage = '/signin-page';
  static const String bottomNavigationPage = '/bottom-navigation-page';
  static const String dashboardPage = '/dashboard-page';
  static const String signupPage = '/signup-page';
  static const String aboutMePage = '/about-me-page';
  static const String favoritesPage = '/favorites-page';
  static const String cartPage = '/cart-page';
  static const String notificationsPage = '/notifications-page';
  static const String reviewPage = '/review-page';
  static const String categoryItemsList = '/category-items-list';
  static const String detailsScreen = '/details-screen';
  static const String passwordRecovery = '/password-recovery';
  static const all = <String>{
    splashScreen,
    signinPage,
    bottomNavigationPage,
    dashboardPage,
    signupPage,
    aboutMePage,
    favoritesPage,
    cartPage,
    notificationsPage,
    reviewPage,
    categoryItemsList,
    detailsScreen,
    passwordRecovery,
  };
}

class AppRouter extends RouterBase {
  @override
  List<RouteDef> get routes => _routes;
  final _routes = <RouteDef>[
    RouteDef(Routes.splashScreen, page: SplashScreen),
    RouteDef(Routes.signinPage, page: SigninPage),
    RouteDef(Routes.bottomNavigationPage, page: BottomNavigationPage),
    RouteDef(Routes.dashboardPage, page: DashboardPage),
    RouteDef(Routes.signupPage, page: SignupPage),
    RouteDef(Routes.aboutMePage, page: AboutMePage),
    RouteDef(Routes.favoritesPage, page: FavoritesPage),
    RouteDef(Routes.cartPage, page: CartPage),
    RouteDef(Routes.notificationsPage, page: NotificationsPage),
    RouteDef(Routes.reviewPage, page: ReviewPage),
    RouteDef(Routes.categoryItemsList, page: CategoryItemsList),
    RouteDef(Routes.detailsScreen, page: DetailsScreen),
    RouteDef(Routes.passwordRecovery, page: PasswordRecovery),
  ];
  @override
  Map<Type, AutoRouteFactory> get pagesMap => _pagesMap;
  final _pagesMap = <Type, AutoRouteFactory>{
    SplashScreen: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => SplashScreen(),
        settings: data,
      );
    },
    SigninPage: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => SigninPage(),
        settings: data,
      );
    },
    BottomNavigationPage: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => BottomNavigationPage(),
        settings: data,
      );
    },
    DashboardPage: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => DashboardPage(),
        settings: data,
      );
    },
    SignupPage: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => SignupPage(),
        settings: data,
      );
    },
    AboutMePage: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => AboutMePage(),
        settings: data,
      );
    },
    FavoritesPage: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => FavoritesPage(),
        settings: data,
      );
    },
    CartPage: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => CartPage(),
        settings: data,
      );
    },
    NotificationsPage: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => NotificationsPage(),
        settings: data,
      );
    },
    ReviewPage: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => ReviewPage(),
        settings: data,
      );
    },
    CategoryItemsList: (data) {
      final args = data.getArgs<CategoryItemsListArguments>(
        orElse: () => CategoryItemsListArguments(),
      );
      return MaterialPageRoute<dynamic>(
        builder: (context) => CategoryItemsList(
          key: args.key,
          categoryName: args.categoryName,
        ),
        settings: data,
      );
    },
    DetailsScreen: (data) {
      final args = data.getArgs<DetailsScreenArguments>(
        orElse: () => DetailsScreenArguments(),
      );
      return MaterialPageRoute<dynamic>(
        builder: (context) => DetailsScreen(
          key: args.key,
          product: args.product,
        ),
        settings: data,
      );
    },
    PasswordRecovery: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => PasswordRecovery(),
        settings: data,
      );
    },
  };
}

/// ************************************************************************
/// Navigation helper methods extension
/// *************************************************************************

extension AppRouterExtendedNavigatorStateX on ExtendedNavigatorState {
  Future<dynamic> pushSplashScreen() => push<dynamic>(Routes.splashScreen);

  Future<dynamic> pushSigninPage() => push<dynamic>(Routes.signinPage);

  Future<dynamic> pushBottomNavigationPage() =>
      push<dynamic>(Routes.bottomNavigationPage);

  Future<dynamic> pushDashboardPage() => push<dynamic>(Routes.dashboardPage);

  Future<dynamic> pushSignupPage() => push<dynamic>(Routes.signupPage);

  Future<dynamic> pushAboutMePage() => push<dynamic>(Routes.aboutMePage);

  Future<dynamic> pushFavoritesPage() => push<dynamic>(Routes.favoritesPage);

  Future<dynamic> pushCartPage() => push<dynamic>(Routes.cartPage);

  Future<dynamic> pushNotificationsPage() =>
      push<dynamic>(Routes.notificationsPage);

  Future<dynamic> pushReviewPage() => push<dynamic>(Routes.reviewPage);

  Future<dynamic> pushCategoryItemsList({
    Key key,
    String categoryName,
  }) =>
      push<dynamic>(
        Routes.categoryItemsList,
        arguments:
            CategoryItemsListArguments(key: key, categoryName: categoryName),
      );

  Future<dynamic> pushDetailsScreen({
    Key key,
    Product product,
  }) =>
      push<dynamic>(
        Routes.detailsScreen,
        arguments: DetailsScreenArguments(key: key, product: product),
      );

  Future<dynamic> pushPasswordRecovery() =>
      push<dynamic>(Routes.passwordRecovery);
}

/// ************************************************************************
/// Arguments holder classes
/// *************************************************************************

/// CategoryItemsList arguments holder class
class CategoryItemsListArguments {
  final Key key;
  final String categoryName;
  CategoryItemsListArguments({this.key, this.categoryName});
}

/// DetailsScreen arguments holder class
class DetailsScreenArguments {
  final Key key;
  final Product product;
  DetailsScreenArguments({this.key, this.product});
}
