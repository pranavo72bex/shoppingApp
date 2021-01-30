import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shoppingApp/presentation/common_widget/text_style.dart';

class FavoritesPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      appBar: AppBar(
        leading: Icon(
          Icons.arrow_back,
          color: Colors.black,
        ),
        elevation: 0,
        title: Text(
          "Favorites",
          style: GoogleFonts.poppins(textStyle: Constants.appBarHeading),
        ),
        centerTitle: true,
        backgroundColor: Colors.white,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(
              left: 10.0, right: 10.0, top: 10.0, bottom: 10.0),
          child: Column(
            children: [
              customContainer(),
              SizedBox(height: 10),
              customContainer(),
              SizedBox(height: 10),
              customContainer(),
              SizedBox(height: 10),
              customContainer(),
              SizedBox(height: 10),
              customContainer(),
              SizedBox(height: 10),
              customContainer()
            ],
          ),
        ),
      ),
    );
  }

  Widget customContainer() {
    return Container(
      width: 350,
      height: 100,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(18.0), color: Colors.white),
      child: Row(
        children: [
          Image.asset(
            "assets/background.png",
            width: 100,
          ),
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Column(
              children: [
                Text(
                  "Rs 500",
                  style: GoogleFonts.poppins(
                      textStyle: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.bold,
                          color: Colors.green)),
                ),
                Text(
                  "Organic lemons",
                  style:
                      GoogleFonts.poppins(textStyle: TextStyle(fontSize: 12)),
                ),
                Text(
                  "1 kg",
                )
              ],
            ),
          ),
          Container(
            decoration:
                BoxDecoration(shape: BoxShape.circle, color: Colors.green),
            child: IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.shopping_bag_outlined,
                color: Colors.white,
                size: 23,
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.all(5.0),
            decoration:
                BoxDecoration(shape: BoxShape.circle, color: Colors.green),
            child: IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.delete,
                color: Colors.white,
                size: 23,
              ),
            ),
          )
        ],
      ),
    );
  }
}
