import 'package:flutter/material.dart';

class MessagingButton extends StatefulWidget {
  @override
  _MessagingButtonState createState() => _MessagingButtonState();
}

class _MessagingButtonState extends State<MessagingButton> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 60,
      height: 60,
      decoration:
          BoxDecoration(color: Colors.blue[700], shape: BoxShape.circle),
      child: IconButton(
        color: Colors.blue[300],
        icon: Icon(Icons.message),
        disabledColor: Colors.white,
        iconSize: 35,
      ),
    );
  }
}
