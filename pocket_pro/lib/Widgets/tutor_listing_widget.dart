import 'package:flutter/material.dart';
import 'package:pocketpro/Screens/tutor_page.dart';

// ignore: must_be_immutable
class TutorListingWidget extends StatefulWidget {
  String name;
  String text;
  String range;
  Color backgroundColor;
  Color textColor;
  AssetImage image;
  double starCount;
  TutorListingWidget(
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

class _SubCategoryListingWidgetState extends State<TutorListingWidget> {
  List<Icon> starArray;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).push(_createRoute());
      },
      child: Container(
        width: 400,
        height: 225,
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
                    StarContainer()
                  ],
                ),
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(10, 10, 10, 10),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: <Widget>[
                      SummaryContainer(),
                      DiscountContainer(),
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

  Route _createRoute() {
    return PageRouteBuilder(
      pageBuilder: (context, animation, secondaryAnimation) => TutorPage(),
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

class SummaryContainer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.white,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      child: Padding(
        padding: const EdgeInsets.fromLTRB(10, 20, 10, 10),
        child: Column(
          children: <Widget>[
            Text(
              "Joey Bloggs",
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 20,
                  fontFamily: 'Nunito',
                  fontWeight: FontWeight.w800),
            ),
            Text(
              "Musical theory",
              style: TextStyle(
                  color: Colors.black, fontSize: 15, fontFamily: 'Nunito'),
            ),
            Text(
              "GCSE to A Level",
              style: TextStyle(
                  color: Colors.black, fontSize: 15, fontFamily: 'Nunito'),
            ),
            Text(
              '5 years experience',
              style: TextStyle(
                  color: Colors.black, fontSize: 15, fontFamily: 'Nunito'),
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
    );
  }
}

class StarContainer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.white,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
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
    );
  }
}

class DiscountContainer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.white,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
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
    );
  }
}
