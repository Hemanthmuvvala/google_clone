import 'package:flutter/material.dart';
import 'package:google_clone/models/quotes_api.dart';
import 'package:google_clone/repo/quotes_repository.dart';

class QuotesScreen extends StatefulWidget {
  const QuotesScreen({super.key});

  @override
  State<QuotesScreen> createState() => _QuotesScreenState();
}

class _QuotesScreenState extends State<QuotesScreen> {
  late Future<QuotesApiModel> _futureCall;
  final QuotesRepository quotesRepository = QuotesRepository();
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _futureCall = quotesRepository.getQuote();
  }

  void refresh() {
    setState(() {
      _futureCall = quotesRepository.getQuote();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Quotes'),
        backgroundColor: Colors.blue[200],
      ),
      body: Center(
        child: FutureBuilder(
            future: _futureCall,
            builder: (context, AsyncSnapshot<QuotesApiModel> snapshot) {
              if (snapshot.connectionState == ConnectionState.waiting) {
                return const CircularProgressIndicator();
              } else if (snapshot.hasError) {
                return Text('${snapshot.error}');
              } else if (snapshot.hasData) {
                final quoteData = snapshot.data!;
                return Column(
                  children: [
                    ListTile(
                      title: Text(quoteData.author),
                      subtitle:Text(quoteData.quote),
                    ),
                    TextButton(
                        onPressed: refresh, child: const Text('Get another Quote'))
                  ],
                );
              } else {
                return const Text('error');
              }
            }),
      ),
    );
  }
}
