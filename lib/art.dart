import 'package:flutter/material.dart';
import 'painting.dart';
import 'sculpture.dart';
import 'photography.dart';
class ArtSubTopicsPage extends StatelessWidget
{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Art Subtopics'),
      ),
      body: ListView(
        children: [
          Card(
            child: ListTile(
              leading: Icon(Icons.brush),
              title: Text('Painting'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) =>PaintingQuizPage()),
                );
                // Navigate to Painting Quiz
              },
            ),
          ),
          Divider(),
          Card(
            child: ListTile(
              leading: Icon(Icons.format_paint),
              title: Text('Sculpture'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) =>SculptureQuizPage()),
                );
                // Navigate to Sculpture Quiz
              },
            ),
          ),
          Divider(),
          Card(
            child: ListTile(
              leading: Icon(Icons.camera),
              title: Text('Photography'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => PhotographyQuizPage()),
                );
                // Navigate to Photography Quiz
              },
            ),
          ),
        ],
      ),
    );
  }
}
