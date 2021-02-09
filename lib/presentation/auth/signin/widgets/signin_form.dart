import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:form_validator/form_validator.dart';

import 'package:shoppingApp/presentation/common_widget/custom_button.dart';
import 'package:shoppingApp/presentation/common_widget/text_style.dart';
import 'package:shoppingApp/presentation/core/app_router.gr.dart';

class SigninForm extends StatefulWidget {
  @override
  _SigninFormState createState() => _SigninFormState();
}

class _SigninFormState extends State<SigninForm> {
  bool isChecked = false;
  bool isObscured = true;
  TextEditingController passwordController = TextEditingController();
  TextEditingController confirmpasswordController = TextEditingController();
  TextEditingController emailController = TextEditingController();

  final GlobalKey<FormState> _formkey = GlobalKey<FormState>();

  final emailValidator = ValidationBuilder().email().build();
  final passwordValidator = ValidationBuilder().minLength(6).build();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Form(
        key: _formkey,
        child: Column(
          children: [
            TextFormField(
              controller: emailController,
              keyboardType: TextInputType.emailAddress,
              decoration: InputDecoration(
                prefixIcon: Icon(Icons.email_outlined),
                labelText: 'Email Address',
              ),
              validator: emailValidator,
              // validator: (String value) {
              //   if (value.isEmpty) {
              //     return 'Email field should not be empty';
              //   }
              //   if (!RegExp("^[a-zA-Z0-9+_.-]+@[a-zA-Z0-9.-]+.[a-z]")
              //       .hasMatch(value)) {
              //     return 'Invalid Email';
              //   }
              //   return null;
              // },
              onSaved: (String value) {},
            ),
            SizedBox(height: 20),
            TextFormField(
              controller: passwordController,
              keyboardType: TextInputType.text,
              decoration: InputDecoration(
                prefixIcon: Icon(
                  Icons.lock_outline,
                ),
                suffixIcon: IconButton(
                  onPressed: () {
                    setState(() {
                      isObscured = !isObscured;
                    });
                  },
                  icon: Icon(
                    isObscured
                        ? Icons.visibility_off_outlined
                        : Icons.visibility_outlined,
                  ),
                ),
                labelText: 'Password',
              ),
              obscureText: isObscured,
              validator: passwordValidator,
              // validator: (String value) {
              //   if (value.isEmpty) {
              //     return 'Password field should not be empty';
              //   }
              //   if (value.length < 6) {
              //     return 'Password too short';
              //   }
              //   return null;
              // },
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
                  onTap: () => ExtendedNavigator.of(context)
                      .push(Routes.passwordRecovery),
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
                ExtendedNavigator.of(context)
                    .replace(Routes.bottomNavigationPage);
              },
            ),
          ],
        ),
      ),
    );
  }
}
