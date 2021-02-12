import 'package:flutter/material.dart';

import '../common_widget/custom_button.dart';
import '../common_widget/text_style.dart';

class CartPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Shopping Cart",
        ),
      ),
      body: Center(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              Icon(Icons.shopping_bag_outlined,
                  color: Colors.green, size: height * 0.25),
              Text("Your Cart is empty", style: Constants.regularHeading),
              Text("Shop for some products in order",
                  style: Constants.subHeading),
              Text(" to purchase them", style: Constants.subHeading),
              SizedBox(height: height * 0.2),
              CustomFullWidthButton(
                text: "Submit",
                fillcolor: Theme.of(context).accentColor,
                textcolor: Colors.white,
                onPressed: () {},
              ),
            ],
          ),
        ),
      ),
    );
  }
}
