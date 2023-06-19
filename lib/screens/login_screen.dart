import 'package:flutter/material.dart';
import '../widgets/buttom.dart';
import '../widgets/textFieldWidget.dart';

class SignInScreen extends StatefulWidget {
  static String screenRoute = "signin_screen";

  const SignInScreen({Key? key}) : super(key: key);

  @override
  State<SignInScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            SizedBox(
              height: 180,
              child: Image.asset('assets/images/message-me.jpeg'),
            ),
            const SizedBox(height: 50),
            const TextFieldWidget(hintTitle: 'Enter your Email'),
            const SizedBox(height: 8),
            const TextFieldWidget(hintTitle: 'Enter your password'),
            const SizedBox(height: 10),
            Button(
              color: Colors.pink[200]!,
              btnTitle: 'Sign in',
              onPressed: () {},
            )
          ],
        ),
      ),
    );
  }
}