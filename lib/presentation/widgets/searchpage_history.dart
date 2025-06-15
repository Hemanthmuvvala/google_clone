import 'package:flutter/material.dart';

class SearchpageHistory extends StatefulWidget {
  final String searchHistory;
  const SearchpageHistory({super.key,required  this.searchHistory});

  @override
  State<SearchpageHistory> createState() => _SearchpageHistoryState();
}

class _SearchpageHistoryState extends State<SearchpageHistory> {
  @override
  Widget build(BuildContext context) {
    return ListTile(
      dense: true,
      leading: Container(
        height: 30,
        width: 30,
        decoration: BoxDecoration(
          color: Colors.grey.withOpacity(0.1),
          borderRadius: BorderRadius.circular(30),
        ),
        child: const Icon(
          Icons.schedule_outlined,
          color: Color.fromARGB(255, 99, 99, 99),
          size: 20,
        ),
      ),
      title: Text(
        widget.searchHistory,
        style: const TextStyle(color: Colors.white, fontSize: 15),
      ),
    );
  }
}
