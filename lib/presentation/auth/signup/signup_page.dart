import 'package:flutter/material.dart';

import 'widget/signup_form.dart';

class SignupPage extends StatefulWidget {
  @override
  _SignupPageState createState() => _SignupPageState();
}

class _SignupPageState extends State<SignupPage> {
  String name, email, phone;

  //TextController to read text entered in text field
  TextEditingController password = TextEditingController();
  TextEditingController confirmpassword = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Signup",
        ),
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: 150,
                height: 150,
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.white,
                    width: 2,
                  ),
                  shape: BoxShape.circle,
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage('assets/app_icon.png'),
                  ),
                ),
              ),
              SignupForm(),
              Image.asset(
                'assets/background.png',
                height: 120,
                width: 350,
                fit: BoxFit.scaleDown,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
