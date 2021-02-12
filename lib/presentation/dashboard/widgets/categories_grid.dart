import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../core/app_router.gr.dart';

class CategoriesGrid extends StatelessWidget {
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
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: [
              CategoryGridItem(
                text1: 'fresh',
                text2: 'vegetables',
                assetLocation: 'assets/category/veg.jpg',
                iconData: FontAwesomeIcons.carrot,
                color: Colors.lightGreen,
              ),
              CategoryGridItem(
                text1: 'fresh',
                text2: 'fruits',
                assetLocation: 'assets/category/fruit.jpg',
                iconData: FontAwesomeIcons.appleAlt,
                color: Colors.red[400],
              ),
              CategoryGridItem(
                text1: 'delicious',
                text2: 'bakery',
                assetLocation: 'assets/category/bakery.jpg',
                iconData: FontAwesomeIcons.breadSlice,
                color: Colors.orangeAccent,
              ),
              CategoryGridItem(
                text1: 'fresh',
                text2: 'dairy',
                assetLocation: 'assets/category/dairy.jpg',
                iconData: FontAwesomeIcons.cheese,
                color: Colors.orangeAccent,
              ),
              CategoryGridItem(
                text1: 'tasty',
                text2: 'prepared',
                assetLocation: 'assets/category/prepared.jpg',
                iconData: FontAwesomeIcons.pizzaSlice,
                color: Colors.yellow[800],
              ),
            ],
          ),
        )
      ],
    );
  }
}

class CategoryGridItem extends StatelessWidget {
  final String text1;
  final String text2;
  final String assetLocation;
  final IconData iconData;
  final Color color;

  const CategoryGridItem({
    Key key,
    @required this.text1,
    @required this.text2,
    @required this.assetLocation,
    @required this.iconData,
    @required this.color,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(8),
      // height: 150,
      width: 100,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(10),
        child: InkWell(
          onTap: () => ExtendedNavigator.of(context).push(
              Routes.categoryItemsList,
              arguments: CategoryItemsListArguments(
                  categoryName: text2.toUpperCase())),
          child: Container(
            color: color.withOpacity(0.2),
            width: 100,
            child: Stack(
              alignment: AlignmentDirectional.bottomCenter,
              children: [
                Image.asset(
                  assetLocation,
                  height: 70,
                  width: double.infinity,
                  fit: BoxFit.cover,
                ),
                Positioned(
                  top: 0,
                  child: Container(
                    padding: EdgeInsets.all(10),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          text1.toUpperCase(),
                          style: TextStyle(
                            color: color,
                            fontSize: 12,
                          ),
                        ),
                        Text(
                          text2.toUpperCase(),
                          style: TextStyle(
                            color: color,
                            fontWeight: FontWeight.w900,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Positioned(
                  bottom: 40,
                  child: Container(
                    alignment: AlignmentDirectional.center,
                    width: 50,
                    height: 50,
                    decoration: BoxDecoration(
                      color: color,
                      shape: BoxShape.circle,
                    ),
                    child: FaIcon(
                      iconData,
                      color: Colors.white,
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
