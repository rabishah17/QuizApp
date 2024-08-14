import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: PopMusicQuizPage(),
  ));
}

class PopMusicQuizPage extends StatelessWidget {
  final List<Map<String, Object>> _questions = const [
    {
      'questionText': 'Who is known as the "King of Pop"?',
      'answers': [
        {'text': 'Michael Jackson', 'correct': true},
        {'text': 'Elvis Presley', 'correct': false},
        {'text': 'Justin Timberlake', 'correct': false},
        {'text': 'Prince', 'correct': false},
      ],
    },
    {
      'questionText': 'Which singer released the hit single "Shape of You"?',
      'answers': [
        {'text': 'Justin Bieber', 'correct': false},
        {'text': 'Ed Sheeran', 'correct': true},
        {'text': 'Shawn Mendes', 'correct': false},
        {'text': 'Bruno Mars', 'correct': false},
      ],
    },
    {
      'questionText': 'Who performed the song "Rolling in the Deep"?',
      'answers': [
        {'text': 'Adele', 'correct': true},
        {'text': 'Beyoncé', 'correct': false},
        {'text': 'Taylor Swift', 'correct': false},
        {'text': 'Rihanna', 'correct': false},
      ],
    },
    {
      'questionText': 'Which band wrote the song "Bohemian Rhapsody"?',
      'answers': [
        {'text': 'The Beatles', 'correct': false},
        {'text': 'Led Zeppelin', 'correct': false},
        {'text': 'Queen', 'correct': true},
        {'text': 'Pink Floyd', 'correct': false},
      ],
    },
    {
      'questionText': 'Who is the lead singer of Coldplay?',
      'answers': [
        {'text': 'Chris Martin', 'correct': true},
        {'text': 'Thom Yorke', 'correct': false},
        {'text': 'Brandon Flowers', 'correct': false},
        {'text': 'Dave Grohl', 'correct': false},
      ],
    },
    {
      'questionText': 'Which artist released the album "1989"?',
      'answers': [
        {'text': 'Taylor Swift', 'correct': true},
        {'text': 'Ariana Grande', 'correct': false},
        {'text': 'Katy Perry', 'correct': false},
        {'text': 'Selena Gomez', 'correct': false},
      ],
    },
    {
      'questionText': 'Who sang the song "Uptown Funk"?',
      'answers': [
        {'text': 'Mark Ronson ft. Bruno Mars', 'correct': true},
        {'text': 'Justin Timberlake', 'correct': false},
        {'text': 'Drake', 'correct': false},
        {'text': 'Calvin Harris', 'correct': false},
      ],
    },
    {
      'questionText': 'Which artist released the hit single "Someone Like You"?',
      'answers': [
        {'text': 'Adele', 'correct': true},
        {'text': 'Sia', 'correct': false},
        {'text': 'Lady Gaga', 'correct': false},
        {'text': 'Rihanna', 'correct': false},
      ],
    },
    {
      'questionText': 'Who performed the song "Havana"?',
      'answers': [
        {'text': 'Shakira', 'correct': false},
        {'text': 'Camila Cabello', 'correct': true},
        {'text': 'Dua Lipa', 'correct': false},
        {'text': 'Selena Gomez', 'correct': false},
      ],
    },
    {
      'questionText': 'Which singer released the album "Reputation"?',
      'answers': [
        {'text': 'Taylor Swift', 'correct': true},
        {'text': 'Ariana Grande', 'correct': false},
        {'text': 'Katy Perry', 'correct': false},
        {'text': 'Selena Gomez', 'correct': false},
      ],
    },
    {
      'questionText': 'Who is known for the song "Hotline Bling"?',
      'answers': [
        {'text': 'Drake', 'correct': true},
        {'text': 'Kanye West', 'correct': false},
        {'text': 'Kendrick Lamar', 'correct': false},
        {'text': 'Travis Scott', 'correct': false},
      ],
    },
    {
      'questionText': 'Which artist released the album "Divide"?',
      'answers': [
        {'text': 'Ed Sheeran', 'correct': true},
        {'text': 'Sam Smith', 'correct': false},
        {'text': 'Shawn Mendes', 'correct': false},
        {'text': 'Charlie Puth', 'correct': false},
      ],
    },
    {
      'questionText': 'Who sang "Girls Like You"?',
      'answers': [
        {'text': 'Maroon 5 ft. Cardi B', 'correct': true},
        {'text': 'Imagine Dragons', 'correct': false},
        {'text': 'OneRepublic', 'correct': false},
        {'text': 'Panic! At The Disco', 'correct': false},
      ],
    },
    {
      'questionText': 'Which artist released the single "Shake It Off"?',
      'answers': [
        {'text': 'Ariana Grande', 'correct': false},
        {'text': 'Katy Perry', 'correct': false},
        {'text': 'Taylor Swift', 'correct': true},
        {'text': 'Selena Gomez', 'correct': false},
      ],
    },
    {
      'questionText': 'Who is known for the song "Can\'t Stop the Feeling!"?',
      'answers': [
        {'text': 'Justin Bieber', 'correct': false},
        {'text': 'Justin Timberlake', 'correct': true},
        {'text': 'Chris Brown', 'correct': false},
        {'text': 'Usher', 'correct': false},
      ],
    },
    {
      'questionText': 'Which artist released the album "Lemonade"?',
      'answers': [
        {'text': 'Rihanna', 'correct': false},
        {'text': 'Beyoncé', 'correct': true},
        {'text': 'Nicki Minaj', 'correct': false},
        {'text': 'Ariana Grande', 'correct': false},
      ],
    },
    {
      'questionText': 'Who performed "Poker Face"?',
      'answers': [
        {'text': 'Katy Perry', 'correct': false},
        {'text': 'Lady Gaga', 'correct': true},
        {'text': 'Beyoncé', 'correct': false},
        {'text': 'Rihanna', 'correct': false},
      ],
    },
    {
      'questionText': 'Which band released the song "Mr. Brightside"?',
      'answers': [
        {'text': 'Coldplay', 'correct': false},
        {'text': 'The Killers', 'correct': true},
        {'text': 'Arctic Monkeys', 'correct': false},
        {'text': 'Imagine Dragons', 'correct': false},
      ],
    },
    {
      'questionText': 'Who sang "Sorry"?',
      'answers': [
        {'text': 'Adele', 'correct': false},
        {'text': 'Dua Lipa', 'correct': false},
        {'text': 'Justin Bieber', 'correct': true},
        {'text': 'Taylor Swift', 'correct': false},
      ],
    },
    {
      'questionText': 'Which artist released the album "Born This Way"?',
      'answers': [
        {'text': 'Katy Perry', 'correct': false},
        {'text': 'Lady Gaga', 'correct': true},
        {'text': 'Rihanna', 'correct': false},
        {'text': 'Beyoncé', 'correct': false},
      ],
    },
  ];

