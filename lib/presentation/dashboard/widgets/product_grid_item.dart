import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:shoppingApp/domain/product.dart';
import 'package:shoppingApp/presentation/core/app_router.gr.dart';

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
                        icon: Icon(isFavorite
                            ? Icons.favorite
                            : Icons.favorite_outline),
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
                        color: widget.product.color.withOpacity(0.3),
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
                        widget.product.image,
                        // width: 100,
                      ),
                    ),
                  ),
                ],
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
      ),
    );
  }
}
