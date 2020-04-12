import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:pocketpro/messaging_contacts_page.dart';

class MessagingPage extends StatefulWidget {
  @override
  _MessagingPageState createState() => _MessagingPageState();
}

class _MessagingPageState extends State<MessagingPage> {
  bool _backPressed = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(70),
          child: AppBar(
            actions: <Widget>[
              Padding(
                padding: const EdgeInsets.fromLTRB(0, 0, 20, 0),
                child: CircleAvatar(
                  backgroundImage: AssetImage('images/selfie2.jpg'),
                  radius: 30,
                ),
              ),
            ],
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
                    builder: (context) => MessagingContactsPage(),
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
              'Josh',
              style: TextStyle(color: Colors.purple[900]),
            ),
          ),
        ),
        body: Column(
          children: <Widget>[
            Expanded(
              child: ListView(
                children: <Widget>[
                  Column(
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.fromLTRB(20, 20, 80, 5),
                        child: Card(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: ListTile(
                            title: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(
                                "Hi! I'm looking to get a new tutor 4 English, was hoping that you would be able to help with that.",
                              ),
                            ),
                            subtitle: Column(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: <Widget>[
                                Text('09/04 : 09:19'),
                                SizedBox(
                                  height: 10,
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(80, 5, 20, 5),
                        child: Card(
                          color: Colors.blue[100],
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: ListTile(
                              title: Text(
                                "That sounds great! I specialise in English language is that something you are wanting help in? I've been doing this 5 years so I'm sure I could help you.",
                              ),
                              subtitle: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Text('Today 09:19'),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(80, 0, 20, 0),
                        child: Card(
                          color: Colors.blue[100],
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: ListTile(
                              title: Text(
                                "Give me a message when you decide on how you want to proceed :)",
                              ),
                              subtitle: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Text('Today 09:20'),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 8.0),
              height: 75.0,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20),
                  topRight: Radius.circular(20),
                ),
              ),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  IconButton(
                    icon: Icon(Icons.photo),
                    iconSize: 25.0,
                    color: Colors.purple[900],
                    onPressed: () {},
                  ),
                  Expanded(
                    child: TextField(
                      textCapitalization: TextCapitalization.sentences,
                      onChanged: (value) {},
                      decoration: InputDecoration.collapsed(
                        hintText: 'Send a message...',
                      ),
                    ),
                  ),
                  IconButton(
                    icon: Icon(Icons.send),
                    iconSize: 25.0,
                    color: Colors.purple[900],
                    onPressed: () {},
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
