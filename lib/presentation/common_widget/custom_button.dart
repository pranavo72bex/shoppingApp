import 'package:flutter/cupertino.dart';

class Btns extends StatelessWidget {
  final String text;
  final dynamic fillcolor;
  final dynamic textcolor;
  Btns({this.text, this.fillcolor, this.textcolor});
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    return Center(
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(25),
          color: fillcolor,
        ),
        height: height * 0.07,
        child: Center(
          child: Text(text,
              style: TextStyle(
                  color: textcolor, fontSize: 16, fontWeight: FontWeight.bold)),
        ),
      ),
    );
  }
}
