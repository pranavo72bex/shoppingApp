import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shoppingApp/application/auth/auth_bloc.dart';
import 'package:shoppingApp/dependency_injection.dart';
import 'package:shoppingApp/main.dart';
import 'app_router.gr.dart';

class ShoppingApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt.get<AuthBloc>(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Shopping App',
        builder: ExtendedNavigator.builder<AppRouter>(
          router: AppRouter(),
          initialRoute: initScreen == 0 || initScreen == null
              ? Routes.onboardingPage
              // : Routes.signinPage,
              : Routes.dashboardPage,
          builder: (context, extendedNav) => Theme(
            data: ThemeData(
              primaryColor: Color(0xFFF78909),
              textTheme: GoogleFonts.poppinsTextTheme(
                Theme.of(context).textTheme,
              ),
              scaffoldBackgroundColor: Color(0xFFF8F8FF),
              appBarTheme: AppBarTheme().copyWith(
                iconTheme:
                    IconThemeData(color: Colors.white), //back button theme
                actionsIconTheme: IconThemeData(color: Color(0xAA504f57)),
                textTheme: Theme.of(context).textTheme.copyWith(
                      headline6: Theme.of(context).textTheme.headline6.copyWith(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                    ),
                centerTitle: true,
                // brightness: Brightness.light,
                elevation: 0,
              ),
              cursorColor: Color(0xFF04AB4C),
              inputDecorationTheme: InputDecorationTheme(
                contentPadding: EdgeInsets.all(15),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(30.0),
                ),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(30.0),
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(30.0),
                ),
              ),
              primarySwatch: Colors.orange,
              accentColor: Color(0xFF04AB4C),
            ),
            child: extendedNav,
          ),
        ),
      ),
    );
  }
}
