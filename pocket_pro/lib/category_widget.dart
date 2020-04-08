import 'package:flutter/material.dart';
import 'package:pocketpro/search_page.dart';

// ignore: must_be_immutable
class CategoryWidget extends StatefulWidget {
  String text;
  Color backgroundColor;
  AssetImage image;

  CategoryWidget({this.backgroundColor, this.text, this.image});

  @override
  _CategoryWidgetState createState() => _CategoryWidgetState();
}

class _CategoryWidgetState extends State<CategoryWidget> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Navigator.of(context).push(_createRoute()),
      child: Card(
        color: widget.backgroundColor,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(25)),
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Text(
                widget.text,
                style: TextStyle(
                    color: Colors.white, fontSize: 20, fontFamily: 'Nunito'),
              ),
              SizedBox(height: 10),
              CircleAvatar(
                backgroundImage: widget.image,
                backgroundColor: Colors.transparent,
                radius: 75,
              )
            ],
          ),
        ),
      ),
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
