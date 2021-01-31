import 'package:flutter/material.dart';
import 'package:shoppingApp/presentation/dashboard/widgets/search_bar.dart';

class DashboardPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        title: SearchBar(),
      ),
    );
  }
}
