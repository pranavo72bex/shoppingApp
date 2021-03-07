import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:shoppingApp/presentation/core/konstants.dart';

class SocialMedia extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Image.asset(
          "assets/app_icon.jpg",
          height: 50,
          width: 100,
        ),
        Row(
          children: [
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
            )
          ],
        )
      ],
    );
  }
}
