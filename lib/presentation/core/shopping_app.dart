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
            fontFamily: 'GoogleFonts',
            appBarTheme: AppBarTheme(
              textTheme:
                  GoogleFonts.poppinsTextTheme(Theme.of(context).textTheme),
              centerTitle: true,
              brightness: Brightness.light,
              color: Colors.transparent,
              elevation: 0,
            ),
            primaryColor: Colors.white,
            primarySwatch: Colors.green,
          ),
          child: extendedNav,
        ),
      ),
      // home: Scaffold(
      //   floatingActionButton: FloatingActionButton(
      //     onPressed: () {},
      //     child: Icon(Icons.add),
      //   ),
      //   appBar: AppBar(
      //     title: Text('Shopping App'),
      //   ),
      //   body: Center(
      //     child: Container(
      //       child: Text('Hello World'),
      //     ),
      //   ),
      // ),
    );
  }
}
