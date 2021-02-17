import 'package:auto_route/auto_route_annotations.dart';
import 'package:shoppingApp/presentation/core/splash_screen.dart';

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

@MaterialAutoRouter(
  generateNavigationHelperExtension: true,
  routes: <AutoRoute>[
    // initial route is named "/"

    MaterialRoute(page: SplashScreen, initial: true),
    MaterialRoute(page: SigninPage),
    MaterialRoute(page: BottomNavigationPage),
    MaterialRoute(page: DashboardPage),
    MaterialRoute(page: SignupPage),
    MaterialRoute(page: AboutMePage),
    MaterialRoute(page: FavoritesPage),
    MaterialRoute(page: CartPage),
    MaterialRoute(page: NotificationsPage),
    MaterialRoute(page: ReviewPage),
    MaterialRoute(page: CategoryItemsList),
    MaterialRoute(page: DetailsScreen),
    MaterialRoute(page: PasswordRecovery),
  ],
)
class $AppRouter {}
