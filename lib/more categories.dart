import 'package:flutter/material.dart';
import 'science.dart';
import 'art.dart';
import 'history.dart';
import 'technology.dart';
import 'literature.dart';
import 'sports.dart';
import 'mathematics.dart';
import 'geography.dart';
import 'Music.dart';
import 'movies.dart';

class CategoriesPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(' more Categories'),
      ),
      body: ListView(
        children: [
          Card(
            child: ListTile(
              leading: Icon(Icons.science),
              title: Text('Science'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => ScienceSubTopicsPage()),
                );
                // Navigate to Science Quiz
              },
            ),
          ),
          Divider(),
          Card(
            child: ListTile(
              leading: Icon(Icons.history),
              title: Text('History'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => HistorySubTopicsPage()),
                );
                // Navigate to History Quiz
              },
            ),
          ),
          Divider(),
          Card(
            child: ListTile(
              leading: Icon(Icons.computer),
              title: Text('Technology'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => MobileTechQuizPage()),
                );
                // Navigate to Technology Quiz
              },
            ),
          ),
          Divider(),
          Card(
            child: ListTile(
              leading: Icon(Icons.book),
              title: Text('Literature'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) =>  LiteratureSubTopicsPage()),
                );
                // Navigate to Literature Quiz
              },
            ),
          ),
          Divider(),
          Card(
            child: ListTile(
              leading: Icon(Icons.sports),
              title: Text('Sports'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => SportsSubTopicsPage()),
                );
                // Navigate to Sports Quiz
              },
            ),
          ),
          Divider(),
          Card(
            child: ListTile(
              leading: Icon(Icons.calculate),
              title: Text('Mathematics'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => MathematicsSubTopicsPage()),
                );
                // Navigate to Mathematics Quiz
              },
            ),
          ),
          Divider(),
          Card(
            child: ListTile(
              leading: Icon(Icons.map),
              title: Text('Geography'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => GeographySubTopicsPage()),
                );
                // Navigate to Geography Quiz
              },
            ),
          ),
          Divider(),
          Card(
            child: ListTile(
              leading: Icon(Icons.music_note),
              title: Text('Music'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => MusicSubTopicsPage()),
                );
                // Navigate to Music Quiz
              },
            ),
          ),
          Divider(),
          Card(
            child: ListTile(
              leading: Icon(Icons.brush),
              title: Text('Art'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => ArtSubTopicsPage()),
                );
                // Navigate to Art Quiz
              },
            ),
          ),
          Divider(),
          Card(
            child: ListTile(
              leading: Icon(Icons.movie),
              title: Text('Movies'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => MoviesSubTopicsPage()),
                );
                // Navigate to Movies Quiz
              },
            ),
          ),
        ],
      ),
    );
  }
}
