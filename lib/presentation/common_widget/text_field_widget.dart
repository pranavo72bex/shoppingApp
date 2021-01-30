import 'package:flutter/material.dart';

class TextFieldWidget extends StatefulWidget {
  final bool isPassword;
  final String textelements;
  final IconData prefixIcon;
  final IconData suffixIcon;
  const TextFieldWidget(
      {this.textelements,
      this.prefixIcon,
      this.suffixIcon,
      this.isPassword = false});

  @override
  _TextFieldWidgetState createState() => _TextFieldWidgetState();
}

class _TextFieldWidgetState extends State<TextFieldWidget> {
  bool isObscured = true;

  @override
  Widget build(BuildContext context) {
    return TextField(
      obscureText: widget.isPassword ? isObscured : false,
      decoration: InputDecoration(
        filled: true,
        fillColor: Colors.white,
        hintText: widget.textelements,
        prefixIcon: Icon(widget.prefixIcon),
        suffixIcon: widget.isPassword ? prefixButton() : null,
        contentPadding: EdgeInsets.all(15),
        border: OutlineInputBorder(
          borderRadius: const BorderRadius.all(
            const Radius.circular(28.0),
          ),
        ),
      ),
    );
  }

  IconButton prefixButton() {
    return IconButton(
        icon: isObscured
            ? Icon(Icons.visibility_outlined)
            : Icon(Icons.visibility_off_outlined),
        onPressed: () {
          setState(() {
            isObscured = !isObscured;
          });
        });
  }
}
