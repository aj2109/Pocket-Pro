import 'package:flutter/material.dart';
import 'package:pocketpro/Managers/data_manager.dart';
import 'package:pocketpro/Screens/login_page.dart';
import 'package:pocketpro/Screens/registration_page.dart';
import 'package:pocketpro/Screens/welcome_page.dart';

import 'Screens/home_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        routes: {
          WelcomePage.id: (context) => WelcomePage(),
          LoginPage.id: (context) => LoginPage(),
          RegistrationPage.id: (context) => RegistrationPage(),
        },
        home: FutureBuilder(
          future: _isLoggedIn(),
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.done) {
              return snapshot.data ? HomePage() : WelcomePage();
            } else {
              return CircularProgressIndicator();
            }
          },
        ));
  }
}

Future<bool> _isLoggedIn() async {
  String userName = await DataManager.shared.storage.read(key: 'username');
  String passWord = await DataManager.shared.storage.read(key: 'password');
  if ((userName != null && passWord != null) &&
      (userName != "" && passWord != "")) {
    print('loggedInDetailsArehere!');
    return true;
  } else {
    print('loggedInDetailsAreNOThere!');
    return false;
  }
}
