import 'package:flutter/material.dart';
import 'package:shoppingApp/presentation/common_widget/custom_button.dart';
import 'package:shoppingApp/presentation/common_widget/text_field_widget.dart';
import 'package:shoppingApp/presentation/common_widget/text_style.dart';

class MyAddress extends StatefulWidget {
  @override
  _MyAddressState createState() => _MyAddressState();
}

class _MyAddressState extends State<MyAddress> {
  bool isChecked = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      appBar: AppBar(
        title: Text(
          "My Address",
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          children: [
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color: Colors.white,
              ),
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Container(
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.green,
                      ),
                      child: IconButton(
                        icon: Icon(
                          Icons.maps_ugc_rounded,
                          color: Colors.white,
                        ),
                        onPressed: () {},
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Willam Crown", style: Constants.appBarHeading),
                      Text("Address of person\nCitiname of person",
                          style: Constants.subtextHeading),
                      Text("+1 202 555 0142", style: Constants.appBarHeading),
                    ],
                  )
                ],
              ),
            ),
            SizedBox(height: 10),
            Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(22), color: Colors.white),
              child: Padding(
                padding:
                    const EdgeInsets.only(left: 12.0, right: 12.0, top: 12.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    TextFieldWidget(
                      textelements: "Name of Customer",
                      prefixIcon: Icons.supervisor_account_sharp,
                    ),
                    SizedBox(height: 10),
                    TextFieldWidget(
                      textelements: "Addresss",
                      prefixIcon: Icons.maps_ugc_rounded,
                    ),
                    SizedBox(height: 10),
                    TextFieldWidget(
                      textelements: "City name",
                      prefixIcon: Icons.maps_ugc_rounded,
                    ),
                    SizedBox(height: 10),
                    TextFieldWidget(
                        textelements: "Mobile Number",
                        prefixIcon: Icons.mobile_friendly_outlined),
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
                        Text("make default", style: Constants.appBarHeading)
                      ],
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            CustomFullWidthButton(
              text: "Save Setting",
              fillcolor: Color(0xff6cc41d),
              textcolor: Colors.white,
              onPressed: () {},
            ),
          ],
        ),
      ),
    );
  }
}
