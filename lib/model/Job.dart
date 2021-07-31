
class Job {
  final int id;
  final int userId;
  final String title;
  final DateTime completeDate;
  final String? thumbnail;
  final List<String>? photos;
  final String? body;

  Job({
    required this.id,
    required this.userId,
    required this.title,
    required this.completeDate,
    this.thumbnail,
    this.photos,
    this.body
  });


}