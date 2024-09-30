import 'package:flutter/material.dart';

class ReusableLinks extends StatelessWidget {
  final String textLink;
  ReusableLinks({required this.textLink});

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      cursor: SystemMouseCursors.click,
      child: Text(
        textLink,
        style: const TextStyle(
          color: Colors.purple,
        ),
      ),
    );
  }
}
