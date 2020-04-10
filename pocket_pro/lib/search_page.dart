import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:pocketpro/home_page.dart';
import 'package:pocketpro/messaging_button.dart';
import 'package:pocketpro/sub_category_Listing_widget.dart';

class SearchPage extends StatefulWidget {
  @override
  _SearchPageState createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  bool _backPressed = false;
  bool _filterPressed = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: ListView(
        children: <Widget>[
          Stack(
            children: <Widget>[
              Column(
                children: <Widget>[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      SizedBox(width: 5),
                      IconButton(
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
                        iconSize: _filterPressed ? 0 : 30,
                        color:
                            _backPressed ? Colors.teal[500] : Colors.grey[500],
                      ),
                      Spacer(),
                      IconButton(
                        onPressed: () {
                          setState(() {
                            _filterPressed = !_filterPressed;
                          });
                        },
                        icon: Icon(Icons.filter_list),
                        iconSize: _filterPressed ? 0 : 30,
                        color: _filterPressed
                            ? Colors.teal[500]
                            : Colors.grey[500],
                      ),
                      SizedBox(width: 15),
                    ],
                  ),
                  Text(
                    'Music',
                    style: TextStyle(
                        fontSize: 40,
                        fontFamily: 'Nunito',
                        fontWeight: FontWeight.w500,
                        color: Colors.blue[700]),
                  ),
                  SizedBox(height: 10),
                  SubCategoryListing(
                    backgroundColor: Colors.white70,
                    image: AssetImage('images/selfie2.jpg'),
                    name: 'Joey Bloggs',
                    text: 'Musical theory',
                    range: 'GCSE to A level',
                    textColor: Colors.black,
                    starCount: 4,
                  ),
                  SizedBox(height: 10),
                  SubCategoryListing(
                    backgroundColor: Colors.grey[300],
                    image: AssetImage('images/selfie3.jpeg'),
                    name: 'Tommy Smith',
                    text: 'Musical practice',
                    range: 'Level 1-8+',
                    textColor: Colors.black,
                    starCount: 4,
                  ),
                  SizedBox(height: 10),
                  SubCategoryListing(
                    backgroundColor: Colors.grey[300],
                    image: AssetImage('images/selfie4.jpg'),
                    name: 'Mary Faulkner',
                    text: 'Musical theory',
                    range: 'GCSE to A level',
                    textColor: Colors.black,
                    starCount: 3,
                  ),
                  SizedBox(height: 10),
                  SubCategoryListing(
                    backgroundColor: Colors.grey[300],
                    image: AssetImage('images/selfie5.jpeg'),
                    name: 'Berta Mackey',
                    text: 'Musical practice',
                    range: 'Level 1-8+',
                    textColor: Colors.black,
                    starCount: 1,
                  ),
                  SizedBox(height: 10),
                  SubCategoryListing(
                    backgroundColor: Colors.grey[300],
                    image: AssetImage('images/selfie6.jpg'),
                    name: 'Mitch Wood',
                    text: 'Musical theory',
                    range: 'GCSE to A level',
                    textColor: Colors.black,
                    starCount: 5,
                  ),
                  SizedBox(height: 10),
                  SubCategoryListing(
                    backgroundColor: Colors.grey[300],
                    image: AssetImage('images/selfie8.jpeg'),
                    name: 'Samuel Jessop',
                    text: 'Musical practice',
                    range: 'Level 1-8+',
                    textColor: Colors.black,
                    starCount: 3,
                  ),
                ],
              ),
              Container(
                alignment: Alignment.topRight,
                child: AnimatedContainer(
                  height: _filterPressed ? 200 : 0,
                  width: MediaQuery.of(context).size.width,
                  duration: Duration(milliseconds: 300),
                  curve: Curves.linear,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border(
                      bottom: BorderSide(
                        color: _filterPressed ? Colors.grey[400] : Colors.white,
                        width: _filterPressed ? 1.0 : 0,
                      ),
                    ),
                  ),
                  child: Column(
                    children: <Widget>[
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          IconButton(
                            onPressed: () {
                              setState(() {
                                _filterPressed = !_filterPressed;
                              });
                            },
                            icon: Icon(Icons.filter_list),
                            iconSize: 30,
                            color: Colors.teal[900],
                          ),
                          SizedBox(width: 15),
                        ],
                      ),
                      Text(
                        'Filter by',
                        style: TextStyle(
                          fontSize: 30,
                          fontFamily: 'Nunito',
                          fontWeight: FontWeight.w500,
                          color: Colors.blue[700],
                        ),
                      ),
                      Spacer(),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: <Widget>[
                          Card(
                            color: Colors.white,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10)),
                            child: Padding(
                                padding: const EdgeInsets.all(10.0),
                                child: Column(
                                  children: <Widget>[
                                    Text('Popularity'),
                                    Icon(Icons.person, color: Colors.black),
                                  ],
                                )),
                          ),
                          Card(
                            color: Colors.white,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10)),
                            child: Padding(
                                padding: const EdgeInsets.all(10.0),
                                child: Column(
                                  children: <Widget>[
                                    Text('Review'),
                                    Icon(Icons.star, color: Colors.blue[800]),
                                  ],
                                )),
                          ),
                          Card(
                            color: Colors.white,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10)),
                            child: Padding(
                                padding: const EdgeInsets.all(10.0),
                                child: Column(
                                  children: <Widget>[
                                    Text('Price low'),
                                    Icon(Icons.attach_money,
                                        color: Colors.green[700]),
                                  ],
                                )),
                          ),
                          Card(
                            color: Colors.white,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10)),
                            child: Padding(
                                padding: const EdgeInsets.all(10.0),
                                child: Column(
                                  children: <Widget>[
                                    Text('Price high'),
                                    Icon(Icons.attach_money,
                                        color: Colors.purple[900]),
                                  ],
                                )),
                          ),
                        ],
                      ),
                      SizedBox(height: 10),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
      floatingActionButton: MessagingButton(),
    );
  }

  Route _createRoute() {
    return PageRouteBuilder(
      pageBuilder: (context, animation, secondaryAnimation) => SearchPage(),
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
