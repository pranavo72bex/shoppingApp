import 'package:flutter/material.dart';

import '../../domain/product.dart';
import 'widgets/add_to_cart.dart';
import 'widgets/color_size.dart';
import 'widgets/counter_with_fav_button.dart';
import 'widgets/description.dart';
import 'widgets/product_title_image.dart';

class DetailsScreen extends StatelessWidget {
  final Product product;

  const DetailsScreen({Key key, this.product}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      // each product have a color
      // backgroundColor: product.color,
      appBar: buildAppBar(context),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            SizedBox(
              height: size.height,
              child: Stack(
                children: <Widget>[
                  Container(
                    margin: EdgeInsets.only(top: size.height * 0.3),
                    padding: EdgeInsets.only(
                      top: size.height * 0.12,
                      left: 16,
                      right: 16,
                    ),
                    // height: 500,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(24),
                        topRight: Radius.circular(24),
                      ),
                    ),
                    child: Column(
                      children: <Widget>[
                        ColorAndSize(product: product),
                        SizedBox(height: 16 / 2),
                        Description(product: product),
                        SizedBox(height: 16 / 2),
                        CounterWithFavBtn(),
                        SizedBox(height: 16 / 2),
                        AddToCart(product: product)
                      ],
                    ),
                  ),
                  ProductTitleWithImage(product: product)
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  AppBar buildAppBar(BuildContext context) {
    return AppBar(
      // backgroundColor: product.color,
      elevation: 0,
      // leading: IconButton(
      //   icon: SvgPicture.asset(
      //     'assets/icons/back.svg',
      //     color: Colors.white,
      //   ),
      //   onPressed: () => Navigator.pop(context),
      // ),
      // actions: <Widget>[
      //   // IconButton(
      //   //   icon: Icon(
      //   //     Icons.search,
      //   //     color: Colors.white,
      //   //   ),
      //   //   onPressed: () {},
      //   // ),
      //   // IconButton(
      //   //   color: Colors.white,
      //   //   icon: FaIcon(
      //   //     FontAwesomeIcons.cartPlus,
      //   //   ),
      //   //   onPressed: () {},
      //   // ),
      //   // SizedBox(width: 16 / 2)
      // ],
    );
  }
}
