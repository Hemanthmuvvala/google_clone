import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:google_clone/models/quotes_api.dart';

class QuotesRepository {
  Future<QuotesApiModel> getQuote() async {
    var urlEndPoint = Uri.parse('http://127.0.0.1:5000/quote');
    final quoteResponse = await http.get(urlEndPoint);
    if (quoteResponse.statusCode == 200) {
      final jsonData = jsonDecode(quoteResponse.body);
      return QuotesApiModel.fromJson(jsonData);
    } else {
      throw ('error occured');
    }
  }
}