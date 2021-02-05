import 'package:flutter/material.dart';
import 'package:shoppingApp/domain/product.dart';

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
            children: products
                .map(
                  (product) => ProductItem(
                    color: product.color.withOpacity(0.3),
                    price: product.price.toString(),
                    itemName: product.title,
                    assetLocation: product.image,
                    quantity: product.quantity.toString(),
                  ),
                )
                .toList(),
          ),
        )
      ],
    );
  }
}

class ProductItem extends StatefulWidget {
  final String price;
  final String itemName;
  final String assetLocation;
  final String quantity;
  final Color color;

  const ProductItem({
    Key key,
    @required this.color,
    @required this.price,
    @required this.itemName,
    @required this.assetLocation,
    @required this.quantity,
  }) : super(key: key);

  @override
  _ProductItemState createState() => _ProductItemState();
}

class _ProductItemState extends State<ProductItem> {
  bool isFavorite = false;
  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      borderRadius: BorderRadius.circular(10),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            padding: EdgeInsets.only(top: 10),
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
                    width: 100,
                    height: 100,
                    decoration: BoxDecoration(
                      color: widget.color,
                      shape: BoxShape.circle,
                    ),
                    child: Container(),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 30),
                  child: Align(
                    alignment: Alignment.bottomCenter,
                    child: Image.asset(
                      widget.assetLocation,
                      // width: 100,
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 10),
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
