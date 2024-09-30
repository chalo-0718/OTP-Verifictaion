import 'package:flutter/material.dart';
import 'package:otp_verification/Screens/LoginScreen.dart';
import 'package:otp_verification/Screens/SignUpScreen.dart';
import 'package:otp_verification/Screens/ForgotPassword.dart';

void main() {
  runApp(FullOTP());
}

class FullOTP extends StatefulWidget {
  const FullOTP({super.key});

  @override
  State<FullOTP> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<FullOTP> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/',
       routes: {
        '/': (context) => SignUpPage(),
        '/second': (context) => LoginPage(),
        '/third': (context) => ForgotPassword(),
      },
    );
  }
}
