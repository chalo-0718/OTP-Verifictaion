import 'package:flutter/material.dart';

class ReusableText extends StatelessWidget {
  final String WelcomeText;
  final String textDetail;
  ReusableText({required this.WelcomeText, required this.textDetail});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          WelcomeText,
          style: const TextStyle(
            fontSize: 40.0,
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(
          height: 7.0,
        ),
        Text(
          textDetail,
          style: const TextStyle(
            fontSize: 13.0,
          ),
        ),
      ],
    );
  }
}
