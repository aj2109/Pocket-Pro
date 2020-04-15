class User {
  String name;
  String id;
  String imageURL;

  User({String name, String id, String imageURL}) {
    this.name = name;
    this.id = id;
    this.imageURL = imageURL;
  }
}

class Profile extends User {
  List<User> messageContacts;
  Profile(
      {String name, String id, String imageURL, List<User> messageContacts}) {
    this.name = name;
    this.id = id;
    this.imageURL = imageURL;
    this.messageContacts = messageContacts;
  }
}
