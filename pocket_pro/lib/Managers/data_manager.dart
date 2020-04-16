import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:pocketpro/Models/user_models.dart';

class DataManager {
  static final shared = DataManager();
  Profile profile;
  final auth = FirebaseAuth.instance;
  final firestore = Firestore.instance;
  FirebaseUser loggedInUser;
  bool student = true;
  final storage = new FlutterSecureStorage();

  Future<bool> getCurrentUser() async {
    try {
      final user = await auth.currentUser();
      if (user != null) {
        loggedInUser = user;
        print('logged in user!');
        return true;
      }
      print('logged in user failed 1!');
      return false;
    } catch (e) {
      print(e);
      print('logged in user failed 2!');
      return false;
    }
  }

  void retrieveProfile() async {
    String collectionString = student ? "student" : "tutor";
    final QuerySnapshot result = await firestore
        .collection(collectionString)
        .where('id', isEqualTo: loggedInUser.uid)
        .getDocuments();
    final List<DocumentSnapshot> documents = result.documents;
    if (documents.length == 0) {
      Firestore.instance
          .collection('users')
          .document(loggedInUser.uid)
          .setData({
        'name': loggedInUser.displayName,
        'id': loggedInUser.uid,
        'imageURL': loggedInUser.photoUrl,
      });
      DataManager.shared.profile = Profile(
        name: loggedInUser.displayName,
        id: loggedInUser.uid,
        imageURL: loggedInUser.photoUrl,
      );
      retrieveConversations();
    }
  }

  Future<List<User>> retrieveConversations() async {
    String collectionString = student ? "studentID" : "tutorID";

    final QuerySnapshot result = await firestore
        .collection('conversation')
        .orderBy('timeStamp', descending: true)
        .where(collectionString, isEqualTo: loggedInUser.uid)
        .getDocuments();
    final List<DocumentSnapshot> conversations = result.documents;
    List<String> idList;
    for (var conversation in conversations) {
      idList.add(conversation.data["tutorID"]);
    }
    return _retrieveContacts(idList);
  }

  _retrieveContacts(List<String> idList) async {
    String collectionString = student ? "student" : "tutor";
    List<User> users;
    for (var id in idList) {
      final QuerySnapshot result = await firestore
          .collection(collectionString)
          .where('studentID', isEqualTo: id)
          .getDocuments();
      final List<DocumentSnapshot> tutorDetails = result.documents;
      for (var detail in tutorDetails) {
        users.add(User(
            name: detail.data['name'],
            id: detail.data['id'],
            imageURL: detail.data['imageURL']));
      }
    }
    DataManager.shared.profile.messageContacts = users;
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
