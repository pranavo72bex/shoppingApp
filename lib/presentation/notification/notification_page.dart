import 'package:flutter/material.dart';

import '../common_widget/custom_button.dart';
import '../common_widget/text_style.dart';

class NotificationsPage extends StatefulWidget {
  @override
  _NotificationsPageState createState() => _NotificationsPageState();
}

class _NotificationsPageState extends State<NotificationsPage> {
  //bool isChecked = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Notifications",
          style: Constants.appBarHeading,
        ),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            CustomCheckbox(
                title: "Allow Notification",
                subtitle: "Get notification about what is coming in the cart",
                value: true),
            SizedBox(
              height: 10,
            ),
            CustomCheckbox(
                title: "Email Notificaion",
                subtitle: "Get notification about what is coming in the cart",
                value: false),
            SizedBox(
              height: 10,
            ),
            CustomCheckbox(
                title: "Order Notification",
                subtitle: "Get notification about what is coming in the cart",
                value: true),
            SizedBox(
              height: 10,
            ),
            CustomCheckbox(
                title: "General Notification",
                subtitle: "Get notification about what is coming in the cart",
                value: false),
            SizedBox(
              height: 40,
            ),
            CustomFullWidthButton(
              text: "Save settings",
              // fillcolor: Color(0xff6cc41d),
              onPressed: () {},
            ),
          ],
        ),
      ),
    );
  }
}

class CustomCheckbox extends StatefulWidget {
  const CustomCheckbox({
    Key key,
    @required this.title,
    @required this.subtitle,
    @required this.value,
  }) : super(key: key);

  final String title;
  final String subtitle;
  final bool value;

  @override
  _CustomCheckboxState createState() => _CustomCheckboxState();
}

class _CustomCheckboxState extends State<CustomCheckbox> {
  bool isChecked = true;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: Colors.white,
      ),
      child: CheckboxListTile(
        value: isChecked,
        onChanged: (bool) {
          setState(() {
            isChecked = bool;
          });
        },
        title: Text(widget.title),
        subtitle: Text(widget.subtitle),
      ),
    );
  }
}
