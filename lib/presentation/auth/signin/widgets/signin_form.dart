import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:form_validator/form_validator.dart';
import 'package:shoppingApp/application/auth/auth_bloc.dart';

import '../../../common_widget/custom_button.dart';
import '../../../common_widget/text_style.dart';
import '../../../core/app_router.gr.dart';

import 'package:flutter_bloc/flutter_bloc.dart';

class SigninForm extends StatefulWidget {
  @override
  _SigninFormState createState() => _SigninFormState();
}

class _SigninFormState extends State<SigninForm> {
  bool isChecked = false;
  bool isObscured = true;
  TextEditingController passwordController = TextEditingController();
  // TextEditingController confirmpasswordController = TextEditingController();
  TextEditingController emailController = TextEditingController();

  final GlobalKey<FormState> _formkey = GlobalKey<FormState>();

  final emailValidator = ValidationBuilder()
      .or(
        (builder) => builder.phone(),
        (builder) => builder.email(),
      )
      .build();
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
                context.read<AuthBloc>().add(
                      AuthEvent.loginRequested(
                        username: '9826477344',
                        password: '123456',
                        // username: emailController.text,
                        // password: passwordController.text,
                      ),
                    );
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
      ),
    );
  }
}
