// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// ignore_for_file: public_member_api_docs

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import '../about_me/about_me_page.dart';
import '../cart/cart_page.dart';
import '../dashboard/dashboard_page.dart';
import '../favorites/favorites.dart';
import '../notification/notification_page.dart';
import '../review/review_page.dart';
import '../signin/signin_page.dart';
import '../signup/signup_page.dart';
import 'bottom_navigation_page.dart';

class Routes {
  static const String signinPage = '/';
  static const String bottomNavigationPage = '/bottom-navigation-page';
  static const String dashboardPage = '/dashboard-page';
  static const String signupPage = '/signup-page';
  static const String aboutMePage = '/about-me-page';
  static const String favoritesPage = '/favorites-page';
  static const String cartPage = '/cart-page';
  static const String notificationsPage = '/notifications-page';
  static const String reviewPage = '/review-page';
  static const all = <String>{
    signinPage,
    bottomNavigationPage,
    dashboardPage,
    signupPage,
    aboutMePage,
    favoritesPage,
    cartPage,
    notificationsPage,
    reviewPage,
  };
}

class AppRouter extends RouterBase {
  @override
  List<RouteDef> get routes => _routes;
  final _routes = <RouteDef>[
    RouteDef(Routes.signinPage, page: SigninPage),
    RouteDef(Routes.bottomNavigationPage, page: BottomNavigationPage),
    RouteDef(Routes.dashboardPage, page: DashboardPage),
    RouteDef(Routes.signupPage, page: SignupPage),
    RouteDef(Routes.aboutMePage, page: AboutMePage),
    RouteDef(Routes.favoritesPage, page: FavoritesPage),
    RouteDef(Routes.cartPage, page: CartPage),
    RouteDef(Routes.notificationsPage, page: NotificationsPage),
    RouteDef(Routes.reviewPage, page: ReviewPage),
  ];
  @override
  Map<Type, AutoRouteFactory> get pagesMap => _pagesMap;
  final _pagesMap = <Type, AutoRouteFactory>{
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
  };
}

/// ************************************************************************
/// Navigation helper methods extension
/// *************************************************************************

extension AppRouterExtendedNavigatorStateX on ExtendedNavigatorState {
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
}
