// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// ignore_for_file: public_member_api_docs

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import '../../application/category/category_bloc.dart';
import '../../domain/product/product.dart';
import '../about_me/about_me_page.dart';
import '../auth/common/password_recovery.dart';
import '../auth/signin/signin_page.dart';
import '../auth/signup/signup_page.dart';
import '../cart/cart_page.dart';
import '../category/category_page.dart';
import '../dashboard/dashboard_page.dart';
import '../detail_screen/detail_screen.dart';
import '../favorites/favorites.dart';
import '../notification/notification_page.dart';
import '../onboarding/onboarding.dart';
import '../review/review_page.dart';
import 'bottom_navigation_page.dart';

class Routes {
  static const String onboardingPage = '/onboarding-page';
  static const String signinPage = '/signin-page';
  static const String dashboardPage = '/dashboard-page';
  static const String bottomNavigationPage = '/bottom-navigation-page';
  static const String signupPage = '/signup-page';
  static const String aboutMePage = '/about-me-page';
  static const String favoritesPage = '/favorites-page';
  static const String cartPage = '/cart-page';
  static const String notificationsPage = '/notifications-page';
  static const String reviewPage = '/review-page';
  static const String categoryPage = '/category-page';
  static const String detailsScreen = '/details-screen';
  static const String passwordRecovery = '/password-recovery';
  static const all = <String>{
    onboardingPage,
    signinPage,
    dashboardPage,
    bottomNavigationPage,
    signupPage,
    aboutMePage,
    favoritesPage,
    cartPage,
    notificationsPage,
    reviewPage,
    categoryPage,
    detailsScreen,
    passwordRecovery,
  };
}

class AppRouter extends RouterBase {
  @override
  List<RouteDef> get routes => _routes;
  final _routes = <RouteDef>[
    RouteDef(Routes.onboardingPage, page: OnboardingPage),
    RouteDef(Routes.signinPage, page: SigninPage),
    RouteDef(Routes.dashboardPage, page: DashboardPage),
    RouteDef(Routes.bottomNavigationPage, page: BottomNavigationPage),
    RouteDef(Routes.signupPage, page: SignupPage),
    RouteDef(Routes.aboutMePage, page: AboutMePage),
    RouteDef(Routes.favoritesPage, page: FavoritesPage),
    RouteDef(Routes.cartPage, page: CartPage),
    RouteDef(Routes.notificationsPage, page: NotificationsPage),
    RouteDef(Routes.reviewPage, page: ReviewPage),
    RouteDef(Routes.categoryPage, page: CategoryPage),
    RouteDef(Routes.detailsScreen, page: DetailsScreen),
    RouteDef(Routes.passwordRecovery, page: PasswordRecovery),
  ];
  @override
  Map<Type, AutoRouteFactory> get pagesMap => _pagesMap;
  final _pagesMap = <Type, AutoRouteFactory>{
    OnboardingPage: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => OnboardingPage(),
        settings: data,
      );
    },
    SigninPage: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => SigninPage(),
        settings: data,
      );
    },
    DashboardPage: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => DashboardPage(),
        settings: data,
      );
    },
    BottomNavigationPage: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => BottomNavigationPage(),
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
    CategoryPage: (data) {
      final args = data.getArgs<CategoryPageArguments>(nullOk: false);
      return MaterialPageRoute<dynamic>(
        builder: (context) => CategoryPage(
          key: args.key,
          categoryName: args.categoryName,
          categoryEvent: args.categoryEvent,
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
  Future<dynamic> pushOnboardingPage() => push<dynamic>(Routes.onboardingPage);

  Future<dynamic> pushSigninPage() => push<dynamic>(Routes.signinPage);

  Future<dynamic> pushDashboardPage() => push<dynamic>(Routes.dashboardPage);

  Future<dynamic> pushBottomNavigationPage() =>
      push<dynamic>(Routes.bottomNavigationPage);

  Future<dynamic> pushSignupPage() => push<dynamic>(Routes.signupPage);

  Future<dynamic> pushAboutMePage() => push<dynamic>(Routes.aboutMePage);

  Future<dynamic> pushFavoritesPage() => push<dynamic>(Routes.favoritesPage);

  Future<dynamic> pushCartPage() => push<dynamic>(Routes.cartPage);

  Future<dynamic> pushNotificationsPage() =>
      push<dynamic>(Routes.notificationsPage);

  Future<dynamic> pushReviewPage() => push<dynamic>(Routes.reviewPage);

  Future<dynamic> pushCategoryPage({
    Key key,
    @required String categoryName,
    @required CategoryEvent categoryEvent,
  }) =>
      push<dynamic>(
        Routes.categoryPage,
        arguments: CategoryPageArguments(
            key: key, categoryName: categoryName, categoryEvent: categoryEvent),
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

/// CategoryPage arguments holder class
class CategoryPageArguments {
  final Key key;
  final String categoryName;
  final CategoryEvent categoryEvent;
  CategoryPageArguments(
      {this.key, @required this.categoryName, @required this.categoryEvent});
}

/// DetailsScreen arguments holder class
class DetailsScreenArguments {
  final Key key;
  final Product product;
  DetailsScreenArguments({this.key, this.product});
}
