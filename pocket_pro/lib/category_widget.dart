import 'package:flutter/material.dart';

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
  final _height = 195.0;
  final _width = 175.0;

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      padding: EdgeInsets.symmetric(horizontal: 20),
      height: _height,
      width: _width,
      decoration: BoxDecoration(
          color: widget.backgroundColor,
          borderRadius: BorderRadius.circular(35)),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          SizedBox(height: 10),
          Text(
            widget.text,
            style: TextStyle(
                color: Colors.white, fontSize: 20, fontFamily: 'Nunito'),
          ),
          CircleAvatar(
            backgroundImage: widget.image,
            backgroundColor: Colors.transparent,
            radius: 75,
          )
        ],
      ),
    );
  }
}
