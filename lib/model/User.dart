
class User {
  final String uid;
  final String username;
  final DateTime registerDate;

  User({
    required this.uid,
    required this.username,
    required this.registerDate,
  });

  factory User.fromJson(Map<String, dynamic> json) {
    return User(
      uid : json['uid'],
      username : json['username'],
      registerDate : DateTime.parse(json['registerDate'])
    );
  }

  Map<String,dynamic> toJson() {
    return {
      'uid' : uid,
      'username' : username,
      'registerDate' : registerDate.toIso8601String()
    };
  }

}