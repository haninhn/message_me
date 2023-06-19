import 'package:flutter/material.dart';

import '../widgets/buttom.dart';
import '../widgets/textFieldWidget.dart';

class RegistrationScreen extends StatefulWidget {
  static String screenRoute = "registration_screen";

  const RegistrationScreen({Key? key}) : super(key: key);

  @override
  State<RegistrationScreen> createState() => _RegistrationScreenState();
}

class _RegistrationScreenState extends State<RegistrationScreen> {
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
              const SizedBox(height: 20),
              Button(
               color: Colors.pinkAccent[200]!,
               btnTitle: 'register',
               onPressed: () {},
            )
          ],
        ),
      ),
    );
  }
}

