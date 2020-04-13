import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

import 'constants.dart';
import 'messaging_contacts_page.dart';

final _firestore = Firestore.instance;
FirebaseUser loggedInUser;

class MessagingPage extends StatefulWidget {
  static const String id = 'chat_screen';
  @override
  _MessagingPageState createState() => _MessagingPageState();
}

class _MessagingPageState extends State<MessagingPage> {
  final messageTextController = TextEditingController();
  final _auth = FirebaseAuth.instance;
  bool _backPressed = false;
  String messageText;

  @override
  void initState() {
    super.initState();

    getCurrentUser();
  }

  void getCurrentUser() async {
    try {
      final user = await _auth.currentUser();
      if (user != null) {
        loggedInUser = user;
      }
    } catch (e) {
      print(e);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          MessagesStream(),
          Container(
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 8.0),
              height: 70.0,
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
                  ),
                  Expanded(
                    child: TextField(
                      controller: messageTextController,
                      onChanged: (value) {
                        messageText = value;
                      },
                      textCapitalization: TextCapitalization.sentences,
                      decoration: InputDecoration.collapsed(
                        hintText: 'Send a message...',
                      ),
                    ),
                  ),
                  IconButton(
                    onPressed: () {
                      messageTextController.clear();
                      _firestore.collection('messages').add({
                        'text': messageText,
                        'sender': loggedInUser.email,
                        'timeStamp': FieldValue.serverTimestamp(),
                      });
                    },
                    icon: Icon(Icons.send),
                    iconSize: 25.0,
                    color: Colors.purple[900],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class MessagesStream extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return StreamBuilder<QuerySnapshot>(
      stream: _firestore
          .collection('messages')
          .orderBy('timeStamp', descending: true)
          .snapshots(),
      builder: (context, snapshot) {
        if (!snapshot.hasData) {
          return Center(
            child: CircularProgressIndicator(
              backgroundColor: Colors.lightBlueAccent,
            ),
          );
        }
        final messages = snapshot.data.documents;
        List<MessageBubble> messageBubbles = [];
        for (var message in messages) {
          final messageText = message.data['text'];
          final messageSender = message.data['sender'];
          final currentUser = loggedInUser.email;

          final messageBubble = MessageBubble(
            sender: messageSender,
            text: messageText,
            isMe: currentUser == messageSender,
          );

          messageBubbles.add(messageBubble);
        }
        return Expanded(
          child: ListView(
            reverse: true,
            padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 20.0),
            children: messageBubbles,
          ),
        );
      },
    );
  }
}

class MessageBubble extends StatelessWidget {
  MessageBubble({this.sender, this.text, this.isMe});

  final String sender;
  final String text;
  final bool isMe;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: isMe
          ? EdgeInsets.fromLTRB(80, 0, 20, 0)
          : EdgeInsets.fromLTRB(20, 0, 80, 0),
      child: Card(
        color: isMe ? Colors.blue[100] : Colors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: ListTile(
            title: Text(text),
            subtitle: Column(
              crossAxisAlignment:
                  isMe ? CrossAxisAlignment.end : CrossAxisAlignment.start,
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
    );
  }
}
