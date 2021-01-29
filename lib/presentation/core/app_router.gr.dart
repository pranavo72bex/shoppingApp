// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// ignore_for_file: public_member_api_docs

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import '../about_me/about_me_page.dart';
import '../cart/cart_page.dart';
import '../signin/signin_page.dart';
import '../signup/signup_page.dart';

class Routes {
  static const String signinPage = '/';
  static const String signupPage = '/signup-page';
  static const String aboutMePage = '/about-me-page';
  static const String cartPage = '/cart-page';
  static const all = <String>{
    signinPage,
    signupPage,
    aboutMePage,
    cartPage,
  };
}

class AppRouter extends RouterBase {
  @override
  List<RouteDef> get routes => _routes;
  final _routes = <RouteDef>[
    RouteDef(Routes.signinPage, page: SigninPage),
    RouteDef(Routes.signupPage, page: SignupPage),
    RouteDef(Routes.aboutMePage, page: AboutMePage),
    RouteDef(Routes.cartPage, page: CartPage),
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
    CartPage: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => CartPage(),
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

  Future<dynamic> pushSignupPage() => push<dynamic>(Routes.signupPage);

  Future<dynamic> pushAboutMePage() => push<dynamic>(Routes.aboutMePage);

  Future<dynamic> pushCartPage() => push<dynamic>(Routes.cartPage);
}
