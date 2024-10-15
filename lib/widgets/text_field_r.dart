import 'package:flutter/material.dart';

class TextFieldR extends StatelessWidget {
  final String hintText;
  final bool isPassword;
  final TextEditingController controller;
  final Icon? prefixIcon;
  final Widget? suffixIcon;

  const TextFieldR({
    super.key,
    required this.hintText,
    required this.isPassword,
    required this.controller,
    this.prefixIcon,
    this.suffixIcon,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 30, vertical: 10),
      child: TextField(
        obscureText: isPassword,
        controller: controller,
        decoration: InputDecoration(
          hintText: hintText,
          hintStyle: TextStyle(color: Colors.grey[500]),
          prefixIcon: prefixIcon,
          suffixIcon: suffixIcon, // Tambahkan ini
          enabledBorder: UnderlineInputBorder(
            borderSide: BorderSide(color: Colors.grey[300]!),
          ),
          focusedBorder: UnderlineInputBorder(
            borderSide: BorderSide(color: Colors.grey[500]!),
          ),
        ),
        style: TextStyle(color: Colors.grey[500]),
        cursorColor: Colors.grey[500],
      ),
    );
  }
}
