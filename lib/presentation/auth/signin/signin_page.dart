import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:shoppingApp/presentation/auth/signin/widgets/signin_form.dart';
import 'package:shoppingApp/presentation/common_widget/text_style.dart';
import 'package:shoppingApp/presentation/core/app_router.gr.dart';

class SigninPage extends StatefulWidget {
  @override
  _SigninPageState createState() => _SigninPageState();
}

class _SigninPageState extends State<SigninPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Login",
        ),
        backgroundColor: Colors.transparent,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 50,
            ),
            Text(
              "Welcome Back !",
              style: Constants.regularHeading,
            ),
            Text(
              "sign in to your account",
              style: Constants.signIn,
            ),
            SigninForm(),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Don't have an account? ",
                  style: Constants.rememberMe,
                ),
                InkWell(
                  onTap: () =>
                      ExtendedNavigator.of(context).push(Routes.signupPage),
                  child: Text(
                    "Signup",
                    style: Constants.signIn,
                  ),
                ),
              ],
            ),
            Image.asset(
              'assets/background.png',
              height: 200,
              // width: 350,
              fit: BoxFit.scaleDown,
            ),
          ],
        ),
      ),
    );
  }
}
