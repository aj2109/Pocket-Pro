import 'package:flutter/material.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:pocketpro/Managers/data_manager.dart';
import 'package:pocketpro/Screens/home_page.dart';
import 'package:pocketpro/Screens/login_page.dart';
import 'package:pocketpro/Screens/messaging_page.dart';
import 'package:pocketpro/Screens/registration_screen.dart';
import 'package:pocketpro/Screens/welcome_page.dart';

final storage = new FlutterSecureStorage();

void main() async {
  // Set default home.
  final storage = new FlutterSecureStorage();
  Widget homeWidget;
  try {
    // Get result of the login function.
    await DataManager.shared.retrieveProfile();
    Future<String> username = await storage.read(key: 'username').toString();
    Future<String> password = await storage.read(key: 'password').toString();
    if (username && password != null) {
      homeWidget = new MyHomePage();
    } else {
      homeWidget = new WelcomePage();
    }
  } catch (e) {
    print(e);
  }
  new MaterialApp(
    debugShowCheckedModeBanner: false,
    title: 'Flutter Demo',
    theme: ThemeData(
      primarySwatch: Colors.blue,
    ),
    home: MyHomePage(),
    routes: {
      WelcomePage.id: (context) => WelcomePage(),
      'login_screen': (context) => LoginScreen(),
      'registration_screen': (context) => RegistrationScreen(),
      'chat_screen': (context) => MessagingPage(),
    },
  );
}
