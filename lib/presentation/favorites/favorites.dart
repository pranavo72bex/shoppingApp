import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shoppingApp/presentation/common_widget/text_style.dart';
import 'package:shoppingApp/presentation/favorites/widgets/favorite_list_item.dart';

class FavoritesPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Favorites",
          style: GoogleFonts.poppins(textStyle: Constants.appBarHeading),
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
