import 'package:auto_route/auto_route_annotations.dart';

import '../about_me/about_me_page.dart';
import '../cart/cart_page.dart';
import '../dashboard/dashboard_page.dart';
import '../favorites/favorites.dart';
import '../notification/notification_page.dart';
import '../review/review_page.dart';
import '../signin/signin_page.dart';
import '../signup/signup_page.dart';
import 'bottom_navigation_page.dart';

@MaterialAutoRouter(
  generateNavigationHelperExtension: true,
  routes: <AutoRoute>[
    // initial route is named "/"
    MaterialRoute(page: SigninPage, initial: true),
    MaterialRoute(page: BottomNavigationPage),
    MaterialRoute(page: DashboardPage),
    MaterialRoute(page: SignupPage),
    MaterialRoute(page: AboutMePage),
    MaterialRoute(page: FavoritesPage),
    MaterialRoute(page: CartPage),
    MaterialRoute(page: NotificationsPage),
    MaterialRoute(page: ReviewPage),
  ],
)
class $AppRouter {}
