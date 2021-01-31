import 'package:flutter/material.dart';
import 'widgets/favorite_list_item.dart';

class FavoritesPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Favorites",
        ),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16),
        child: Column(
          children: [
            FavoriteListItem(),
            FavoriteListItem(),
            FavoriteListItem(),
            FavoriteListItem(),
            FavoriteListItem(),
            FavoriteListItem()
          ],
        ),
      ),
    );
  }
}
