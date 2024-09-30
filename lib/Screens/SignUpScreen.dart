import 'package:flutter/material.dart';
import 'package:otp_verification/components/ReusableText.dart';
import 'package:otp_verification/constants.dart';
import 'package:otp_verification/components/ReusableTextFiellds.dart';
import 'package:otp_verification/components/ReusableButton.dart';
import 'package:otp_verification/components/ReusableSignInWithGoogle.dart';
import 'package:otp_verification/components/ReusableAskAccount.dart';
import 'package:otp_verification/components/ReusableLinks.dart';

class SignUpPage extends StatelessWidget {
  const SignUpPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 25.0),
            child: ReusableText(
              WelcomeText: 'Sign Up',
              textDetail: 'Create your Account',
            ),
          ),
          kSizedBoxSignUp,
          TextFields(
            iconData: Icons.account_circle_sharp,
            hintTexts: 'Username',
          ),
          kSizedBoxSignUp,
          TextFields(
            iconData: Icons.email,
            hintTexts: 'Email',
          ),
          kSizedBoxSignUp,
          TextFields(
            iconData: Icons.password,
            hintTexts: 'password',
          ),
          kSizedBoxSignUp,
          TextFields(
            iconData: Icons.password,
            hintTexts: 'password',
          ),
          kSizedBoxSignUp,
          ReusableButton(
            WelcomeText: 'Sign Up',
          ),
          kSizedBoxSignUp,
          const Text(
            'Or',
          ),
          kSizedBoxSignUp,
          ReusableSignGoogle(),
          kSizedBoxSignUp,
          ReusableAskAccount(
            textPart: const Text('Already have an account'),
            reusableAskAccount: GestureDetector(
              onTap: () {
                Navigator.pushNamed(context, '/second');
              },
              child: ReusableLinks(
                textLink: 'Login',
              ),
            ),
          ),
        ],
      ),
    );
  }
}
