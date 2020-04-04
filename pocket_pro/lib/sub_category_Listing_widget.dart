import 'package:flutter/material.dart';

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
      onTap: () {},
      child: Container(
        width: 350,
        height: 170,
        child: Card(
          color: widget.backgroundColor,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(25)),
          child: Row(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
                child: CircleAvatar(
                  backgroundImage: widget.image,
                  backgroundColor: Colors.transparent,
                  radius: 55,
                ),
              ),
              Expanded(
                child: Container(
                  height: 150,
                  child: Card(
                    color: Colors.grey[200],
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(25)),
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
                                fontSize: 20,
                                fontFamily: 'Nunito'),
                          ),
                          Text(
                            widget.range,
                            style: TextStyle(
                                color: widget.textColor,
                                fontSize: 20,
                                fontFamily: 'Nunito'),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Icon(Icons.star, color: Colors.blue),
                              Icon(Icons.star, color: Colors.blue),
                              Icon(Icons.star, color: Colors.blue),
                              Icon(Icons.star, color: Colors.blue),
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(width: 10),
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
