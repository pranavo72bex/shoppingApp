import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shoppingApp/presentation/common_widget/text_style.dart';
import 'package:shoppingApp/presentation/write_review/star_rating.dart';

class Reviews extends StatefulWidget {
  @override
  _ReviewsState createState() => _ReviewsState();
}

class _ReviewsState extends State<Reviews> {
  double rating = 3.5;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      appBar: AppBar(
        leading: Icon(
          Icons.arrow_back,
          color: Colors.black,
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.add_circle_outline_outlined),
            onPressed: () {},
            color: Colors.black,
          )
        ],
        elevation: 0,
        title: Text(
          "Reviews",
          style: GoogleFonts.poppins(textStyle: Constants.appBarHeading),
        ),
        centerTitle: true,
        backgroundColor: Colors.white,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
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
      height: 150,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(18), color: Colors.white),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.all(12.0),
                child: CircleAvatar(
                  backgroundImage: ExactAssetImage('assets/profile.jpg'),
                ),
              ),
              Column(
                children: [
                  Text(
                    "David Martin",
                    style: GoogleFonts.poppins(
                        textStyle: TextStyle(fontWeight: FontWeight.bold)),
                  ),
                  Text(
                    "32 minutes ago",
                    style: GoogleFonts.poppins(
                        textStyle: Constants.subtextHeading),
                  )
                ],
              )
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(left: 10, right: 10),
            child: Divider(
              height: 2,
              color: Colors.grey[500],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 8.0),
            child: Row(
              children: [
                StarRating(
                    rating: rating,
                    onRatingChanged: (rating) =>
                        setState(() => this.rating = rating)),
                Text(
                  "  $rating ",
                  style: GoogleFonts.poppins(
                      textStyle: TextStyle(fontWeight: FontWeight.bold)),
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              "Carter team is fast and alwasy delier fresh quality fruits highly recommended",
              maxLines: 2,
              style: Theme.of(context).textTheme.subtitle1,
              overflow: TextOverflow.ellipsis,
            ),
          )
        ],
      ),
    );
  }
}
