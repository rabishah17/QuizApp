import 'package:flutter/material.dart';
import 'biology qs.dart';
import 'physics quiz.dart';
import 'Chemistry qs.dart';
import 'earth science quiz.dart';
import 'environmental science quiz.dart';
class ScienceSubTopicsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Science Subtopics'),
      ),
      body: ListView(
        children: [
          Card(
            child: ListTile(
              leading: Icon(Icons.biotech),  // Use a relevant available icon
              title: Text('Biology'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => BiologyQuizPage()),
                );
              },

              // Navigate to Biology Quiz
            ),
          ),
          Divider(),
          Card(
            child: ListTile(
              leading: Icon(Icons.science),  // Reusing science icon for chemistry
              title: Text('Chemistry'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => ChemistryQuizPage()),
                );

                // Navigate to Chemistry Quiz
              },
            ),
          ),
          Divider(),
          Card(
            child: ListTile(
              leading: Icon(Icons.science_outlined),  // Use a different available icon
              title: Text('Physics'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => PhysicsQuizPage()),
                );
                // Navigate to Physics Quiz
              },
            ),
          ),
          Divider(),
          Card(
            child: ListTile(
              leading: Icon(Icons.public),  // Earth icon
              title: Text('Earth Science'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => EarthScienceQuizPage()),
                );
                // Navigate to Earth Science Quiz
              },
            ),
          ),
          Divider(),
          Card(
            child: ListTile(
              leading: Icon(Icons.eco),  // Eco icon
              title: Text('Environmental Science'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) =>EnvironmentalScienceQuizPage()),
                );
                // Navigate to Environmental Science Quiz
              },
            ),
          ),
        ],
      ),
    );
  }
}