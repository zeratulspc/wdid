
class Job {
  final String title;
  final DateTime completeDate;
  final List<String>? photos;
  final String? body;

  Job({
    required this.title,
    required this.completeDate,
    this.photos,
    this.body
  });
}