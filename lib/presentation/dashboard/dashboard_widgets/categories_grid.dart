import 'package:auto_route/auto_route.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:shoppingApp/domain/dashboard/dashboard.dart';
import 'package:shoppingApp/presentation/core/konstants.dart';

import '../../core/app_router.gr.dart';

class CategoriesGrid extends StatelessWidget {
  final List<Category> shopByCategory;

  const CategoriesGrid({Key key, this.shopByCategory}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'Categories'.toUpperCase(),
              style: Theme.of(context).textTheme.headline6,
            ),
            IconButton(icon: Icon(Icons.arrow_forward), onPressed: () {})
          ],
        ),
        Container(
          height: 155,
          child: ListView.builder(
            itemCount: shopByCategory.length,
            scrollDirection: Axis.horizontal,
            itemBuilder: (BuildContext context, int index) => CategoryGridItem(
              text: shopByCategory[index].name,
              imageUrl: shopByCategory[index].image,
              color: Colors.lightGreen,
            ),
          ),
        )
      ],
    );
  }
}

class CategoryGridItem extends StatelessWidget {
  final String text;
  final String imageUrl;
  final Color color;
  const CategoryGridItem({
    Key key,
    @required this.text,
    @required this.imageUrl,
    @required this.color,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(8),
      // padding: EdgeInsets.all(5),
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: kShadow,
        borderRadius: BorderRadius.circular(12),
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(12),
        child: InkWell(
          onTap: () => ExtendedNavigator.of(context).push(
              Routes.categoryItemsList,
              arguments:
                  CategoryItemsListArguments(categoryName: text.toUpperCase())),
          child: Container(
            child: Stack(
              alignment: AlignmentDirectional.bottomCenter,
              children: [
                CachedNetworkImage(
                  imageUrl: imageUrl,
                  height: double.infinity,
                  width: 150,
                  fit: BoxFit.cover,
                ),
                Positioned(
                  top: 5,
                  left: 5,
                  right: 5,
                  child: Text(
                    text.toUpperCase(),
                    style: TextStyle(
                      color: color,
                      fontWeight: FontWeight.w900,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
