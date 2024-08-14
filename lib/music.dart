import 'package:flutter/material.dart';
import 'classical music.dart';
import 'pop music.dart';
import 'rock music.dart';
class MusicSubTopicsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Music Subtopics'),
      ),
      body: ListView(
        children: [
          Card(
            child: ListTile(
              leading: Icon(Icons.music_note),
              title: Text('Classical Music'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) =>ClassicalMusicQuizPage()),
                );
                // Navigate to Classical Music Quiz
              },
            ),
          ),
          Divider(),
          Card(
            child: ListTile(
              leading: Icon(Icons.audiotrack),
              title: Text('Pop Music'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) =>PopMusicQuizPage()),
                );
                // Navigate to Pop Music Quiz
              },
            ),
          ),
          Divider(),
          Card(
            child: ListTile(
              leading: Icon(Icons.album),
              title: Text('Rock Music'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) =>RockMusicQuizPage()),
                );
                // Navigate to Rock Music Quiz
              },
            ),
          ),
        ],
      ),
    );
  }
}
