import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class Practice extends StatefulWidget {
  const Practice({super.key});

  @override
  State<Practice> createState() {
    return _PracticeState();
  }
}

class _PracticeState extends State<Practice> {
  String data = '';
  // getData() {
  //   http
  //       .get(Uri.parse("https://jsonplaceholder.typicode.com/posts"))
  //       .then((value) {
  //     // print(value.statusCode);
  //     // print(value.body);
  //     data = value.body;
  //     setState(() {

  //     });
  //   }).onError(
  //     (error, stackTrace) {},
  //   );
  // }
  getData() async {
    http.Response response =
        await http.get(Uri.parse("https://jsonplaceholder.typicode.com/posts"));

    data = response.body;

    // print(jsonDecode(data) as List);
    print(data);
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Text('hello'),
    );
  }
}
