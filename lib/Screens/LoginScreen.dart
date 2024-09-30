import 'package:flutter/material.dart';
import 'package:otp_verification/components/ReusableButton.dart';
import 'package:otp_verification/components/ReusableText.dart';
import 'package:otp_verification/components/ReusableTextFiellds.dart';
import 'package:otp_verification/constants.dart';
import 'package:otp_verification/components/ReusableLinks.dart';
import 'package:otp_verification/components/ReusableAskAccount.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 80.0),
              child: ReusableText(
                WelcomeText: "Welcome Back",
                textDetail: "Enter your credentials to login",
              ),
            ),
            TextFields(
              iconData: Icons.account_circle_sharp,
              hintTexts: 'Username',
            ),
            kSizedBoxConst,
            TextFields(
              iconData: Icons.password,
              hintTexts: 'Password',
            ),
            kSizedBoxConst,
            ReusableButton(
              WelcomeText: 'Submit',
            ),
            kSizedBoxConst,
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 80.0),
              child: GestureDetector(
                onTap: () {
                  Navigator.pushNamed(context, '/third');
                },
                child: ReusableLinks(
                  textLink: 'Forgot Password?',
                ),
              ),
            ),
            kSizedBoxConst,
            ReusableAskAccount(
              textPart: const Text(
                'Don\'t have an account',
              ),
              reusableAskAccount: GestureDetector(
                onTap: () {
                  Navigator.pop(context);
                },
                child: ReusableLinks(
                  textLink: 'Sign Up',
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
