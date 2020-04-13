import 'package:flutter/material.dart';
import 'package:pocketpro/Screens/home_page.dart';
import 'package:pocketpro/Screens/messaging_page.dart';

class MessagingContactsPage extends StatefulWidget {
  @override
  _MessagingContactsPageState createState() => _MessagingContactsPageState();
}

class _MessagingContactsPageState extends State<MessagingContactsPage> {
  bool _backPressed = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        appBar: AppBar(
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
          leading: IconButton(
            onPressed: () {
              setState(() {
                _backPressed = !_backPressed;
              });
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => MyHomePage(),
                ),
              );
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
          backgroundColor: Colors.white,
          title: Text(
            'Messages',
            style: TextStyle(color: Colors.purple[900]),
          ),
        ),
        backgroundColor: Colors.white,
        body: SafeArea(
          child: Column(
            children: <Widget>[
              SizedBox(
                height: 20,
              ),
              Container(
                height: 700,
                child: ListView.builder(
                  scrollDirection: Axis.vertical,
                  itemExtent: 100,
                  itemCount: 3,
                  itemBuilder: (BuildContext context, int index) {
                    return Card(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(10))),
                      child: ListTile(
                        onTap: () => Navigator.of(context).push(_createRoute()),
                        title: Container(
                            alignment: Alignment.center,
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
                        trailing: Container(
                            height: 100,
                            width: 100,
                            alignment: Alignment.center,
                            child: Icon(Icons.message)),
                      ),
                    );
                  },
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
      pageBuilder: (context, animation, secondaryAnimation) => MessagingPage(),
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
