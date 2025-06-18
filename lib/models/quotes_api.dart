class QuotesApiModel {
  String author;
  String quote;

  QuotesApiModel({
    required this.author,
    required this.quote,
  });
  factory QuotesApiModel.fromJson(Map json) {
    return QuotesApiModel(
      author: json['author'],
      quote: json['quote'],
    );
  }
}
