import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shoppingApp/presentation/common_widget/custom_button.dart';
import 'package:shoppingApp/presentation/common_widget/text_style.dart';

class NotificationsPage extends StatefulWidget {
  @override
  _NotificationsPageState createState() => _NotificationsPageState();
}

class _NotificationsPageState extends State<NotificationsPage> {
  //bool isChecked = false;
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
          "Notifications",
          style: GoogleFonts.poppins(textStyle: Constants.appBarHeading),
        ),
        centerTitle: true,
        backgroundColor: Colors.white,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Column(
            children: [
              customeContainer("Allow Notification",
                  "Get notification about what is coming \nin the cart", true),
              SizedBox(
                height: 10,
              ),
              customeContainer("Email Notificaion",
                  "Get notification about what is coming \nin the cart", false),
              SizedBox(
                height: 10,
              ),
              customeContainer("Order Notification",
                  "Get notification about what is coming \nin the cart", true),
              SizedBox(
                height: 10,
              ),
              customeContainer("General Notification",
                  "Get notification about what is coming \nin the cart", false),
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

  Widget customeContainer(String header, String body, bool ischecked) {
    return Container(
      height: 120,
      width: 350,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: Colors.white,
      ),
      child: Padding(
        padding: const EdgeInsets.only(
          left: 10,
          top: 8,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "$header",
                  style:
                      GoogleFonts.poppins(textStyle: Constants.appBarHeading),
                ),
                Checkbox(
                  value: ischecked,
                  onChanged: (_) {
                    setState(() {
                      ischecked = !ischecked;
                    });
                  },
                ),
              ],
            ),
            Text(
              "$body",
            ),
          ],
        ),
      ),
    );
  }
}
