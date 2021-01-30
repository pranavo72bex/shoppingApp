import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Btns extends StatelessWidget {
  final void Function() onPressed;
  final String text;
  final dynamic fillcolor;
  final dynamic textcolor;
  Btns({
    @required this.text,
    this.fillcolor,
    this.textcolor,
    @required this.onPressed,
  });
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;

    return RaisedButton(
      color: fillcolor ?? Theme.of(context).accentColor,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(25),
      ),
      // textTheme: ButtonTextTheme.accent,
      onPressed: onPressed,
      padding: EdgeInsets.all(14),
      textColor: textcolor ?? Colors.white,
      child: Text(
        text,
        style: TextStyle(
          color: textcolor,
          fontSize: 16,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
