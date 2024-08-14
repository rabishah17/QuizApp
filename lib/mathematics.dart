import 'package:flutter/material.dart';
import 'Algebra.dart';
import 'Calculus.dart';
import 'Statistics.dart';

class MathematicsSubTopicsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Mathematics Subtopics'),
      ),
      body: ListView(
        children: [
          Card(
            child: ListTile(
              leading: Icon(Icons.functions),
              title: Text('Algebra'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) =>AlgebraQuizPage()),
                );
                // Navigate to Algebra Quiz
              },
            ),
          ),
          Divider(),
          Card(
            child: ListTile(
              leading: Icon(Icons.calculate),
              title: Text('Calculus'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) =>CalculusQuizPage()),
                );
                // Navigate to Calculus Quiz
              },
            ),
          ),
          Divider(),
          Card(
            child: ListTile(
              leading: Icon(Icons.stacked_bar_chart),
              title: Text('Statistics'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) =>StatisticsQuizPage()),
                );
                // Navigate to Statistics Quiz
              },
            ),
          ),
        ],
      ),
    );
  }
}
