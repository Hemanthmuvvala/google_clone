import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:google_clone/models/modelclass.dart';
import 'package:http/http.dart' as http;

class Practice extends StatefulWidget {
  const Practice({super.key});

  @override
  State<Practice> createState() {
    return _PracticeState();
  }
}

class _PracticeState extends State<Practice> {
  bool isLoading = false;
  List<ModelClass> modelClass = [];
  getData() async {
    setState(() {
      isLoading = true;
    });
    http.Response response =
        await http.get(Uri.parse("https://jsonplaceholder.typicode.com/posts"));
    if (response.statusCode == 200) {
      List modelClassdata = jsonDecode(response.body);
      modelClass = modelClassdata.map((e) => ModelClass.fromJSON(e)).toList();
      setState(() {
        
      });
      setState(() {
        isLoading = false;
      });
    }
    // print(jsonDecode(data) as List);
    //  print(data);
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
      body: isLoading
          ? const Center(
              child: CircularProgressIndicator(
                color: Colors.blue,
              ),
            )
          : ListView.builder(
            itemCount:modelClass.length,
            itemBuilder: (context, index) {
              
              return Padding(
                padding: const EdgeInsets.all(5.0),
                child: ListTile(
                  title:Text(modelClass[index].title.toString()),
                  tileColor: Colors.blue[400],
                  subtitle:Text(modelClass[index].body),
                ),
              );
            }),
    );
  }
}
