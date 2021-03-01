import 'package:another_flushbar/flushbar_helper.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:shoppingApp/domain/dashboard/dashboard.dart';

import '../../core/konstants.dart';

class FeaturedProductGridItem extends StatefulWidget {
  final FeaturedProductElement featuredProductElement;

  const FeaturedProductGridItem(
      {Key key, @required this.featuredProductElement})
      : super(key: key);

  @override
  _ProductItemState createState() => _ProductItemState();
}

class _ProductItemState extends State<FeaturedProductGridItem> {
  bool isFavorite = false;
  final double buttonWidth = 40;
  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      borderRadius: BorderRadius.circular(10),
      child: InkWell(
        // onTap: () => ExtendedNavigator.of(context).push(
        //   Routes.detailsScreen,
        //   arguments: DetailsScreenArguments(
        //     product: widget.featuredProductElement,
        //   ),
        // ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              height: 150,
              width: double.infinity,
              child: Stack(
                children: [
                  Positioned.fill(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 10,
                        vertical: 10,
                      ),
                      child: Ink.image(
                          image: NetworkImage(
                              widget.featuredProductElement.image)),
                      // child: Image.network(
                      //   widget.product.image,
                      //   fit: BoxFit.cover,
                      //   // width: 100,
                      // ),
                    ),
                  ),
                  Positioned(
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
                    right: -10,
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
                                    '${widget.featuredProductElement.title} ${isFavorite ? 'added to' : 'removed from'} favourite')
                            .show(context);
                      },
                    ),
                  ),
                ],
              ),
            ), // //

            Text(
              widget.featuredProductElement.title,
              style: Theme.of(context).textTheme.subtitle2,
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
            ),
            Text(
              widget.featuredProductElement.quantity.toString() + ' Kg',
              style: Theme.of(context).textTheme.caption,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  RatingBarIndicator(
                    // rating: 3,
                    rating: double.tryParse(
                        widget.featuredProductElement.avgRating ?? '0'),
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
                    '₹ ' + widget.featuredProductElement.price.toString(),
                    style: TextStyle(
                      color: Colors.grey,
                      fontWeight: FontWeight.bold,
                      decoration: TextDecoration.lineThrough,
                    ),
                  ),
                  Text(
                    '₹ ' + widget.featuredProductElement.price.toString(),
                    style: TextStyle(
                      color: Colors.green,
                      fontWeight: FontWeight.bold,
                      decoration: TextDecoration.underline,
                    ),
                  ),
                ],
              ),
            ),

            Material(
              color: Theme.of(context).accentColor,
              child: InkWell(
                onTap: () async {
                  await FlushbarHelper.createSuccess(
                          message:
                              '${widget.featuredProductElement.title} added to cart')
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
                        color: Colors.white,
                      ),
                      VerticalDivider(),
                      Text(
                        'Add to cart'.toUpperCase(),
                        style: TextStyle(
                          color: Colors.white,
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
