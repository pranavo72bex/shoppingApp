import 'package:flutter/material.dart';

import '../common_widget/custom_button.dart';
import '../common_widget/text_field_widget.dart';
import '../common_widget/text_style.dart';

class AboutMePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "About Me",
        ),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Personal Details",
              style: Constants.appBarHeading,
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
              style: Constants.appBarHeading,
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
            CustomFullWidthButton(
              text: "Save settings",
              onPressed: () {},
            ),
          ],
        ),
      ),
    );
  }
}
