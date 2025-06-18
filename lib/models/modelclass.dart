class ModelClass {
  final int userId;
  final int id;
  final String title;
  final String body;

  ModelClass({
    required this.userId,
    required this.id,
    required this.title,
    required this.body,
  });
  factory ModelClass.fromJSON(Map json) {
    return ModelClass(
        userId: json['userId'],
        id: json['id'],
        title: json['title'],
        body: json['body']);
  }
}
