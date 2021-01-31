import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class PopularDealsGrid extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'Popular Deals'.toUpperCase(),
              style: Theme.of(context).textTheme.headline6,
            ),
            IconButton(icon: Icon(Icons.arrow_forward), onPressed: () {})
          ],
        ),
        Container(
          child: GridView.count(
            childAspectRatio: 0.65,
            physics: NeverScrollableScrollPhysics(),
            // padding: EdgeInsets.all(8),
            mainAxisSpacing: 16,
            crossAxisSpacing: 16,
            // scrollDirection: Axis.horizontal,
            shrinkWrap: true,
            crossAxisCount: 2,
            children: [
              CategoryGridItem(
                price: '\$10',
                itemName: 'Organic Oranges',
                quantity: '1 Kg',
                assetLocation: 'assets/products/orange.png',
                color: Colors.orange[100],
              ),
              CategoryGridItem(
                price: '\$10',
                itemName: 'Organic Oranges',
                quantity: '1 Kg',
                assetLocation: 'assets/products/orange.png',
                color: Colors.orange[100],
              ),
              CategoryGridItem(
                price: '\$10',
                itemName: 'Organic Oranges',
                quantity: '1 Kg',
                assetLocation: 'assets/products/orange.png',
                color: Colors.orange[100],
              ),
              CategoryGridItem(
                price: '\$10',
                itemName: 'Organic Oranges',
                quantity: '1 Kg',
                assetLocation: 'assets/products/orange.png',
                color: Colors.orange[100],
              ),
            ],
          ),
        )
      ],
    );
  }
}

class CategoryGridItem extends StatefulWidget {
  final String price;
  final String itemName;
  final String assetLocation;
  final String quantity;
  final Color color;

  const CategoryGridItem({
    Key key,
    @required this.color,
    @required this.price,
    @required this.itemName,
    @required this.assetLocation,
    @required this.quantity,
  }) : super(key: key);

  @override
  _CategoryGridItemState createState() => _CategoryGridItemState();
}

class _CategoryGridItemState extends State<CategoryGridItem> {
  bool isFavorite = false;
  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      borderRadius: BorderRadius.circular(10),
      child: Column(
        children: [
          Container(
            height: 130,
            child: Stack(
              children: [
                Positioned(
                  right: 0,
                  child: IconButton(
                      icon: Icon(
                          isFavorite ? Icons.favorite : Icons.favorite_outline),
                      color: isFavorite ? Colors.red : Colors.grey,
                      onPressed: () {
                        setState(() {
                          isFavorite = !isFavorite;
                        });
                      }),
                ),
                Center(
                  child: Container(
                    width: 80,
                    height: 80,
                    decoration: BoxDecoration(
                      color: widget.color,
                      shape: BoxShape.circle,
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.bottomCenter,
                  child: Image.asset(
                    widget.assetLocation,
                    width: 80,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 15),
          Text(
            widget.price,
            style: TextStyle(color: Colors.green),
          ),
          Text(widget.itemName,
              style: TextStyle(
                fontWeight: FontWeight.bold,
              )),
          Text(
            widget.quantity,
            style: Theme.of(context).textTheme.caption,
          ),
          SizedBox(height: 5),
          Divider(
            thickness: 1,
            height: 4,
          ),
          FlatButton(
            // minWidth: double.infinity,
            onPressed: () {},
            child: Text('Add to cart'),
          ),
        ],
      ),
    );
  }
}
