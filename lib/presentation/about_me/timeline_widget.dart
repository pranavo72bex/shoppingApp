import 'package:flutter/material.dart';

class TimeLine extends StatefulWidget {
  @override
  _TimeLineState createState() => _TimeLineState();
}

class _TimeLineState extends State<TimeLine> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20, right: 20, top: 10),
      child: Container(
        height: 70,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            custombox(Icons.check, "delivery"),
            line(),
            custombox(Icons.home, "Address"),
            line(),
            custombox(Icons.payment, "Payment"),
          ],
        ),
      ),
    );
  }

  Widget custombox(dynamic indicatoricons, indicatortext) {
    return Column(
      children: [
        Container(
          height: 40,
          width: 40,
          decoration:
              BoxDecoration(shape: BoxShape.circle, color: Colors.green),
          child: Icon(indicatoricons),
        ),
        Text("$indicatortext")
      ],
    );
  }

  Widget line() {
    return Container(
      height: 4,
      width: 60,
      color: Colors.green,
    );
  }
}
