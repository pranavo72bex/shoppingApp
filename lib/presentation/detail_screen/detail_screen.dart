import 'package:flutter/material.dart';
import '../core/konstants.dart';
import 'widgets/add_to_cart.dart';
import 'widgets/price_product.dart';
import 'widgets/product_image.dart';
import 'widgets/product_title.dart';
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
                    margin: EdgeInsets.only(top: size.height * 0.33),
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
                        SizedBox(height: 16 / 2),
                        ProductPrice(product: product),
                        CounterWithFavBtn(),
                        SizedBox(height: 16 / 2),
                        Description(product: product),
                        AddToCart(product: product)
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
      backgroundColor: kSecondaryColor,
      elevation: 0,
      leading: IconButton(
        icon: Icon(
          Icons.arrow_back,
          color: Colors.black,
        ),
        onPressed: () => Navigator.pop(context),
      ),
    );
  }
}
