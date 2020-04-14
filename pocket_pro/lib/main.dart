import 'package:flutter/material.dart';
import 'package:pocketpro/Screens/login_page.dart';
import 'package:pocketpro/Screens/messaging_page.dart';
import 'package:pocketpro/Screens/registration_screen.dart';
import 'package:pocketpro/Screens/welcome_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: WelcomeScreen(),
      routes: {
        WelcomeScreen.id: (context) => WelcomeScreen(),
        'login_screen': (context) => LoginScreen(),
        'registration_screen': (context) => RegistrationScreen(),
        'chat_screen': (context) => MessagingPage(),
      },
    );
  }
}
