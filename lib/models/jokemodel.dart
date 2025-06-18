class Jokemodel {
  String type;
  String setup;
  String punchline;
  int id;
  Jokemodel({
    required this.type,
    required this.setup,
    required this.punchline,
    required this.id,
  });
  factory Jokemodel.fromJson(Map json) {
    return Jokemodel(
        type: json['type'],
        setup: json['setup'],
        punchline: json['punchline'],
        id: json['id']);
  }
}
