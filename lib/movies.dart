import 'package:flutter/material.dart';
import 'Drama movies.dart';
import 'comedy movies.dart';
import 'Action movies.dart';
class MoviesSubTopicsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Movies Subtopics'),
      ),
      body: ListView(
        children: [
          Card(
            child: ListTile(
              leading: Icon(Icons.movie),
              title: Text('Action Movies'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) =>ActionMoviesQuizPage()),
                );
                // Navigate to Action Movies Quiz
              },
            ),
          ),
          Divider(),
          Card(
            child: ListTile(
              leading: Icon(Icons.movie_filter),
              title: Text('Comedy Movies'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) =>ComedyMoviesQuizPage()),
                );
                // Navigate to Comedy Movies Quiz
              },
            ),
          ),
          Divider(),
          Card(
            child: ListTile(
              leading: Icon(Icons.movie_creation),
              title: Text('Drama Movies'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => DramaMoviesQuizPage()),
                );
                // Navigate to Drama Movies Quiz
              },
            ),
          ),
        ],
      ),
    );
  }
}
