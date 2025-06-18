import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:google_clone/models/quotes_api.dart';

class QuotesRepository {
  Future<QuotesApiModel> getQuote() async {
   
    final quoteResponse = await http.get(Uri.parse('https://flask-api-mh25.onrender.com/quote'));
    if (quoteResponse.statusCode == 200) {
      final jsonData = jsonDecode(quoteResponse.body);
      return QuotesApiModel.fromJson(jsonData);
    } else {
      throw ('error occured');
    }
  }
}