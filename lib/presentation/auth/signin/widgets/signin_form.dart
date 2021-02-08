import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:shoppingApp/presentation/common_widget/custom_button.dart';
import 'package:shoppingApp/presentation/common_widget/text_style.dart';
import 'package:shoppingApp/presentation/core/app_router.gr.dart';

class SigninForm extends StatefulWidget {
  @override
  _SigninFormState createState() => _SigninFormState();
}

class _SigninFormState extends State<SigninForm> {
  String name, email, phone;
  bool isChecked = false;

  TextEditingController password = TextEditingController();
  TextEditingController confirmpassword = TextEditingController();

  final GlobalKey<FormState> _formkey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Column(
        children: [
          TextFormField(
            keyboardType: TextInputType.emailAddress,
            decoration: InputDecoration(
              prefixIcon: Icon(Icons.email_outlined),
              labelText: 'Email Address',
            ),
            validator: (String value) {
              if (value.isEmpty) {
                return 'Email field should not be empty';
              }
              if (!RegExp("^[a-zA-Z0-9+_.-]+@[a-zA-Z0-9.-]+.[a-z]")
                  .hasMatch(value)) {
                return 'Invalid Email';
              }
              return null;
            },
            onSaved: (String value) {
              // email = value;
            },
          ),
          SizedBox(height: 20),
          TextFormField(
            // controller: password,
            keyboardType: TextInputType.text,
            decoration: InputDecoration(
              prefixIcon: Icon(
                Icons.lock_outline,
              ),
              labelText: 'Password',
            ),

            validator: (String value) {
              if (value.isEmpty) {
                return 'Password field should not be empty';
              }
              if (value.length < 6) {
                return 'Password too short';
              }
              return null;
            },
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Checkbox(
                    value: isChecked,
                    onChanged: (_) {
                      setState(() {
                        isChecked = !isChecked;
                        print(isChecked);
                      });
                    },
                  ),
                  InkWell(
                    onTap: () {
                      setState(() {
                        isChecked = !isChecked;
                      });
                    },
                    child: Text(
                      "Remember me",
                      style: Constants.rememberMe,
                    ),
                  ),
                ],
              ),
              InkWell(
                onTap: () =>
                    ExtendedNavigator.of(context).push(Routes.passwordRecovery),
                child: Text(
                  "Forget Password",
                  style: Constants.passwordHeading,
                ),
              ),
            ],
          ),
          CustomFullWidthButton(
            text: 'Login',
            onPressed: () {
              if (_formkey.currentState.validate()) {
                print("successful");

                return;
              } else {
                print("UnSuccessfull");
              }
            },
          ),
        ],
      ),
    );
  }
}
