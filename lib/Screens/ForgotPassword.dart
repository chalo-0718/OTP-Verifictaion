import 'package:flutter/material.dart';
import 'package:otp_verification/constants.dart';
import 'package:otp_verification/components/ReusableTextFiellds.dart';
import 'package:otp_verification/components/ReusableButton.dart';
import 'package:otp_verification/components/ReusableAskAccount.dart';
import 'package:otp_verification/components/ReusableLinks.dart';
import 'package:otp_verification/constants.dart';

class ForgotPassword extends StatelessWidget {
  const ForgotPassword({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.only(top: 60.0),
        child: Column(
          children: [
            const Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                const Padding(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 20.0, vertical: 10.0),
                  child: const Text(
                    'Can\'t Log in?',
                    style: TextStyle(
                      fontSize: 40.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),
            const Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 20),
              child: const Text(
                kForgotPaswordText,
              ),
            ),
            kSizedBoxConst,
            const Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: const Text(
                    'Enter your email address:',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(top: 5.0),
              child: TextFields(
                iconData: Icons.email,
                hintTexts: 'Email Address',
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 20.0),
              child: ReusableButton(WelcomeText: 'Email Me Reset Instruction'),
            ),
            kSizedBoxConst,
            ReusableAskAccount(
              textPart: Text('Never mind,'),
              reusableAskAccount: GestureDetector(
                onTap: () {
                  Navigator.pop(context);
                },
                child: ReusableLinks(
                  textLink: 'Login',
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
