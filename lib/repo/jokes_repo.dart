import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:google_clone/models/jokemodel.dart';

class JokesRepo {
   Future<Jokemodel> getJoke() async {
    final res = await http.get(
      Uri.parse("https://official-joke-api.appspot.com/jokes/random"),
    );

    if (res.statusCode == 200) {
      final jsonData = jsonDecode(res.body);
      return Jokemodel.fromJson(jsonData);
    } else {
      throw Exception('Failed to load joke');
    }
  }

}