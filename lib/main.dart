import 'package:flutter/material.dart';
import 'package:message_me/screens/chat_screen.dart';
import 'package:message_me/screens/login_screen.dart';
import 'package:message_me/screens/registration_screen.dart';
import 'package:message_me/screens/welcome_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      //home: const ChatScreen(),
      initialRoute: WelcomeScreen.screenRoute,
      routes: {
        WelcomeScreen.screenRoute:(context) => const WelcomeScreen(),
        SignInScreen.screenRoute:(context) => const SignInScreen(),
        RegistrationScreen.screenRoute:(context) => const RegistrationScreen(),
        ChatScreen.screenRoute:(context) => const ChatScreen()
      } ,
    );
  }
}


