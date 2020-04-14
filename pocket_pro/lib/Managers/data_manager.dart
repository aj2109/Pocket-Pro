import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:pocketpro/Models/user_models.dart';

class DataManager {
  final _auth = FirebaseAuth.instance;
  final _firestore = Firestore.instance;
  FirebaseUser loggedInUser;

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

  retrieveProfile() async {
    final QuerySnapshot result = await Firestore.instance
        .collection('student')
        .where('id', isEqualTo: loggedInUser.uid)
        .getDocuments();
    final List<DocumentSnapshot> documents = result.documents;
    if (documents.length == 0) {
      Firestore.instance
          .collection('users')
          .document(loggedInUser.uid)
          .setData({'name': loggedInUser.displayName, 'id': loggedInUser.uid});
    }
  }

  retrieveConversations() async {
    final QuerySnapshot result = await Firestore.instance
        .collection('conversation')
        .orderBy('timeStamp', descending: true)
        .where('studentID', isEqualTo: loggedInUser.uid)
        .getDocuments();
    final List<DocumentSnapshot> conversations = result.documents;
    List<String> tutorIDList;
    for (var conversation in conversations) {
      tutorIDList.add(conversation.data["tutorID"]);
    }
    _retrieveContacts(tutorIDList);
  }

  _retrieveContacts(List<String> tutorIDList) async {
    List<User> users;
    for (var id in tutorIDList) {
      final QuerySnapshot result = await Firestore.instance
          .collection('tutor')
          .where('studentID', isEqualTo: id)
          .getDocuments();
      final List<DocumentSnapshot> tutorDetails = result.documents;
      for (var detail in tutorDetails) {
        users.add(User(name: detail.data['name'], id: detail.data['id']));
      }
      Profile.messageContacts = users;
    }
  }
}

//StreamBuilder<QuerySnapshot>(
//stream: _firestore
//    .collection('messages')
//.orderBy('timeStamp', descending: true)
//.snapshots(),
//builder: (context, snapshot) {
//if (!snapshot.hasData) {
//return Center(
//child: CircularProgressIndicator(
//backgroundColor: Colors.lightBlueAccent,
//),
//);
//}
//final messages = snapshot.data.documents;
//List<MessageBubble> messageBubbles = [];
//for (var message in messages) {
//final messageText = message.data['text'];
//final messageSender = message.data['sender'];
//final currentUser = loggedInUser.email;
//final messageBubble = MessageBubble(
//sender: messageSender,
//text: messageText,
//isMe: currentUser == messageSender,
//);
//
//messageBubbles.add(messageBubble);
//}
