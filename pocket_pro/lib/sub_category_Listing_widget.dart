import 'package:flutter/material.dart';
import 'package:pocketpro/tutor_page.dart';

// ignore: must_be_immutable
class SubCategoryListing extends StatefulWidget {
  String name;
  String text;
  String range;
  Color backgroundColor;
  Color textColor;
  AssetImage image;
  double starCount;
  SubCategoryListing(
      {this.backgroundColor,
      this.text,
      this.image,
      this.textColor,
      this.name,
      this.range,
      this.starCount});

  @override
  _SubCategoryListingWidgetState createState() =>
      _SubCategoryListingWidgetState();
}

class _SubCategoryListingWidgetState extends State<SubCategoryListing> {
  List<Icon> starArray;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => TutorPage()));
      },
      child: Container(
        width: 400,
        height: 215,
        child: Card(
          color: Color.fromRGBO(245, 245, 245, 1),
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(25)),
          child: Row(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.fromLTRB(10, 10, 10, 0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    CircleAvatar(
                      backgroundImage: widget.image,
                      backgroundColor: Colors.transparent,
                      radius: 55,
                    ),
                    Card(
                      color: Colors.white,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10)),
                      child: Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Column(
                          children: <Widget>[
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Icon(Icons.star, color: Colors.blue[800]),
                                Icon(Icons.star, color: Colors.blue[800]),
                                Icon(Icons.star, color: Colors.blue[800]),
                                Icon(Icons.star, color: Colors.blue[800]),
                              ],
                            ),
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(10, 0, 10, 10),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: <Widget>[
                      SizedBox(height: 10),
                      Card(
                        color: Colors.white,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10)),
                        child: Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Column(
                            children: <Widget>[
                              Text(
                                widget.name,
                                style: TextStyle(
                                    color: widget.textColor,
                                    fontSize: 20,
                                    fontFamily: 'Nunito',
                                    fontWeight: FontWeight.w800),
                              ),
                              Text(
                                widget.text,
                                style: TextStyle(
                                    color: widget.textColor,
                                    fontSize: 15,
                                    fontFamily: 'Nunito'),
                              ),
                              Text(
                                widget.range,
                                style: TextStyle(
                                    color: widget.textColor,
                                    fontSize: 15,
                                    fontFamily: 'Nunito'),
                              ),
                              Text(
                                '5 years experience',
                                style: TextStyle(
                                    color: widget.textColor,
                                    fontSize: 15,
                                    fontFamily: 'Nunito'),
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: <Widget>[
                                  Icon(Icons.person),
                                  Text('49'),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                      Card(
                        color: Colors.white,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10)),
                        child: Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Center(
                            child: Text(
                              'Buy 3 lessons get 1 free',
                              style: TextStyle(
                                  color: Colors.blue[800],
                                  fontSize: 15,
                                  fontFamily: 'Nunito',
                                  fontWeight: FontWeight.w800),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

//  List<Icon> _getStars(starCount) {
//    final stars = [];
//    for (int i = 0; i < starCount; i++) {
//      stars.add(Icon(Icons.star, color: Colors.blue));
//    }
//    return stars;
//  }
}
