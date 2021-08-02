
class User {
  final int userId;
  final String username;
  final DateTime registerDate;

  User({
    required this.userId,
    required this.username,
    required this.registerDate,
  });

  factory User.fromJson(Map<String, dynamic> json) {
    return User(
      userId : json['userId'],
      username : json['username'],
      registerDate : DateTime.parse(json['registerDate'])
    );
  }

  Map<String,dynamic> toJson() {
    return {
      'userId' : userId,
      'username' : username,
      'registerDate' : registerDate.toIso8601String()
    };
  }

}