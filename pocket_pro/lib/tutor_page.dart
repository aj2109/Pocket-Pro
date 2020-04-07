import 'package:flutter/material.dart';
import 'package:pocketpro/messaging_button.dart';
import 'package:pocketpro/search_page.dart';

class TutorPage extends StatefulWidget {
  @override
  _TutorPageState createState() => _TutorPageState();
}

class _TutorPageState extends State<TutorPage> with TickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        body: SafeArea(
          child: Column(
            children: <Widget>[
              SizedBox(width: 5),
              Container(
                alignment: Alignment.centerLeft,
                child: IconButton(
                  onPressed: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => SearchPage(),
                    ),
                  ),
                  hoverColor: Colors.blueGrey[600],
                  focusColor: Colors.blueGrey[600],
                  disabledColor: Colors.blueGrey[600],
                  highlightColor: Colors.transparent,
                  splashColor: Colors.transparent,
                  icon: Icon(Icons.arrow_back_ios),
                  iconSize: 30,
                  color: Colors.grey[500],
                ),
              ),
              CircleAvatar(
                radius: 75,
                backgroundImage: AssetImage('images/selfie2.jpg'),
                backgroundColor: Colors.transparent,
              ),
              SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
                child: RichText(
                  text: TextSpan(
                      text: "Hi my name is ",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 30,
                        fontFamily: 'Nunito',
                        fontWeight: FontWeight.w500,
                      ),
                      children: <TextSpan>[
                        TextSpan(
                          text: "Joey Bloggs!",
                          style: TextStyle(
                            color: Colors.purple[900],
                            fontFamily: 'Nunito',
                          ),
                        )
                      ]),
                ),
              ),
              SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
                child: Text(
                  "I've been a music teacher for 5 years, I currently live in Kent and I have a passion for helping out people who want to learn.",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                    fontFamily: 'Nunito',
                  ),
                ),
              ),
              SizedBox(height: 25),
              Padding(
                padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
                child: Card(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(25)),
                  color: Colors.white,
                  child: Column(
                    children: <Widget>[
                      Text(
                        "What's on offer",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 20,
                          fontFamily: 'Nunito',
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Container(
                            width: 180,
                            child: Card(
                              color: Colors.blue[500],
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(25)),
                              child: Padding(
                                padding: const EdgeInsets.all(10.0),
                                child: Row(
                                  children: <Widget>[
                                    Padding(
                                      padding: const EdgeInsets.fromLTRB(
                                          10, 0, 10, 0),
                                      child: Icon(
                                        (Icons.music_note),
                                      ),
                                    ),
                                    Text(
                                      'Music theory',
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 15,
                                          fontFamily: 'Nunito'),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                          Container(
                            width: 180,
                            child: Card(
                              color: Colors.blue[500],
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(25)),
                              child: Padding(
                                padding: const EdgeInsets.all(10.0),
                                child: Row(
                                  children: <Widget>[
                                    Padding(
                                      padding: const EdgeInsets.fromLTRB(
                                          10, 0, 10, 0),
                                      child: Icon(
                                        (Icons.music_note),
                                      ),
                                    ),
                                    Text(
                                      'Violin',
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 15,
                                          fontFamily: 'Nunito'),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Container(
                            width: 180,
                            child: Card(
                              color: Colors.blue[500],
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(25)),
                              child: Padding(
                                padding: const EdgeInsets.all(10.0),
                                child: Row(
                                  children: <Widget>[
                                    Padding(
                                      padding: const EdgeInsets.fromLTRB(
                                          10, 0, 10, 0),
                                      child: Icon(
                                        (Icons.music_note),
                                      ),
                                    ),
                                    Text(
                                      'Guitar',
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 15,
                                          fontFamily: 'Nunito'),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                          Container(
                            width: 180,
                            child: Card(
                              color: Colors.blue[500],
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(25),
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(10.0),
                                child: Row(
                                  children: <Widget>[
                                    Padding(
                                      padding: const EdgeInsets.fromLTRB(
                                          10, 0, 10, 0),
                                      child: Icon(
                                        (Icons.music_note),
                                      ),
                                    ),
                                    Text(
                                      'Opera',
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 15,
                                          fontFamily: 'Nunito'),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Container(
                        height: 100,
                        child: TabBar(
                          indicator: UnderlineTabIndicator(
                              borderSide: BorderSide(
                                  width: 5.0, color: Colors.blue[500]),
                              insets: EdgeInsets.symmetric(horizontal: 25.0)),
                          tabs: <Widget>[
                            Tab(
                              icon: Text(
                                '1-2-1',
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 15,
                                    fontFamily: 'Nunito'),
                              ),
                            ),
                            Tab(
                              icon: Text(
                                'Q&A',
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 15,
                                    fontFamily: 'Nunito'),
                              ),
                            ),
                            Tab(
                              icon: Text(
                                'Classes',
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 15,
                                    fontFamily: 'Nunito'),
                              ),
                            ),
                          ],
                          controller: TabController(
                            initialIndex: 0,
                            length: 3,
                            vsync: this,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 50),
              Text(
                '£15.00',
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 30,
                    fontFamily: 'Nunito',
                    fontWeight: FontWeight.w600),
              ),
            ],
          ),
        ),
        floatingActionButton: MessagingButton(),
      ),
    );
  }
}
