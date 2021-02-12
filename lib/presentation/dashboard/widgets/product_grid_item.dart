import 'package:another_flushbar/flushbar_helper.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../../domain/product.dart';
import '../../core/app_router.gr.dart';
import '../../core/konstants.dart';

class ProductGridItem extends StatefulWidget {
  final Product product;

  const ProductGridItem({Key key, @required this.product}) : super(key: key);

  @override
  _ProductItemState createState() => _ProductItemState();
}

class _ProductItemState extends State<ProductGridItem> {
  bool isFavorite = false;
  final double buttonWidth = 40;
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
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              // height: 100,
              child: Stack(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 10,
                      vertical: 10,
                    ),
                    child: Align(
                      alignment: Alignment.bottomCenter,
                      child: Image.network(
                        widget.product.image,
                        // width: 100,
                      ),
                    ),
                  ),
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
                    bottom: -10,
                    child: IconButton(
                      icon: Icon(
                          isFavorite ? Icons.favorite : Icons.favorite_outline),
                      color: isFavorite ? Colors.red : Colors.grey,
                      onPressed: () async {
                        setState(() {
                          isFavorite = !isFavorite;
                        });
                        await FlushbarHelper.createSuccess(
                                message:
                                    '${widget.product.title} ${isFavorite ? 'added to' : 'removed from'} favourite')
                            .show(context);
                      },
                    ),
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
                ],
              ),
            ),
            Text(widget.product.title,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                )),
            Text(
              widget.product.quantity.toString() + ' Kg',
              style: Theme.of(context).textTheme.caption,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  RatingBarIndicator(
                    // rating: 3,
                    rating: double.tryParse(widget.product.avgRating),
                    itemSize: 16,
                    direction: Axis.horizontal,
                    itemCount: 5,
                    itemBuilder: (BuildContext context, int index) => Icon(
                      Icons.star_rounded,
                      color: kSecondaryColor,
                    ),
                  ),
                  Image.asset(
                    'assets/veg60.png',
                    color: Colors.green,
                    width: 20,
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    '₹ ' + widget.product.price.toString(),
                    style: TextStyle(
                      color: Colors.grey,
                      fontWeight: FontWeight.bold,
                      decoration: TextDecoration.lineThrough,
                    ),
                  ),
                  Text(
                    '₹ ' + widget.product.price.toString(),
                    style: TextStyle(
                      color: Colors.green,
                      fontWeight: FontWeight.bold,
                      decoration: TextDecoration.underline,
                    ),
                  ),
                ],
              ),
            ),
            // SizedBox(height: 5),
            // Divider(
            //   thickness: 1,
            //   height: 4,
            // ),
            Material(
              color: Theme.of(context).accentColor,
              child: InkWell(
                onTap: () async {
                  await FlushbarHelper.createSuccess(
                          message: '${widget.product.title} added to cart')
                      .show(context);
                },
                child: Container(
                  alignment: Alignment.center,
                  height: buttonWidth,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      FaIcon(
                        FontAwesomeIcons.cartPlus,
                        color: Theme.of(context).primaryTextTheme.button.color,
                      ),
                      VerticalDivider(),
                      Text(
                        'Add to cart'.toUpperCase(),
                        style: TextStyle(
                          color:
                              Theme.of(context).primaryTextTheme.button.color,
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
      ),
    );
  }
}
