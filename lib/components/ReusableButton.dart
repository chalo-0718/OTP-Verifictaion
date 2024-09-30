import 'package:flutter/material.dart';
import 'package:otp_verification/constants.dart';

class ReusableButton extends StatelessWidget {
  // prop
  final String WelcomeText;

  // constructor function
  ReusableButton({required this.WelcomeText});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: kMarginForButton,
      child: ElevatedButton(
        onPressed: () {
          print('one');
        },
        style: ElevatedButton.styleFrom(
          elevation: 10.0,
          backgroundColor: Colors.purple,
          padding: kPaddingForButton, // Left of
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
        ),
        child: const Text(
          'Login',
          style: TextStyle(color: Colors.white),
        ),
      ),
    );
  }
}
