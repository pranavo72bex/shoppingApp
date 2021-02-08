import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../common_widget/custom_button.dart';
import '../common_widget/text_style.dart';
import '../review/widgets/star_rating.dart';

class WriteReview extends StatefulWidget {
  @override
  _WriteReviewState createState() => _WriteReviewState();
}

class _WriteReviewState extends State<WriteReview> {
  double rating = 3.5;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFf2f1ee),
      appBar: AppBar(
        leading: Icon(
          Icons.arrow_back,
          color: Colors.black,
        ),
        elevation: 0,
        title: Text(
          "Password Recovery",
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
              SizedBox(
                height: 20,
              ),
              Text("What do you think",
                  style:
                      GoogleFonts.poppins(textStyle: Constants.regularHeading)),
              Text("Please give your rating by clicking on",
                  style: GoogleFonts.poppins(textStyle: Constants.subHeading)),
              Text(" the starts below",
                  style: GoogleFonts.poppins(textStyle: Constants.subHeading)),
              SizedBox(
                height: 40,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  StarRating(
                    rating: rating,
                    onRatingChanged: (rating) =>
                        setState(() => this.rating = rating),
                  ),
                ],
              ),
              SizedBox(
                height: 30,
              ),
              TextFormField(
                minLines: 2,
                maxLines: 5,
                keyboardType: TextInputType.multiline,
                decoration: InputDecoration(
                  hintText: "Tell us about your experience",
                  hintStyle: TextStyle(color: Colors.grey),
                  prefixIcon: Icon(
                    Icons.note_add_rounded,
                    color: Colors.grey,
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(20.0)),
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              CustomFullWidthButton(
                text: "Submit",
                fillcolor: Color(0xff6cc41d),
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
