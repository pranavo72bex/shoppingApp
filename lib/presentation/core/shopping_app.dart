import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'app_router.gr.dart';

class ShoppingApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Shopping App',
      builder: ExtendedNavigator.builder<AppRouter>(
        router: AppRouter(),
        builder: (context, extendedNav) => Theme(
          data: ThemeData(
            textTheme: GoogleFonts.poppinsTextTheme(
              Theme.of(context).textTheme,
            ),
            // scaffoldBackgroundColor: Color(0xFFF2F1EE),
            scaffoldBackgroundColor: Color(0xFFF8F8FF),
            // scaffoldBackgroundColor: Colors.lightBlue[50],
            appBarTheme: AppBarTheme().copyWith(
              iconTheme:
                  IconThemeData(color: Color(0xAA504f57)), //back button theme
              actionsIconTheme: IconThemeData(color: Color(0xAA504f57)),
              textTheme: Theme.of(context).textTheme.copyWith(
                    headline6: Theme.of(context).textTheme.headline6.copyWith(
                          color: Color(0xAA504f57),
                          fontWeight: FontWeight.bold,
                        ),
                  ),
              centerTitle: true,
              brightness: Brightness.light,
              color: Colors.white,
              elevation: 0,
            ),
            // primaryColor: Colors.white,
            primarySwatch: Colors.green,
          ),
          child: extendedNav,
        ),
      ),
    );
  }
}
