import 'package:flutter/material.dart';

import 'home_page.dart';

class ProfilePage extends StatefulWidget {
  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  bool _backPressed = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        body: SafeArea(
          child: Column(
            children: <Widget>[
              Container(
                alignment: Alignment.topLeft,
                child: IconButton(
                  onPressed: () {
                    setState(() {
                      _backPressed = !_backPressed;
                    });
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => MyHomePage(),
                      ),
                    );
                  },
                  hoverColor: Colors.blueGrey[600],
                  focusColor: Colors.blueGrey[600],
                  disabledColor: Colors.blueGrey[600],
                  highlightColor: Colors.transparent,
                  splashColor: Colors.transparent,
                  icon: Icon(Icons.arrow_back_ios),
                  iconSize: 30,
                  color: _backPressed ? Colors.purple[900] : Colors.grey[500],
                ),
              ),
              Container(
                alignment: Alignment.center,
                child: Stack(
                  children: <Widget>[
                    CircleAvatar(
                      backgroundImage: AssetImage('images/selfie.jpg'),
                      backgroundColor: Colors.transparent,
                      radius: 80,
                    ),
                    Positioned(
                      child: Icon(
                        Icons.photo_camera,
                        color: Colors.white,
                        size: 40,
                      ),
                      bottom: 0,
                      top: 115,
                      right: 0,
                      left: 0,
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Stack(
                children: <Widget>[
                  Container(
                    width: 350,
                    height: 100,
                    child: Card(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(20))),
                    ),
                  ),
                  Positioned(
                      child: Column(
                        children: <Widget>[
                          Text(
                            'Profile',
                            style: TextStyle(
                                fontSize: 20,
                                fontFamily: 'Nunito',
                                color: Colors.black,
                                fontWeight: FontWeight.w600),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Icon(
                            Icons.person,
                            size: 30,
                          ),
                        ],
                      ),
                      right: 145,
                      top: 15),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Stack(
                children: <Widget>[
                  Container(
                    width: 350,
                    height: 100,
                    child: Card(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(20))),
                    ),
                  ),
                  Positioned(
                      child: Column(
                        children: <Widget>[
                          Text(
                            'Schedule',
                            style: TextStyle(
                                fontSize: 20,
                                fontFamily: 'Nunito',
                                color: Colors.black,
                                fontWeight: FontWeight.w600),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Icon(
                            Icons.calendar_today,
                            size: 30,
                          ),
                        ],
                      ),
                      right: 130,
                      top: 15),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Stack(
                children: <Widget>[
                  Container(
                    width: 350,
                    height: 100,
                    child: Card(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(20))),
                    ),
                  ),
                  Positioned(
                      child: Column(
                        children: <Widget>[
                          Text(
                            'Lesson history',
                            style: TextStyle(
                                fontSize: 20,
                                fontFamily: 'Nunito',
                                color: Colors.black,
                                fontWeight: FontWeight.w600),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Icon(
                            Icons.history,
                            size: 30,
                          ),
                        ],
                      ),
                      right: 110,
                      top: 15),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Stack(
                children: <Widget>[
                  Container(
                    width: 350,
                    height: 100,
                    child: Card(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(20))),
                    ),
                  ),
                  Positioned(
                      child: Text(
                        'Log out',
                        style: TextStyle(
                            fontSize: 20,
                            fontFamily: 'Nunito',
                            color: Colors.black,
                            fontWeight: FontWeight.w600),
                      ),
                      right: 140,
                      top: 35),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Stack(
                children: <Widget>[
                  Container(
                    width: 300,
                    height: 100,
                    child: Card(
                      color: Colors.red[400],
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(20))),
                    ),
                  ),
                  Positioned(
                      child: Text(
                        'Delete account',
                        style: TextStyle(
                            fontSize: 20,
                            fontFamily: 'Nunito',
                            color: Colors.white,
                            fontWeight: FontWeight.w600),
                      ),
                      right: 85,
                      top: 35),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
