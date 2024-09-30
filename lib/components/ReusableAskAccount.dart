import 'package:flutter/material.dart';
import 'package:otp_verification/constants.dart';

class ReusableAskAccount extends StatelessWidget {
  final Text textPart;
  final GestureDetector reusableAskAccount;

  ReusableAskAccount(
      {required this.textPart, required this.reusableAskAccount});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        textPart,
        kSizedBoxRow,
        reusableAskAccount,
      ],
    );
  }
}
