import 'package:flutter/material.dart';
import 'ancient_history.dart';
import 'medieval_history.dart';
import 'modern_history.dart';

class HistorySubTopicsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('History Subtopics'),
      ),
      body: ListView(
        children: [
          Card(
            child: ListTile(
              leading: Icon(Icons.account_balance),
              title: Text('Ancient History'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => AncientHistoryQuizPage()),
                );
                // Navigate to Ancient History Quiz
              },
            ),
          ),
          Divider(),
          Card(
            child: ListTile(
              leading: Icon(Icons.book_online),
              title: Text('Medieval History'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => MedievalHistoryQuizPage()),
                );
                // Navigate to Medieval History Quiz
              },
            ),
          ),
          Divider(),
          Card(
            child: ListTile(
              leading: Icon(Icons.history_edu),
              title: Text('Modern History'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => ModernHistoryQuizPage()),
                );
                // Navigate to Modern History Quiz
              },
            ),
          ),
        ],
      ),
    );
  }
}
