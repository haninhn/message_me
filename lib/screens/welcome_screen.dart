import 'package:flutter/material.dart';
import 'package:message_me/screens/login_screen.dart';
import 'package:message_me/screens/registration_screen.dart';
import '../widgets/buttom.dart';

class WelcomeScreen extends StatefulWidget {
  static String screenRoute = "welcome_screen";

  const WelcomeScreen({Key? key}) : super(key: key);
  @override
  State<WelcomeScreen> createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
         body: Center(
          child: Padding(padding: const EdgeInsets.symmetric(vertical:  10),
           child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
             buildAppLogo(),
             const SizedBox(height: 30),
             buildSignInBtn(),
             const SizedBox(height: 20),
             buildSignUpBtn(),
          ],))
    ));
  }

  SizedBox buildAppLogo() {
    return SizedBox(
             height: 180,
             child: Image.asset("assets/images/message-me.jpeg"),
         );
  }
  Button buildSignInBtn() {
    return Button(color:  Colors.pink[100]!,btnTitle: "Sign in", onPressed: (){Navigator.pushNamed(context, SignInScreen.screenRoute);  });
  }
  Button buildSignUpBtn() {
    return Button(color:  Colors.pink[400]!,btnTitle: "Register", onPressed: (){Navigator.pushNamed(context, RegistrationScreen.screenRoute); });
  }
}
