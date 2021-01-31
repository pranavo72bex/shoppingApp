import 'package:flutter/material.dart';

import 'widgets/review_item.dart';

class ReviewPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
            icon: Icon(Icons.add_circle_outline_outlined),
            onPressed: () {},
          )
        ],
        title: Text(
          "Reviews",
        ),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          // crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ReviewItem(),
            ReviewItem(),
            ReviewItem(),
            ReviewItem(),
          ],
        ),
      ),
    );
  }
}
