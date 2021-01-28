import 'package:auto_route/auto_route_annotations.dart';
import 'package:shoppingApp/presentation/signin/signin_page.dart';
import 'package:shoppingApp/presentation/signup/signup_page.dart';

@MaterialAutoRouter(
  generateNavigationHelperExtension: true,
  routes: <AutoRoute>[
    // initial route is named "/"
    MaterialRoute(page: SigninPage, initial: true),
    MaterialRoute(page: SignupPage),
  ],
)
class $AppRouter {}
