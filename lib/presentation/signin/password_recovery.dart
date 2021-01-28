import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shoppingApp/presentation/common_widget/custom_button.dart';
import 'package:shoppingApp/presentation/common_widget/text_field_widget.dart';
import 'package:shoppingApp/presentation/common_widget/text_style.dart';

class PasswordRecovery extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFf2f1ee),
      appBar: AppBar(
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
                height: 100,
              ),
              Text(
                "Forget Password",
                style: GoogleFonts.poppins(textStyle: Constants.regularHeading),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                "Enter your email and will send you\n instructions on how to reset it",
                style: GoogleFonts.poppins(textStyle: Constants.subHeading),
              ),
              SizedBox(
                height: 20,
              ),
              TextFieldWidget(
                textelements: "Email Address",
                prefixIcon: Icons.email_outlined,
              ),
              SizedBox(
                height: 20,
              ),
              Btns(
                text: "send link",
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
