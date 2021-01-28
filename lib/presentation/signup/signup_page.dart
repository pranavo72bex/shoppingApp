import 'package:flutter/material.dart';
import 'package:shoppingApp/presentation/common_widget/custom_button.dart';
import 'package:shoppingApp/presentation/common_widget/profile_pic_upload.dart';
import 'package:shoppingApp/presentation/common_widget/text_field_widget.dart';
import 'package:shoppingApp/presentation/common_widget/text_style.dart';
import 'package:shoppingApp/presentation/signin/signin_page.dart';

class SignupPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
        backgroundColor: Color(0xFFf2f1ee),
        appBar: AppBar(
          elevation: 0,
          title: Text("Signup", style: Constants.appBarHeading),
          centerTitle: true,
          backgroundColor: Colors.transparent,
        ),
        body: Center(
          child: SingleChildScrollView(
            padding: EdgeInsets.all(20),
            child: Column(
              children: <Widget>[
                ProfilePicUpload(),
                SizedBox(
                  height: 50,
                ),
                TextFieldWidget(
                  textelements: "Email Address",
                  prefixIcon: Icons.email_outlined,
                ),
                SizedBox(
                  height: 20,
                ),
                TextFieldWidget(
                  textelements: "Phone",
                  prefixIcon: Icons.phone,
                ),
                SizedBox(
                  height: 20,
                ),
                TextFieldWidget(
                  isPassword: true,
                  textelements: "Password",
                  prefixIcon: Icons.lock_outline_rounded,
                  suffixIcon: Icons.remove_red_eye_outlined,
                ),
                SizedBox(
                  height: height * 0.02,
                ),
                SizedBox(height: height * 0.04),
                Btns(
                  text: "Signup",
                  fillcolor: Color(0xFF6cc41d),
                  textcolor: Colors.white,
                ),
                Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Already have an account?",
                        style: Constants.rememberMe,
                      ),
                      InkWell(
                        onTap: () => Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => SigninPage(),
                          ),
                        ),
                        child: Text(
                          "Login",
                          style: Constants.signIn,
                        ),
                      )
                    ],
                  ),
                ),
                Image.asset(
                  'assets/background.png',
                  fit: BoxFit.scaleDown,
                ),
              ],
            ),
          ),
        ));
  }
}
