import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shoppingApp/presentation/common_widget/custom_button.dart';
import 'package:shoppingApp/presentation/common_widget/text_field_widget.dart';
import 'package:shoppingApp/presentation/common_widget/text_style.dart';

class AboutMePage extends StatelessWidget {
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
          "About Me",
          style: GoogleFonts.poppins(textStyle: Constants.appBarHeading),
        ),
        centerTitle: true,
        backgroundColor: Colors.white,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Personal Details",
                style: GoogleFonts.poppins(textStyle: Constants.appBarHeading),
              ),
              SizedBox(
                height: 10,
              ),
              TextFieldWidget(
                textelements: "Name",
                prefixIcon: Icons.supervised_user_circle,
              ),
              SizedBox(
                height: 10,
              ),
              TextFieldWidget(textelements: "Email", prefixIcon: Icons.mail),
              SizedBox(
                height: 10,
              ),
              TextFieldWidget(
                textelements: "Phone Number",
                prefixIcon: Icons.phone_android_rounded,
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                "Change Password",
                style: GoogleFonts.poppins(textStyle: Constants.appBarHeading),
              ),
              SizedBox(
                height: 10,
              ),
              TextFieldWidget(
                textelements: "Current Password",
                prefixIcon: Icons.lock_outline_rounded,
              ),
              SizedBox(
                height: 10,
              ),
              TextFieldWidget(
                isPassword: true,
                textelements: "Password",
                prefixIcon: Icons.lock_outline_rounded,
                suffixIcon: Icons.remove_red_eye_outlined,
              ),
              SizedBox(
                height: 10,
              ),
              TextFieldWidget(
                textelements: "Conform new password",
                prefixIcon: Icons.lock_outline_rounded,
              ),
              SizedBox(
                height: 40,
              ),
              Btns(
                text: "Save settings",
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
