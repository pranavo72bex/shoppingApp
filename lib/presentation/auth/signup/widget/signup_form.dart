import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:form_validator/form_validator.dart';
import 'package:shoppingApp/presentation/common_widget/custom_button.dart';
import 'package:shoppingApp/presentation/common_widget/text_style.dart';
import 'package:shoppingApp/presentation/core/app_router.gr.dart';

class SignupForm extends StatefulWidget {
  @override
  _SignupFormState createState() => _SignupFormState();
}

class _SignupFormState extends State<SignupForm> {
  final GlobalKey<FormState> _formkey = GlobalKey<FormState>();

  // final nameValidator = ValidationBuilder().required().build();
  final emailValidator = ValidationBuilder().email().build();
  final phoneValidator = ValidationBuilder().phone().build();
  final passwordValidator = ValidationBuilder().minLength(6).build();

  bool isObscured = true;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Form(
        key: _formkey,
        child: Column(
          children: [
            TextFormField(
              keyboardType: TextInputType.text,
              decoration: InputDecoration(
                prefixIcon: Icon(Icons.person_outline),
                labelText: 'Name',
              ),
              // validator: nameValidator,
              validator: (String value) {
                if (value.isEmpty) {
                  return 'Please Enter Name';
                }
                return null;
              },
              onSaved: (String value) {
                // name = value;
              },
            ),
            SizedBox(height: 20),
            TextFormField(
              keyboardType: TextInputType.text,
              decoration: InputDecoration(
                prefixIcon: Icon(Icons.email_outlined),
                labelText: 'Email',
              ),
              validator: emailValidator,
              // validator: (String value) {
              //   if (value.isEmpty) {
              //     return 'Please a Enter';
              //   }
              //   if (!RegExp("^[a-zA-Z0-9+_.-]+@[a-zA-Z0-9.-]+.[a-z]")
              //       .hasMatch(value)) {
              //     return 'Please a valid Email';
              //   }
              //   return null;
              // },
              onSaved: (String value) {
                // email = value;
              },
            ),
            SizedBox(height: 20),
            TextFormField(
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                prefixIcon: Icon(Icons.phone_outlined),
                labelText: 'Phone',
              ),
              validator: phoneValidator,
              // validator: (String value) {
              //   if (value.isEmpty) {
              //     return 'Please enter phone no ';
              //   }
              //   return null;
              // },
              onSaved: (String value) {
                // phone = value;
              },
            ),
            SizedBox(height: 20),
            TextFormField(
              keyboardType: TextInputType.text,
              decoration: InputDecoration(
                prefixIcon: Icon(Icons.lock_outline),
                labelText: 'Password',
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
              ),
              obscureText: isObscured,
              validator: passwordValidator,
              // validator: (String value) {
              //   if (value.isEmpty) {
              //     return 'Please a Enter Password';
              //   }
              //   return null;
              // },
            ),
            SizedBox(height: 20),
            CustomFullWidthButton(
              text: 'Signup',
              onPressed: () {
                if (_formkey.currentState.validate()) {
                  print("successful");

                  return;
                } else {
                  print("UnSuccessfull");
                }
              },
            ),
            Padding(
              padding: const EdgeInsets.all(5.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Already have an account?",
                    style: Constants.rememberMe,
                  ),
                  InkWell(
                    onTap: () =>
                        ExtendedNavigator.of(context).push(Routes.signinPage),
                    child: Text(
                      "Login",
                      style: Constants.signIn,
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
