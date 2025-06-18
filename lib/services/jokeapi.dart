import 'package:flutter/material.dart';
import 'package:google_clone/models/jokemodel.dart';
import 'package:google_clone/repo/jokes_repo.dart';

class JokeApi extends StatefulWidget {
  const JokeApi({super.key});

  @override
  State<JokeApi> createState() => _JokeApiState();
}

class _JokeApiState extends State<JokeApi> {
  late Future<Jokemodel> _future;
  @override
  void initState() {
    super.initState();
    _future = jokesRepo.getJoke();
  }

  final JokesRepo jokesRepo = JokesRepo();
  void refreshJoke() {
    setState(() {
      _future = jokesRepo.getJoke();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Joke API'),
        backgroundColor: Colors.blue,
      ),
      body: Center(
        child: FutureBuilder<Jokemodel>(
            future: _future,
            builder: (context, snapshot) {
              if (snapshot.connectionState == ConnectionState.waiting) {
                return const CircularProgressIndicator();
              } else if (snapshot.hasError) {
                return Text("${snapshot.error}");
              } else if (snapshot.hasData) {
                final joke = snapshot.data!;
                return Column(
                  children: [
                    Text(joke.setup),
                    Text(joke.punchline),
                    ElevatedButton(
                      onPressed: refreshJoke,
                      child: const Text('another Joke'),
                    ),
                  ],
                );
              } else {
                return const Column(
                  children: [
                    Text('No joke found'),
                  ],
                );
              }
            }),
      ),
    );
  }
}
