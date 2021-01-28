import 'package:flutter/material.dart';

class ShoppingApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        appBarTheme: AppBarTheme(
          centerTitle: true,
          // textTheme: TextTheme(),
          brightness: Brightness.light,
          color: Colors.transparent,
          elevation: 0,
        ),
        // primaryColor: Colors.white,
        primarySwatch: Colors.green,
      ),
      title: 'Shopping App',
      home: Scaffold(
        floatingActionButton: FloatingActionButton(onPressed: () {}),
        appBar: AppBar(
          title: Text('Shopping App'),
        ),
        body: Center(
          child: Container(
            child: Text('Hello World'),
          ),
        ),
      ),
    );
  }
}
