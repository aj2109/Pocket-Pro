class User {
  String name;
  String id;

  User({String name, String id}) {
    this.name = name;
    this.id = id;
  }
}

class Profile {
  static List<User> messageContacts;
}
