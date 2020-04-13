import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pocketpro/Screens/profile_page.dart';
import 'package:pocketpro/Widgets/messaging_button.dart';
import 'package:pocketpro/Widgets/search_widget.dart';

import '../Widgets/category_widget.dart';

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: ListView(
        children: <Widget>[
          SafeArea(
            child: Column(
              children: <Widget>[
                SizedBox(height: 10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    SizedBox(width: 20),
                    Container(
                      decoration: BoxDecoration(
                          border: Border.all(width: 0.5),
                          shape: BoxShape.circle,
                          color: Colors.grey,
                          backgroundBlendMode: BlendMode.clear),
                      child: GestureDetector(
                        onTap: () => Navigator.of(context).push(_createRoute()),
                        child: CircleAvatar(
                          backgroundImage: AssetImage('images/selfie.jpg'),
                          backgroundColor: Colors.transparent,
                          radius: 35,
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 10),
                RichText(
                  text: TextSpan(
                      text: "Hi ",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 40,
                        fontFamily: 'Nunito',
                      ),
                      children: <TextSpan>[
                        TextSpan(
                          text: "Adam!",
                          style: TextStyle(
                            color: Colors.purple[900],
                            fontFamily: 'Nunito',
                          ),
                        )
                      ]),
                ),
                SizedBox(height: 25),
                Text(
                  'Find the best tutors today.',
                  style: TextStyle(
                    color: Colors.grey[700],
                    fontSize: 20,
                    fontFamily: 'Nunito',
                  ),
                ),
                SizedBox(height: 50),
                SearchWidget(),
                SizedBox(height: 25),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Column(
                      children: <Widget>[
                        CategoryWidget(
                          backgroundColor: Colors.blue[200],
                          image: AssetImage('images/avatar4.png'),
                          text: 'Maths',
                        ),
                        SizedBox(height: 10),
                        CategoryWidget(
                          backgroundColor: Colors.blue[400],
                          image: AssetImage('images/avatar3.png'),
                          text: 'Languages',
                        )
                      ],
                    ),
                    Column(
                      children: <Widget>[
                        CategoryWidget(
                          backgroundColor: Colors.blue[200],
                          image: AssetImage('images/avatar2.png'),
                          text: 'Sciences',
                        ),
                        SizedBox(height: 10),
                        CategoryWidget(
                          backgroundColor: Colors.blue[400],
                          image: AssetImage('images/avatar1.png'),
                          text: 'Music',
                        )
                      ],
                    ),
                  ],
                ),
                SizedBox(height: 10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Column(
                      children: <Widget>[
                        CategoryWidget(
                          backgroundColor: Colors.blue[600],
                          image: AssetImage('images/avatar4.png'),
                          text: 'English',
                        ),
                        SizedBox(height: 10),
                        CategoryWidget(
                          backgroundColor: Colors.blue[800],
                          image: AssetImage('images/avatar3.png'),
                          text: 'Comp Sci',
                        )
                      ],
                    ),
                    Column(
                      children: <Widget>[
                        CategoryWidget(
                          backgroundColor: Colors.blue[600],
                          image: AssetImage('images/avatar2.png'),
                          text: 'Art',
                        ),
                        SizedBox(height: 10),
                        CategoryWidget(
                          backgroundColor: Colors.blue[800],
                          image: AssetImage('images/avatar1.png'),
                          text: 'Gaming',
                        )
                      ],
                    ),
                  ],
                ),
                SizedBox(height: 10),
              ],
            ),
          ),
        ],
      ),
      floatingActionButton: MessagingButton(),
    );
  }

  Route _createRoute() {
    return PageRouteBuilder(
      pageBuilder: (context, animation, secondaryAnimation) => ProfilePage(),
      transitionsBuilder: (context, animation, secondaryAnimation, child) {
        var tween = Tween(begin: Offset(0.0, 1.0), end: Offset.zero).chain(
          CurveTween(curve: Curves.ease),
        );
        return SlideTransition(
          position: animation.drive(tween),
          child: child,
        );
      },
    );
  }
}

//Useful stuff:
//class _WelcomeScreenState extends State<WelcomeScreen>
//    with SingleTickerProviderStateMixin {
//  AnimationController controller;
//  Animation animation;
//controller.forward();
//    controller.addListener(() {
//      setState(() {});
//      print(animation.value);
//    });
//
//    animation.addStatusListener((status) {
//      if (status == AnimationStatus.completed) {
//        controller.reverse(from: 1.0);
//      } else if (status == AnimationStatus.dismissed) {
//        controller.forward();
//      }
//    });
//https://pub.dev/packages/animated_text_kit

//FOR GOING BACK TO PREVIOUS NAVIGATION: Navigator.pop(context);
