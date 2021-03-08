import 'package:flutter/material.dart';

class CustomMessagePage extends StatelessWidget {
  final String msg;

  const CustomMessagePage({Key key, @required this.msg}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(msg),
    );
  }
}
