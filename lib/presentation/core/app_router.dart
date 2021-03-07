import 'package:auto_route/auto_route_annotations.dart';
import 'package:shoppingApp/presentation/category/category_page.dart';
import 'package:shoppingApp/presentation/core/bottom_navigation_page.dart';
import 'package:shoppingApp/presentation/dashboard/bottom_body/widgets/about_us.dart';
import 'package:shoppingApp/presentation/dashboard/bottom_body/widgets/contact_us.dart';
import 'package:shoppingApp/presentation/dashboard/bottom_body/widgets/faq.dart';
import 'package:shoppingApp/presentation/dashboard/bottom_body/widgets/privacy_policy.dart';
import 'package:shoppingApp/presentation/dashboard/bottom_body/widgets/terms_and_conditon.dart';
import 'package:shoppingApp/presentation/onboarding/onboarding.dart';
import '../about_me/about_me_page.dart';
import '../auth/common/password_recovery.dart';
import '../auth/signin/signin_page.dart';
import '../auth/signup/signup_page.dart';
import '../cart/cart_page.dart';
import '../dashboard/dashboard_page.dart';
import '../detail_screen/detail_screen.dart';
import '../favorites/favorites.dart';
import '../notification/notification_page.dart';
import '../review/review_page.dart';

@MaterialAutoRouter(
  generateNavigationHelperExtension: true,
  routes: <AutoRoute>[
    // initial route is named "/"

    MaterialRoute(page: OnboardingPage),
    MaterialRoute(page: SigninPage),
    MaterialRoute(page: DashboardPage),
    MaterialRoute(page: AboutUs),
    MaterialRoute(page: ContactUs),
    MaterialRoute(page: FAQ),
    MaterialRoute(page: PrivacyPolicy),
    MaterialRoute(page: TermAndCondition),
    MaterialRoute(page: BottomNavigationPage),
    MaterialRoute(page: SignupPage),
    MaterialRoute(page: AboutMePage),
    MaterialRoute(page: FavoritesPage),
    MaterialRoute(page: CartPage),
    MaterialRoute(page: NotificationsPage),
    MaterialRoute(page: ReviewPage),
    MaterialRoute(page: CategoryPage),
    MaterialRoute(page: DetailsScreen),
    MaterialRoute(page: PasswordRecovery),
  ],
)
class $AppRouter {}
