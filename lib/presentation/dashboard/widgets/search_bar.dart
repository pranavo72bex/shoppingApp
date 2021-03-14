import 'package:flutter/material.dart';
import 'package:shoppingApp/presentation/core/konstants.dart';

class SearchBar extends StatefulWidget {
  @override
  _SearchBarState createState() => _SearchBarState();
}

class _SearchBarState extends State<SearchBar> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
        top: 10,
        left: 5,
        right: 5,
      ),
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: kShadow,
        borderRadius: BorderRadius.circular(25),
      ),
      child: TextField(
        textInputAction: TextInputAction.search,
        decoration: InputDecoration(
          hintText: "search here",
          prefixIcon: Icon(Icons.search),
          border: InputBorder.none,
          enabledBorder: InputBorder.none,
          focusedBorder: InputBorder.none,
        ),
      ),
    );
  }
}
