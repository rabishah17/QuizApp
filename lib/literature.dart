import 'package:flutter/material.dart';
import 'poetry.dart';
import 'Novels.dart';
import 'Short stories.dart';

class LiteratureSubTopicsPage extends StatelessWidget {
  void _navigateToPoetryQuiz(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => PoetryQuizPage(),
      ),
    );
  }

  void _navigateToNovelsQuiz(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => NovelQuizPage(),
      ),
    );
  }

  void _navigateToShortStoriesQuiz(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) =>ShortStoryQuizPage(),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Literature Subtopics'),
      ),
      body: ListView(
        children: [
          Card(
            child: ListTile(
              leading: Icon(Icons.menu_book),
              title: Text('Poetry'),
              onTap: () => _navigateToPoetryQuiz(context),
            ),
          ),
          Divider(),
          Card(
            child: ListTile(
              leading: Icon(Icons.library_books),
              title: Text('Novels'),
              onTap: () => _navigateToNovelsQuiz(context),
            ),
          ),
          Divider(),
          Card(
            child: ListTile(
              leading: Icon(Icons.bookmark),
              title: Text('Short Stories'),
              onTap: () => _navigateToShortStoriesQuiz(context),
            ),
          ),
        ],
      ),
    );
  }
}
