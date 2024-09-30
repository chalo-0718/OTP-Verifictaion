import 'package:flutter/material.dart';
import 'package:otp_verification/constants.dart';

class ReusableSignGoogle extends StatelessWidget {
  const ReusableSignGoogle({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: kMarginForButton,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10.0),
      ),
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          minimumSize: const Size(double.infinity, 50.0),
          // padding: kPaddingForButton,
          side: const BorderSide(
            color: Colors.purple,
            width: 2.0,
          )
        ),
        onPressed: () {},
        child: const Text(
          'Sign In With Google',
          style: TextStyle(
            color: Colors.purple,
          ),
        ),
      ),
    );
  }
}
