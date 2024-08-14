import 'package:flutter/material.dart';
import 'cricket.dart';
import 'soccer.dart';
import 'basketball.dart';
class SportsSubTopicsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Sports Subtopics'),
      ),
      body: ListView(
        children: [
          Card(
            child: ListTile(
              leading: Icon(Icons.sports_soccer),
              title: Text('Soccer'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) =>SoccerQuizPage()),
                );
                // Navigate to Soccer Quiz
              },
            ),
          ),
          Divider(),
          Card(
            child: ListTile(
              leading: Icon(Icons.sports_basketball),
              title: Text('Basketball'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) =>BasketballQuizPage()),
                );
                // Navigate to Basketball Quiz
              },
            ),
          ),
          Divider(),
          Card(
            child: ListTile(
              leading: Icon(Icons.sports_cricket),
              title: Text('Cricket'),
              onTap: () {
    Navigator.push(
    context,
    MaterialPageRoute(builder: (context) =>CricketQuizPage()),
    );
    },
                // Navigate to Cricket Quiz
            ),
          ),
        ],
      ),
    );
  }
}
