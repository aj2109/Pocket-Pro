import 'package:flutter/material.dart';

class BackButtonWidget extends StatefulWidget {
  @override
  _BackButtonWidgetState createState() => _BackButtonWidgetState();
}

class _BackButtonWidgetState extends State<BackButtonWidget> {
  bool _backPressed = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.centerLeft,
      child: IconButton(
        onPressed: () {
          setState(() {
            _backPressed = !_backPressed;
          });
          Navigator.pop(context);
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
    );
  }
}
