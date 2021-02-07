import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:shoppingApp/presentation/common_widget/inputdecoration.dart';
import 'package:shoppingApp/presentation/common_widget/text_style.dart';
import 'package:shoppingApp/presentation/core/app_router.gr.dart';
import 'package:shoppingApp/presentation/signin/password_recovery.dart';

class SigninPage extends StatefulWidget {
  @override
  _SigninPageState createState() => _SigninPageState();
}

class _SigninPageState extends State<SigninPage> {
  String name, email, phone;
  bool isChecked = false;

  TextEditingController password = TextEditingController();
  TextEditingController confirmpassword = TextEditingController();

  final GlobalKey<FormState> _formkey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Login",
        ),
      ),
      body: SingleChildScrollView(
        child: Form(
          key: _formkey,
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
              Padding(
                padding: const EdgeInsets.only(
                    bottom: 15, left: 15, right: 15, top: 30),
                child: TextFormField(
                  keyboardType: TextInputType.text,
                  decoration: buildInputDecoration(Icons.email, "Email"),
                  validator: (String value) {
                    if (value.isEmpty) {
                      return 'Please a Enter';
                    }
                    if (!RegExp("^[a-zA-Z0-9+_.-]+@[a-zA-Z0-9.-]+.[a-z]")
                        .hasMatch(value)) {
                      return 'Please a valid Email';
                    }
                    return null;
                  },
                  onSaved: (String value) {
                    email = value;
                  },
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 15, left: 15, right: 15),
                child: TextFormField(
                  controller: password,
                  keyboardType: TextInputType.text,
                  decoration: buildInputDecoration(Icons.lock, "Password"),
                  validator: (String value) {
                    if (value.isEmpty) {
                      return 'Please a Enter Password';
                    }
                    return null;
                  },
                ),
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
                  InkWell(
                    onTap: () {
                      setState(() {
                        isChecked = !isChecked;
                      });
                    },
                    child: InkWell(
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
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 60.0),
                    child: InkWell(
                      onTap: () => Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => PasswordRecovery(),
                        ),
                      ),
                      child: Text(
                        "Forget Password",
                        style: Constants.passwordHeading,
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                width: 300,
                height: 60,
                child: RaisedButton(
                  color: Colors.green,
                  onPressed: () {
                    if (_formkey.currentState.validate()) {
                      print("successful");

                      return;
                    } else {
                      print("UnSuccessfull");
                    }
                  },
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30.0),
                  ),
                  textColor: Colors.white,
                  child: Text("Login"),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Don't have an account?",
                      style: Constants.rememberMe,
                    ),
                    InkWell(
                      onTap: () =>
                          ExtendedNavigator.of(context).push(Routes.signupPage),
                      child: Text(
                        "Signup",
                        style: Constants.signIn,
                      ),
                    )
                  ],
                ),
              ),
              Image.asset(
                'assets/background.png',
                height: 200,
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
