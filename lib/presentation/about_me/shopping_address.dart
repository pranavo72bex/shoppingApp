import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shoppingApp/presentation/about_me/timeline_widget.dart';
import 'package:shoppingApp/presentation/common_widget/custom_button.dart';
import 'package:shoppingApp/presentation/common_widget/text_field_widget.dart';
import 'package:shoppingApp/presentation/common_widget/text_style.dart';

class AddShipping extends StatefulWidget {
  @override
  _AddShippingState createState() => _AddShippingState();
}

class _AddShippingState extends State<AddShipping> {
  bool isChecked = false;

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
          "Shipping Address",
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
              TimeLine(),
              TextFieldWidget(
                textelements: "Name",
                prefixIcon: Icons.supervised_user_circle,
              ),
              SizedBox(
                height: 10,
              ),
              TextFieldWidget(
                textelements: "Emailaddress",
                prefixIcon: Icons.email,
              ),
              SizedBox(
                height: 10,
              ),
              TextFieldWidget(
                textelements: "Phone",
                prefixIcon: Icons.phone_android_rounded,
              ),
              SizedBox(
                height: 10,
              ),
              TextFieldWidget(
                  textelements: "Address", prefixIcon: Icons.maps_ugc_rounded),
              SizedBox(
                height: 10,
              ),
              TextFieldWidget(
                textelements: "Zip code",
                prefixIcon: Icons.code_rounded,
              ),
              SizedBox(
                height: 10,
              ),
              TextFieldWidget(
                textelements: "City",
                prefixIcon: Icons.flag_rounded,
              ),
              Row(
                children: [
                  Checkbox(
                    value: isChecked,
                    onChanged: (_) {
                      setState(() {
                        isChecked = !isChecked;
                      });
                    },
                  ),
                  Text(
                    "save the address",
                    style: GoogleFonts.poppins(textStyle: Constants.signIn),
                  ),
                ],
              ),
              SizedBox(
                height: 40,
              ),
              Btns(
                text: "Next",
                onPressed: () {},
              ),
            ],
          ),
        ),
      ),
    );
  }
}
