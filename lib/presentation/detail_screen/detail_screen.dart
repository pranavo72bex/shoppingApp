import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:shoppingApp/presentation/core/konstants.dart';
import 'package:shoppingApp/presentation/detail_screen/widgets/isveg.dart';
import 'package:shoppingApp/presentation/detail_screen/widgets/price_product.dart';
import 'package:shoppingApp/presentation/detail_screen/widgets/product_image.dart';
import 'package:shoppingApp/presentation/detail_screen/widgets/product_title.dart';
import '../../domain/product/product.dart';
import 'widgets/counter_with_fav_button.dart';
import 'widgets/description.dart';

class DetailsScreen extends StatelessWidget {
  final Product product;

  const DetailsScreen({Key key, this.product}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: kSecondaryColor,
      appBar: buildAppBar(context),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            SizedBox(
              height: size.height,
              child: Stack(
                children: <Widget>[
                  ProductImage(product: product),
                  Container(
                    margin: EdgeInsets.only(top: size.height * 0.34),
                    padding: EdgeInsets.only(
                      top: size.height * 0.02,
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
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        ProductTitle(product: product),
                        Isveg(product: product),
                        ProductPrice(product: product),
                        CounterWithFavBtn(),
                        SizedBox(height: 16 / 2),
                        Description(product: product),
                      ],
                    ),
                  ),
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
      leading: IconButton(
        icon: Icon(
          Icons.arrow_back_ios_outlined,
          color: Colors.white,
        ),
        onPressed: () => Navigator.pop(context),
      ),
      actions: <Widget>[
        IconButton(
          color: Colors.white,
          icon: FaIcon(
            FontAwesomeIcons.cartPlus,
          ),
          onPressed: () {},
        ),
        SizedBox(width: 16 / 2)
      ],
    );
  }
}
