import 'package:flutter/material.dart';

class CategoryItemsList extends StatelessWidget {
  final String categoryName;

  const CategoryItemsList({Key key, this.categoryName}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(categoryName),
      ),
    );
  }
}
