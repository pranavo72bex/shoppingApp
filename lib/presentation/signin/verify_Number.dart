import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shoppingApp/presentation/common_widget/text_style.dart';

class EnterOTP extends StatelessWidget {
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
          "Shopping Cart",
          style: GoogleFonts.poppins(textStyle: Constants.appBarHeading),
        ),
        centerTitle: true,
        backgroundColor: Color(0xFFf2f1ee),
      ),
      body: Column(
        children: [
          SizedBox(
            height: 60,
          ),
          Text(
            "Verify your number",
            style: GoogleFonts.poppins(textStyle: Constants.regularHeading),
          ),
          Text(
            "Enter your OTP code below",
            style: GoogleFonts.poppins(textStyle: Constants.subHeading),
          ),
          SizedBox(
            height: 30,
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child:
                Column(mainAxisAlignment: MainAxisAlignment.center, children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  OTPDigitTextFieldBox(first: true, last: false),
                  OTPDigitTextFieldBox(first: false, last: false),
                  OTPDigitTextFieldBox(first: false, last: false),
                  OTPDigitTextFieldBox(first: false, last: true),
                ],
              )
            ]),
          ),
          SizedBox(
            height: 30,
          ),
          Text(
            "Didn't receive the code?",
            style: GoogleFonts.poppins(textStyle: Constants.subHeading),
          ),
          Text(
            "Resend a new code",
            style: GoogleFonts.poppins(textStyle: Constants.passwordHeading),
          ),
        ],
      ),
    );
  }
}

class OTPDigitTextFieldBox extends StatelessWidget {
  final bool first;
  final bool last;
  const OTPDigitTextFieldBox(
      {Key key, @required this.first, @required this.last})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(13),
      ),
      height: 65,
      child: Center(
        child: AspectRatio(
          aspectRatio: 1,
          child: TextField(
            autofocus: true,
            onChanged: (value) {
              if (value.length == 1 && last == false) {
                FocusScope.of(context).nextFocus();
              }
              if (value.length == 0 && first == false) {
                FocusScope.of(context).previousFocus();
              }
            },
            showCursor: false,
            readOnly: false,
            textAlign: TextAlign.center,
            style: TextStyle(color: Colors.black),
            keyboardType: TextInputType.number,
            maxLength: 1,
            decoration: InputDecoration(
              fillColor: Colors.green,
              counter: Offstage(),
              enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(width: 2, color: Colors.white),
                  borderRadius: BorderRadius.circular(10)),
              focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(width: 2, color: Colors.green),
                  borderRadius: BorderRadius.circular(13)),
              hintText: "*",
              hintStyle: TextStyle(color: Colors.black),
            ),
          ),
        ),
      ),
    );
  }
}
