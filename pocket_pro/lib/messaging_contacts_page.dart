import 'package:flutter/material.dart';

class MessagingContactsPage extends StatefulWidget {
  @override
  _MessagingContactsPageState createState() => _MessagingContactsPageState();
}

class _MessagingContactsPageState extends State<MessagingContactsPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        body: ListView.builder(
          scrollDirection: Axis.vertical,
          itemExtent: 100,
          itemCount: 5,
          itemBuilder: (BuildContext context, int index) {
            return Card(
              child: ListTile(
                title: Container(
                    alignment: Alignment.centerLeft,
                    height: 100,
                    width: 100,
                    child: Text('Joey Bloggs')),
                leading: Container(
                  alignment: Alignment.center,
                  height: 100,
                  width: 100,
                  child: CircleAvatar(
                    backgroundImage: AssetImage('images/selfie2.jpg'),
                    radius: 30,
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
