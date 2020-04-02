import 'package:flutter/material.dart';

import 'category_widget.dart';
import 'nav_bar.dart';

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  bool _menuOpened = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                SizedBox(width: 10),
                IconButton(
                    highlightColor: Colors.transparent,
                    splashColor: Colors.transparent,
                    icon: _menuOpened == true
                        ? Icon(
                            Icons.menu,
                          )
                        : Icon(
                            Icons.dehaze,
                            color: Colors.indigo[400],
                          ),
                    iconSize: 40,
                    color: Colors.grey[500],
                    onPressed: () {
                      setState(() {
                        _menuOpened = !_menuOpened;
                      });
                    }),
                Spacer(),
                Container(
                  decoration: BoxDecoration(
                      border: Border.all(width: 0.5),
                      shape: BoxShape.circle,
                      color: Colors.grey,
                      backgroundBlendMode: BlendMode.clear),
                  child: CircleAvatar(
                    backgroundImage: AssetImage('images/selfie.jpg'),
                    backgroundColor: Colors.transparent,
                    radius: 35,
                  ),
                ),
                SizedBox(width: 10),
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
                        color: Colors.indigo[900],
                        fontFamily: 'Nunito',
                      ),
                    )
                  ]),
            ),
            SizedBox(height: 25),
            Text(
              'Find the best teachers today.',
              style: TextStyle(
                color: Colors.grey[700],
                fontSize: 20,
                fontFamily: 'Nunito',
              ),
            ),
            SizedBox(height: 50),
            Container(
              color: Colors.transparent,
              width: 350,
              child: TextFormField(
                textAlign: TextAlign.center,
                cursorColor: Colors.grey,
                decoration: InputDecoration(
                  focusedBorder: OutlineInputBorder(
                    borderSide:
                        const BorderSide(color: Colors.grey, width: 2.0),
                    borderRadius: BorderRadius.circular(25.0),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide:
                        const BorderSide(color: Colors.transparent, width: 2.0),
                    borderRadius: BorderRadius.circular(30.0),
                  ),
                  filled: true,
                  hintText: "What are you looking for?",
                  hintStyle:
                      TextStyle(color: Colors.grey[400], fontFamily: 'Nunito'),
                ),
              ),
            ),
            SizedBox(height: 25),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Column(
                  children: <Widget>[
                    CategoryWidget(
                      backgroundColor: Colors.orange[200],
                      image: AssetImage('images/avatar4.png'),
                      text: 'One to One',
                    ),
                    SizedBox(height: 10),
                    CategoryWidget(
                      backgroundColor: Colors.teal[200],
                      image: AssetImage('images/avatar3.png'),
                      text: 'Q&A',
                    )
                  ],
                ),
                Column(
                  children: <Widget>[
                    CategoryWidget(
                      backgroundColor: Colors.indigo[200],
                      image: AssetImage('images/avatar2.png'),
                      text: 'Classes',
                    ),
                    SizedBox(height: 10),
                    CategoryWidget(
                      backgroundColor: Colors.green[100],
                      image: AssetImage('images/avatar1.png'),
                      text: 'Recordings',
                    )
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
      bottomNavigationBar: NavBar(),
    );
  }
}
