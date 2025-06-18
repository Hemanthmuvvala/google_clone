import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:google_clone/models/modelclass.dart';
import 'package:http/http.dart' as http;


class Practice extends StatefulWidget {
  const Practice({super.key});

  @override
  State<Practice> createState() => _PracticeState();
}

class _PracticeState extends State<Practice> {
  bool isLoading = false;
  List<ModelClass> modelClass = [];

  Future<void> getData() async {
    setState(() {
      isLoading = true;
    });

    final response =
        await http.get(Uri.parse("https://jsonplaceholder.typicode.com/posts"));

    if (response.statusCode == 200) {
      final List decodedData = jsonDecode(response.body);
      setState(() {
        modelClass = decodedData.map((e) => ModelClass.fromJSON(e)).toList();
        isLoading = false;
      });
    } else {
      setState(() {
        isLoading = false;
      });
      // Optionally handle error here
    }
  }

  @override
  void initState() {
    super.initState();
    getData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // body: isLoading
      //     ? const Center(
      //         child: CircularProgressIndicator(color: Colors.blue),
      //       )
      //     : ListView.builder(
      //         itemCount: modelClass.length,
      //         itemBuilder: (context, index) {
      //           final item = modelClass[index];
      //           return Padding(
      //             padding: const EdgeInsets.all(5.0),
      //             child: ListTile(
      //               title: Text(item.title.toString()),
      //               subtitle: Text(item.body),
      //               tileColor: Colors.blue[400],
      //             ),
      //           );
      //         },
      //       ),
 
    );
  }
}
