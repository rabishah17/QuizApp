import 'package:flutter/material.dart';
import 'human geography.dart';
import 'cartography.dart';
import 'physical geography.dart';
class GeographySubTopicsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Geography Subtopics'),
      ),
      body: ListView(
        children: [
          Card(
            child: ListTile(
              leading: Icon(Icons.landscape),
              title: Text('Physical Geography'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) =>GeographyQuizPage()),
                );
                // Navigate to Physical Geography Quiz
              },
            ),
          ),
          Divider(),
          Card(
            child: ListTile(
              leading: Icon(Icons.people),
              title: Text('Human Geography'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) =>GeographyQuizPage()),
                );
                // Navigate to Human Geography Quiz
              },
            ),
          ),
          Divider(),
          Card(
            child: ListTile(
              leading: Icon(Icons.map),
              title: Text('Cartography'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) =>CartographyQuizPage()),
                );
                // Navigate to Cartography Quiz
              },
            ),
          ),
        ],
      ),
    );
  }
}
