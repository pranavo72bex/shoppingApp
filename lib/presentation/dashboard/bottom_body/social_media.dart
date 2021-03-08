import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:shoppingApp/presentation/core/app_router.gr.dart';
import 'package:shoppingApp/presentation/core/konstants.dart';

class SocialMedia extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.asset(
          "assets/body.jpg",
          height: 60,
        ),
        Row(
          children: [
            Spacer(),
            IconButton(
              icon: FaIcon(FontAwesomeIcons.facebook),
              onPressed: () {},
              color: kSecondaryColor,
            ),
            IconButton(
              icon: FaIcon(FontAwesomeIcons.twitter),
              onPressed: () {},
              color: kSecondaryColor,
            ),
            IconButton(
              icon: FaIcon(FontAwesomeIcons.pinterest),
              onPressed: () {},
              color: kSecondaryColor,
            ),
            IconButton(
              icon: FaIcon(FontAwesomeIcons.instagram),
              onPressed: () {},
              color: kSecondaryColor,
            ),
            Spacer()
          ],
        ),
        Text(
          "Information",
          // style: TextStyle(
          //     color: Colors.black, fontWeight: FontWeight.bold, fontSize: 25),
        ),
        InkWell(
          onTap: () {
            ExtendedNavigator.of(context).push(Routes.aboutUs);
          },
          child: Text(
            "About-us",
            // style: TextStyle(color: Colors.black, fontSize: 17),
          ),
        ),
        InkWell(
          onTap: () {
            ExtendedNavigator.of(context).push(Routes.fAQ);
          },
          child: Text(
            "FAQ",
            // style: TextStyle(color: Colors.black, fontSize: 17),
          ),
        ),
        InkWell(
          onTap: () {
            ExtendedNavigator.of(context).push(Routes.privacyPolicy);
          },
          child: Text(
            "Privacy policy",
            // style: TextStyle(color: Colors.black, fontSize: 17),
          ),
        ),
        InkWell(
          onTap: () {
            ExtendedNavigator.of(context).push(Routes.termAndCondition);
          },
          child: Text(
            "Terms and Conditions",
            // style: TextStyle(color: Colors.black, fontSize: 17),
          ),
        ),
        InkWell(
          onTap: () {
            ExtendedNavigator.of(context).push(Routes.contactUs);
          },
          child: Text(
            "Contact us",
            // style: TextStyle(color: Colors.black, fontSize: 17),
          ),
        ),
        SizedBox(
          height: 5,
        ),
        Container(
          padding: EdgeInsets.all(10),
          child: Text(
            "Powered by Daily Mart Indoor.\n2021 - All rights reserved",
            textAlign: TextAlign.center,
            style: TextStyle(color: Colors.white),
          ),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
            color: Colors.green,
          ),
          // height: 60,
          width: double.infinity,
        )
      ],
    );
  }
}
