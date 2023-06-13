import 'package:flutter/material.dart';

class WelcomeScreen extends StatefulWidget {
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
          child:   Padding(padding: const EdgeInsets.symmetric(vertical:  10),
           child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            buildAppLogo(),
             const SizedBox(height: 30,),
            buildSignInbtn()
          ],))
    ));
  }

  SizedBox buildAppLogo() {
    return SizedBox(
             height: 180,
             child: Image.asset("assets/images/message-me.jpeg"),
         );
  }

  Material buildSignInbtn() {
    return Material(
            elevation: 5,
            color: Colors.pinkAccent,
            borderRadius: BorderRadius.circular(10),
            child: MaterialButton(
              onPressed: (){},
              minWidth: 350,
              height: 42,
              child:  const Text('Sign in',
                style: TextStyle(color : Colors.white) ,),
            ),
          );
  }
}
