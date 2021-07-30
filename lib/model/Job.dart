
class Job {
  final int id;
  final String title;
  final DateTime completeDate;
  final List<String>? photos;
  final String? body;

  Job({
    required this.id,
    required this.title,
    required this.completeDate,
    this.photos,
    this.body
  });
}