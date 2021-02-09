import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:shoppingApp/domain/product.dart';
import 'package:shoppingApp/presentation/core/app_router.gr.dart';
import 'package:shoppingApp/presentation/core/konstants.dart';

class ProductGridItem extends StatefulWidget {
  final Product product;

  const ProductGridItem({Key key, @required this.product}) : super(key: key);

  @override
  _ProductItemState createState() => _ProductItemState();
}

class _ProductItemState extends State<ProductGridItem> {
  bool isFavorite = false;
  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      borderRadius: BorderRadius.circular(10),
      child: InkWell(
        onTap: () => ExtendedNavigator.of(context).push(
          Routes.detailsScreen,
          arguments: DetailsScreenArguments(
            product: widget.product,
          ),
        ),
        child: Stack(
          children: [
            Positioned(
              left: 0,
              child: Container(
                alignment: Alignment.center,
                height: 40,
                width: 40,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(20),
                    bottomLeft: Radius.circular(20),
                  ),
                  color: kSecondaryColor,
                ),
                child: Text(
                  '80%',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 14,
                  ),
                ),
              ),
            ),
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
            // Center(
            //   child: Container(
            //     width: 100,
            //     height: 100,
            //     decoration: BoxDecoration(
            //       color: widget.product.color.withOpacity(0.3),
            //       shape: BoxShape.circle,
            //     ),
            //     child: Container(),
            //   ),
            // ),
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(height: 10),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 30),
                  child: Align(
                    alignment: Alignment.bottomCenter,
                    child: Image.asset(
                      widget.product.image,
                      // width: 100,
                    ),
                  ),
                ),
                SizedBox(height: 10),
                Text(
                  widget.product.price.toString(),
                  style: TextStyle(color: Colors.green),
                ),
                Text(widget.product.title,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    )),
                Text(
                  widget.product.quantity.toString(),
                  style: Theme.of(context).textTheme.caption,
                ),
                SizedBox(height: 5),
                // Divider(
                //   thickness: 1,
                //   height: 4,
                // ),
                Material(
                  color: Theme.of(context).accentColor,
                  child: InkWell(
                    onTap: () {},
                    child: Container(
                      alignment: Alignment.center,
                      height: 50,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          FaIcon(
                            FontAwesomeIcons.cartPlus,
                            color:
                                Theme.of(context).primaryTextTheme.button.color,
                          ),
                          VerticalDivider(),
                          Text(
                            'Add to cart'.toUpperCase(),
                            style: TextStyle(
                              color: Theme.of(context)
                                  .primaryTextTheme
                                  .button
                                  .color,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                // FlatButton(
                //   // minWidth: double.infinity,
                //   onPressed: () {},
                //   child: Text('Add to cart'),
                // ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
