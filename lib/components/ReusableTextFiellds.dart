import 'package:flutter/material.dart';

class TextFields extends StatelessWidget {
  // props
  final IconData iconData;
  final String hintTexts;

  // constructor function
  TextFields({required this.hintTexts, required this.iconData});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 13.0),
      child: TextField(
        decoration: InputDecoration(
          hintText: hintTexts,
          prefixIcon: Icon(iconData),
          filled: true,
          fillColor: Color(0xFFEFE4F1),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(13),
            borderSide: BorderSide.none,
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(13),
            borderSide: BorderSide.none,
          ),
        ),
      ),
    );
  }
}
