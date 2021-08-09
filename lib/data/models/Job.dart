
class Job {
  final String id;
  final String uid;
  final String title;
  final DateTime completeDate;
  final String? thumbnail;
  final List<String>? photos;
  final String? body;

  Job({
    required this.id,
    required this.uid,
    required this.title,
    required this.completeDate,
    this.thumbnail,
    this.photos,
    this.body
  });

  factory Job.fromJson(String key, Map<String, dynamic> json) {
    return Job(
      id: key,
      uid: json['uid'],
      title: json['title'],
      completeDate: DateTime.parse(json['completeDate']),
      thumbnail: json['thumbnail'],
      photos: json['photos'],
      body: json['body']
    );
  }

  Map<String,dynamic> toJson() {
    return {
      'uid' : uid,
      'title' : title,
      'completeDate' : completeDate.toIso8601String(),
      'thumbnail' : thumbnail,
      'photos' : photos,
      'body' : body,
    };
  }

  bool isToday() {
    DateTime now = DateTime.now();
    if(DateTime(completeDate.year,completeDate.month,completeDate.day)
        .difference(DateTime(now.year,now.month,now.day))
        .inDays == 0) {
      return true;
    } else {
      return false;
    }
  }
}