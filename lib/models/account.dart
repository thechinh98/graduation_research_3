class Account {
  String userId;
  String password;

  Account({this.userId, this.password});

  Account.fromMap(Map<String, dynamic> map) {
    userId = map['userId'];
    password = map['password'];
  }
}
