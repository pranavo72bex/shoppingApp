import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shoppingApp/presentation/common_widget/custom_button.dart';
import 'package:shoppingApp/presentation/common_widget/text_style.dart';

class CartPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Color(0xFFf2f1ee),
      appBar: AppBar(
        leading: Icon(
          Icons.arrow_back,
          color: Colors.black,
        ),
        elevation: 0,
        title: Text(
          "Shopping Cart",
          style: GoogleFonts.poppins(textStyle: Constants.appBarHeading),
        ),
        centerTitle: true,
        backgroundColor: Colors.transparent,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
              Icon(Icons.shopping_bag_outlined,
                  color: Colors.green, size: height * 0.25),
              Text("Your Cart is empty",
                  style:
                      GoogleFonts.poppins(textStyle: Constants.regularHeading)),
              Text("Shop for some products in order",
                  style: GoogleFonts.poppins(textStyle: Constants.subHeading)),
              Text(" to purchase them",
                  style: GoogleFonts.poppins(textStyle: Constants.subHeading)),
              SizedBox(
                height: height * 0.40,
              ),
              Btns(
                text: "Submit",
                fillcolor: Color(0xff6cc41d),
                textcolor: Colors.white,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
