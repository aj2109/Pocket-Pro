import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'category_widget.dart';

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
                      child: CircleAvatar(
                        backgroundImage: AssetImage('images/selfie.jpg'),
                        backgroundColor: Colors.transparent,
                        radius: 35,
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
                            color: Colors.indigo[900],
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
                        borderSide: const BorderSide(
                            color: Colors.transparent, width: 2.0),
                        borderRadius: BorderRadius.circular(30.0),
                      ),
                      filled: true,
                      hintText: "What are you looking for?",
                      hintStyle: TextStyle(
                          color: Colors.grey[400], fontFamily: 'Nunito'),
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
                          text: 'Maths',
                        ),
                        SizedBox(height: 10),
                        CategoryWidget(
                          backgroundColor: Colors.teal[200],
                          image: AssetImage('images/avatar3.png'),
                          text: 'Languages',
                        )
                      ],
                    ),
                    Column(
                      children: <Widget>[
                        CategoryWidget(
                          backgroundColor: Colors.indigo[200],
                          image: AssetImage('images/avatar2.png'),
                          text: 'Sciences',
                        ),
                        SizedBox(height: 10),
                        CategoryWidget(
                          backgroundColor: Colors.purple[100],
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
                          backgroundColor: Colors.orange[200],
                          image: AssetImage('images/avatar4.png'),
                          text: 'English',
                        ),
                        SizedBox(height: 10),
                        CategoryWidget(
                          backgroundColor: Colors.teal[200],
                          image: AssetImage('images/avatar3.png'),
                          text: 'Comp Sci',
                        )
                      ],
                    ),
                    Column(
                      children: <Widget>[
                        CategoryWidget(
                          backgroundColor: Colors.indigo[200],
                          image: AssetImage('images/avatar2.png'),
                          text: 'Art',
                        ),
                        SizedBox(height: 10),
                        CategoryWidget(
                          backgroundColor: Colors.green[100],
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
      floatingActionButton: Container(
        width: 60,
        height: 60,
        decoration:
            BoxDecoration(color: Colors.blue[700], shape: BoxShape.circle),
        child: IconButton(
          color: Colors.blue[300],
          icon: Icon(Icons.message),
          disabledColor: Colors.white,
          iconSize: 35,
        ),
      ),
    );
  }
}
