import 'package:flutter/material.dart';
import 'package:pocketpro/messaging_contacts_page.dart';

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
          BoxDecoration(color: Colors.purple[900], shape: BoxShape.circle),
      child: IconButton(
        onPressed: () => Navigator.of(context).push(_createRoute()),
        color: Colors.white,
        icon: Icon(Icons.message),
        disabledColor: Colors.white,
        iconSize: 35,
      ),
    );
  }
}

Route _createRoute() {
  return PageRouteBuilder(
    pageBuilder: (context, animation, secondaryAnimation) =>
        MessagingContactsPage(),
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
