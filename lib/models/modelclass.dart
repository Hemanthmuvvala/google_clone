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

// {
//     "userId": 1,
//     "id": 1,
//     "title": "sunt aut facere repellat provident occaecati excepturi optio reprehenderit",
//     "body": "quia et suscipit\nsuscipit recusandae consequuntur expedita et cum\nreprehenderit molestiae ut ut quas totam\nnostrum rerum est autem sunt rem eveniet architecto"
//   },