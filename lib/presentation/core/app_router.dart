import 'package:auto_route/auto_route_annotations.dart';
import 'package:shoppingApp/presentation/about_me/about_me_page.dart';
import 'package:shoppingApp/presentation/cart/cart_page.dart';
import 'package:shoppingApp/presentation/core/bottom_navigation_page.dart';
import 'package:shoppingApp/presentation/notification/notification_page.dart';
import 'package:shoppingApp/presentation/signin/signin_page.dart';
import 'package:shoppingApp/presentation/signup/signup_page.dart';

@MaterialAutoRouter(
  generateNavigationHelperExtension: true,
  routes: <AutoRoute>[
    // initial route is named "/"
    MaterialRoute(page: SigninPage, initial: true),
    MaterialRoute(page: BottomNavigationPage),
    MaterialRoute(page: SignupPage),
    MaterialRoute(page: AboutMePage),
    MaterialRoute(page: CartPage),
    MaterialRoute(page: NotificationsPage),
  ],
)
class $AppRouter {}