import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: ActionMoviesQuizPage(),
  ));
}

class ActionMoviesQuizPage extends StatelessWidget {
  final List<Map<String, Object>> _questions = const [
    {
      'questionText': 'Who directed the movie "Die Hard"?',
      'answers': [
        {'text': 'Michael Bay', 'correct': false},
        {'text': 'John McTiernan', 'correct': true},
        {'text': 'James Cameron', 'correct': false},
        {'text': 'Steven Spielberg', 'correct': false},
      ],
    },
    {
      'questionText': 'Which actor played the lead role in the "Mad Max" series?',
      'answers': [
        {'text': 'Arnold Schwarzenegger', 'correct': false},
        {'text': 'Mel Gibson', 'correct': true},
        {'text': 'Sylvester Stallone', 'correct': false},
        {'text': 'Tom Cruise', 'correct': false},
      ],
    },
    {
      'questionText': 'In which action film does Keanu Reeves play a retired hitman seeking vengeance?',
      'answers': [
        {'text': 'John Wick', 'correct': true},
        {'text': 'The Matrix', 'correct': false},
        {'text': 'Point Break', 'correct': false},
        {'text': 'Speed', 'correct': false},
      ],
    },
    {
      'questionText': 'Who played the character "Ripley" in the action-horror film "Aliens"?',
      'answers': [
        {'text': 'Sigourney Weaver', 'correct': true},
        {'text': 'Meryl Streep', 'correct': false},
        {'text': 'Kate Winslet', 'correct': false},
        {'text': 'Charlize Theron', 'correct': false},
      ],
    },
    {
      'questionText': 'Which action film series features Dominic Toretto and his crew?',
      'answers': [
        {'text': 'Mission: Impossible', 'correct': false},
        {'text': 'The Fast and the Furious', 'correct': true},
        {'text': 'Jason Bourne', 'correct': false},
        {'text': 'Transporter', 'correct': false},
      ],
    },
    {
      'questionText': 'Who played the title character in the action film "Terminator 2: Judgment Day"?',
      'answers': [
        {'text': 'Sylvester Stallone', 'correct': false},
        {'text': 'Bruce Willis', 'correct': false},
        {'text': 'Arnold Schwarzenegger', 'correct': true},
        {'text': 'Jean-Claude Van Damme', 'correct': false},
      ],
    },
    {
      'questionText': 'Which action film features a character named "John Rambo"?',
      'answers': [
        {'text': 'Lethal Weapon', 'correct': false},
        {'text': 'First Blood', 'correct': true},
        {'text': 'The Expendables', 'correct': false},
        {'text': 'Escape Plan', 'correct': false},
      ],
    },
    {
      'questionText': 'Who directed the action film "The Dark Knight"?',
      'answers': [
        {'text': 'Christopher Nolan', 'correct': true},
        {'text': 'Tim Burton', 'correct': false},
        {'text': 'Zack Snyder', 'correct': false},
        {'text': 'James Wan', 'correct': false},
      ],
    },
    {
      'questionText': 'Which action film stars Tom Cruise as Ethan Hunt, an IMF agent?',
      'answers': [
        {'text': 'Jack Reacher', 'correct': false},
        {'text': 'Collateral', 'correct': false},
        {'text': 'Mission: Impossible', 'correct': true},
        {'text': 'Top Gun', 'correct': false},
      ],
    },
    {
      'questionText': 'Which action film features a character named "John McClane"?',
      'answers': [
        {'text': 'Taken', 'correct': false},
        {'text': 'Die Hard', 'correct': true},
        {'text': 'The Rock', 'correct': false},
        {'text': 'Speed', 'correct': false},
      ],
    },
    {
      'questionText': 'Who played the character "Katniss Everdeen" in "The Hunger Games" series?',
      'answers': [
        {'text': 'Emma Stone', 'correct': false},
        {'text': 'Jennifer Lawrence', 'correct': true},
        {'text': 'Emma Watson', 'correct': false},
        {'text': 'Kristen Stewart', 'correct': false},
      ],
    },
    {
      'questionText': 'Which action film features a character named "Jason Bourne"?',
      'answers': [
        {'text': 'The Equalizer', 'correct': false},
        {'text': 'Salt', 'correct': false},
        {'text': 'The Bourne Identity', 'correct': true},
        {'text': 'Taken', 'correct': false},
      ],
    },
    {
      'questionText': 'Who played the character "Max Rockatansky" in the film "Mad Max: Fury Road"?',
      'answers': [
        {'text': 'Tom Hardy', 'correct': true},
        {'text': 'Chris Hemsworth', 'correct': false},
        {'text': 'Christian Bale', 'correct': false},
        {'text': 'Mark Wahlberg', 'correct': false},
      ],
    },
    {
      'questionText': 'Which action film series features a character named "John Wick"?',
      'answers': [
        {'text': 'The Transporter', 'correct': false},
        {'text': 'John Wick', 'correct': true},
        {'text': 'The Expendables', 'correct': false},
        {'text': 'Taken', 'correct': false},
      ],
    },
    {
      'questionText': 'Who directed the action film "Mad Max: Fury Road"?',
      'answers': [
        {'text': 'George Miller', 'correct': true},
        {'text': 'Ridley Scott', 'correct': false},
        {'text': 'James Cameron', 'correct': false},
        {'text': 'David Fincher', 'correct': false},
      ],
    },
    {
      'questionText': 'Which action film stars Matt Damon as a highly trained assassin suffering from amnesia?',
      'answers': [
        {'text': 'The Bourne Legacy', 'correct': false},
        {'text': 'The Bourne Supremacy', 'correct': false},
        {'text': 'The Bourne Identity', 'correct': true},
        {'text': 'The Bourne Ultimatum', 'correct': false},
      ],
    },
    {
      'questionText': 'Who played the character "Tony Stark" in the "Iron Man" series?',
      'answers': [
        {'text': 'Robert Downey Jr.', 'correct': true},
        {'text': 'Chris Evans', 'correct': false},
        {'text': 'Mark Ruffalo', 'correct': false},
        {'text': 'Chris Hemsworth', 'correct': false},
      ],
    },
    {
      'questionText': 'Which action film features a character named "Sarah Connor"?',
      'answers': [
        {'text': 'RoboCop', 'correct': false},
        {'text': 'The Terminator', 'correct': true},
        {'text': 'Blade Runner', 'correct': false},
        {'text': 'Predator', 'correct': false},
      ],
    },
    {
      'questionText': 'Who directed the action film "Kill Bill: Vol. 1"?',
      'answers': [
        {'text': 'Quentin Tarantino', 'correct': true},
        {'text': 'Martin Scorsese', 'correct': false},
        {'text': 'David Fincher', 'correct': false},
        {'text': 'Steven Spielberg', 'correct': false},
      ],
    },
    {
      'questionText': 'Which action film features a character named "Indiana Jones"?',
      'answers': [
        {'text': 'The Mummy', 'correct': false},
        {'text': 'National Treasure', 'correct': false},
        {'text': 'Raiders of the Lost Ark', 'correct': true},
        {'text': 'Kingdom of Heaven', 'correct': false},
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
        title: Text('Action Movies Quiz'),
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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Action Movies Quiz'),
      ),
      body: (_questionIndex < widget.questions.length)
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
