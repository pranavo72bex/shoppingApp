import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomFullWidthButton extends StatelessWidget {
  final VoidCallback onPressed;
  final String text;
  final Color fillcolor;
  final Color textcolor;
  CustomFullWidthButton({
    @required this.text,
    this.fillcolor,
    this.textcolor,
    @required this.onPressed,
  });
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      // height: 60,
      width: double.infinity,
      child: RaisedButton(
        color: fillcolor ?? Theme.of(context).accentColor,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(30),
        ),
        onPressed: onPressed,
        padding: EdgeInsets.all(14),
        textColor: textcolor ?? Colors.white,
        child: Text(
          text,
          style: TextStyle(
            color: textcolor,
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