  void _startQuiz(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => QuizPage(_questions),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Pop Music Quiz'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () => _startQuiz(context),
          child: Text('Start Quiz'),
        ),
      ),
    );
  }
}

class QuizPage extends StatefulWidget {
  final List<Map<String, Object>> questions;

  QuizPage(this.questions);

  @override
  _QuizPageState createState() => _QuizPageState();
}

class _QuizPageState extends State<QuizPage> {
  int _questionIndex = 0;
  int _totalScore = 0;

  void _answerQuestion(bool correct) {
    setState(() {
      if (correct) {
        _totalScore++;
      }
      _questionIndex++;
    });
  }

  void _goBack(BuildContext context) {
    Navigator.pop(context);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Pop Music Quiz'),
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () => _goBack(context),
        ),
      ),
      body: _questionIndex < widget.questions.length
          ? Quiz(
        questionIndex: _questionIndex,
        questions: widget.questions,
        answerQuestion: _answerQuestion,
      )
          : Result(_totalScore, widget.questions.length),
    );
  }
}

class Quiz extends StatelessWidget {
  final int questionIndex;
  final List<Map<String, Object>> questions;
  final Function(bool) answerQuestion;

  Quiz({
    required this.questionIndex,
    required this.questions,
    required this.answerQuestion,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Question(questions[questionIndex]['questionText'] as String),
        SizedBox(height: 20),
        ...(questions[questionIndex]['answers'] as List<Map<String, Object>>)
            .map((answer) {
          return Answer(
                () => answerQuestion(answer['correct'] as bool),
            answer['text'] as String,
          );
        }).toList(),
      ],
    );
  }
}

class Question extends StatelessWidget {
  final String questionText;

  Question(this.questionText);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      child: Text(
        questionText,
        style: TextStyle(fontSize: 20),
        textAlign: TextAlign.center,
      ),
    );
  }
}

class Answer extends StatelessWidget {
  final VoidCallback selectHandler;
  final String answerText;

  Answer(this.selectHandler, this.answerText);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 5, horizontal: 20),
      width: double.infinity,
      child: ElevatedButton(
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all(Colors.blue),
        ),
        onPressed: selectHandler,
        child: Text(
          answerText,
          style: TextStyle(fontSize: 16),
        ),
      ),
    );
  }
}

class Result extends StatelessWidget {
  final int score;
  final int totalQuestions;

  Result(this.score, this.totalQuestions);

  void _resetQuiz(BuildContext context) {
    Navigator.pop(context);
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'Quiz Completed!\nYour Score: $score / $totalQuestions',
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
          SizedBox(height: 20),
          ElevatedButton(
            onPressed: () => _resetQuiz(context),
            child: Text('Back'),
          ),
        ],
      ),
    );
  }
}
