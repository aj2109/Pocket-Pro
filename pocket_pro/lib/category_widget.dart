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
      onTap: () => Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => SearchPage(),
        ),
      ),
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
}
