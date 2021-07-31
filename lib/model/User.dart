
class User {
  final int userId;
  final String userName;
  final DateTime registerDate;

  User({
    required this.userId,
    required this.userName,
    required this.registerDate,
  });

  factory User.fromJson(Map<String, dynamic> json) {
    return User(
      userId : json['userId'],
      userName : json['userName'],
      registerDate : DateTime.parse(json['registerDate'])
    );
  }

  Map<String,dynamic> toJson() {
    return {
      'userId' : userId,
      'userName' : userName,
      'registerDate' : registerDate.toIso8601String()
    };
  }

}