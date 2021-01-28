import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shoppingApp/presentation/common_widget/custom_button.dart';
import 'package:shoppingApp/presentation/common_widget/text_field_widget.dart';
import 'package:shoppingApp/presentation/common_widget/text_style.dart';
import 'package:shoppingApp/presentation/signin/password_recovery.dart';
import 'package:shoppingApp/presentation/signup/signup_page.dart';

class SigninPage extends StatefulWidget {
  @override
  _SigninPageState createState() => _SigninPageState();
}

class _SigninPageState extends State<SigninPage> {
  bool isChecked = false;

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
        backgroundColor: Color(0xFFf2f1ee),
        appBar: AppBar(
          leading: Icon(
            Icons.arrow_back,
            color: Colors.black,
          ),
          elevation: 0,
          title: Text(
            "Login",
            style: GoogleFonts.poppins(textStyle: Constants.appBarHeading),
          ),
          centerTitle: true,
          backgroundColor: Colors.transparent,
        ),
        body: Center(
          child: SingleChildScrollView(
            padding: EdgeInsets.all(20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Text(
                  "Welcome Back !",
                  style:
                      GoogleFonts.poppins(textStyle: Constants.regularHeading),
                ),
                Text(
                  "sign in to your account",
                  style: GoogleFonts.poppins(textStyle: Constants.signIn),
                ),
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
                  isPassword: true,
                  textelements: "Password",
                  prefixIcon: Icons.lock_outline_rounded,
                  suffixIcon: Icons.remove_red_eye_outlined,
                ),
                SizedBox(
                  height: height * 0.02,
                ),
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
                    Text(
                      "Remember me",
                      style:
                          GoogleFonts.poppins(textStyle: Constants.rememberMe),
                    ),
                    Spacer(),
                    InkWell(
                      onTap: () => Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => PasswordRecovery(),
                        ),
                      ),
                      child: Text(
                        "Forget Password",
                        style: GoogleFonts.poppins(
                          textStyle: Constants.passwordHeading,
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: height * 0.04),
                Btns(
                  text: "Login",
                  fillcolor: Color(0xff6cc41d),
                  textcolor: Colors.white,
                ),
                Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("Don't have an account?",
                          style: GoogleFonts.poppins(
                              textStyle: Constants.rememberMe)),
                      InkWell(
                        onTap: () => Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => SignupPage(),
                          ),
                        ),
                        child: Text(
                          "Signup",
                          style: GoogleFonts.poppins(
                            textStyle: Constants.signIn,
                          ),
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
