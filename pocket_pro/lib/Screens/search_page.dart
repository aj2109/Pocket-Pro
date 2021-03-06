import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:pocketpro/Widgets/back_button_widget.dart';
import 'package:pocketpro/Widgets/messaging_button.dart';
import 'package:pocketpro/Widgets/search_widget.dart';
import 'package:pocketpro/Widgets/tutor_listing_widget.dart';

class SearchPage extends StatefulWidget {
  @override
  _SearchPageState createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
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
                  Column(
                    children: <Widget>[
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: <Widget>[
                          SizedBox(width: 5),
                          BackButtonWidget(),
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
                                ? Colors.purple[900]
                                : Colors.grey[500],
                          ),
                          SizedBox(width: 15),
                        ],
                      ),
                    ],
                  ),
                  Text(
                    'Music',
                    style: TextStyle(
                        fontSize: 40,
                        fontFamily: 'Nunito',
                        fontWeight: FontWeight.w500,
                        color: Colors.purple[900]),
                  ),
                  SizedBox(height: 10),
                  TutorListingWidget(
                    backgroundColor: Colors.white70,
                    image: AssetImage('images/selfie2.jpg'),
                    name: 'Joey Bloggs',
                    text: 'Musical theory',
                    range: 'GCSE to A level',
                    textColor: Colors.black,
                    starCount: 4,
                  ),
                  SizedBox(height: 10),
                  TutorListingWidget(
                    backgroundColor: Colors.grey[300],
                    image: AssetImage('images/selfie3.jpeg'),
                    name: 'Tommy Smith',
                    text: 'Musical practice',
                    range: 'Level 1-8+',
                    textColor: Colors.black,
                    starCount: 4,
                  ),
                  SizedBox(height: 10),
                  TutorListingWidget(
                    backgroundColor: Colors.grey[300],
                    image: AssetImage('images/selfie4.jpg'),
                    name: 'Mary Faulkner',
                    text: 'Musical theory',
                    range: 'GCSE to A level',
                    textColor: Colors.black,
                    starCount: 3,
                  ),
                  SizedBox(height: 10),
                  TutorListingWidget(
                    backgroundColor: Colors.grey[300],
                    image: AssetImage('images/selfie5.jpeg'),
                    name: 'Berta Mackey',
                    text: 'Musical practice',
                    range: 'Level 1-8+',
                    textColor: Colors.black,
                    starCount: 1,
                  ),
                  SizedBox(height: 10),
                  TutorListingWidget(
                    backgroundColor: Colors.grey[300],
                    image: AssetImage('images/selfie6.jpg'),
                    name: 'Mitch Wood',
                    text: 'Musical theory',
                    range: 'GCSE to A level',
                    textColor: Colors.black,
                    starCount: 5,
                  ),
                  SizedBox(height: 10),
                  TutorListingWidget(
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
                  height: _filterPressed ? 270 : 0,
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
                            color: Colors.purple[900],
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
                          color: Colors.purple[900],
                        ),
                      ),
                      Spacer(),
                      FilterButtons(),
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
}

class FilterButtons extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
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
                      Icon(Icons.attach_money, color: Colors.green[700]),
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
                      Icon(Icons.attach_money, color: Colors.purple[900]),
                    ],
                  )),
            ),
          ],
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(0, 20, 0, 0),
          child: SearchWidget(),
        ),
      ],
    );
  }
}
