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
      body: ListView(
        children: <Widget>[
          SafeArea(
            child: Column(
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
//                    _filterPressed ?
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
                      iconSize: 30,
                      color:
                          _backPressed ? Colors.purple[900] : Colors.grey[500],
                    ),
                    Spacer(),
                    IconButton(
                      onPressed: () {
                        setState(() {
                          _filterPressed = !_filterPressed;
                        });
                      },
                      icon: Icon(Icons.filter_list),
                      iconSize: 30,
                      color: _filterPressed
                          ? Colors.purple[900]
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
                      color: Colors.purple[900]),
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
          ),
        ],
      ),
      floatingActionButton: MessagingButton(),
    );
  }
}
