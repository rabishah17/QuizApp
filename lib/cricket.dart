import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: CricketQuizPage(),
  ));
}

class CricketQuizPage extends StatelessWidget {
  final List<Map<String, Object>> _questions = const [
    {
      'questionText': 'Who is the highest run-scorer in Test cricket?',
      'answers': [
        {'text': 'Sachin Tendulkar', 'correct': false},
        {'text': 'Ricky Ponting', 'correct': false},
        {'text': 'Jacques Kallis', 'correct': false},
        {'text': 'Kumar Sangakkara', 'correct': true},
      ],
    },
    {
      'questionText': 'Which country won the first-ever Cricket World Cup in 1975?',
      'answers': [
        {'text': 'Australia', 'correct': false},
        {'text': 'West Indies', 'correct': true},
        {'text': 'England', 'correct': false},
        {'text': 'India', 'correct': false},
      ],
    },
    {
      'questionText': 'Who holds the record for the fastest century in One Day Internationals (ODIs)?',
      'answers': [
        {'text': 'AB de Villiers', 'correct': true},
        {'text': 'Shahid Afridi', 'correct': false},
        {'text': 'Vivian Richards', 'correct': false},
        {'text': 'Chris Gayle', 'correct': false},
      ],
    },
    {
      'questionText': 'Which player has the highest individual score in Test cricket?',
      'answers': [
        {'text': 'Brian Lara', 'correct': true},
        {'text': 'Sir Donald Bradman', 'correct': false},
        {'text': 'Virender Sehwag', 'correct': false},
        {'text': 'Ricky Ponting', 'correct': false},
      ],
    },
    {
      'questionText': 'Who is the leading wicket-taker in international cricket?',
      'answers': [
        {'text': 'Wasim Akram', 'correct': false},
        {'text': 'Muttiah Muralitharan', 'correct': true},
        {'text': 'Shane Warne', 'correct': false},
        {'text': 'Anil Kumble', 'correct': false},
      ],
    },
    {
      'questionText': 'Which team has won the most ICC Cricket World Cup titles?',
      'answers': [
        {'text': 'Australia', 'correct': true},
        {'text': 'India', 'correct': false},
        {'text': 'West Indies', 'correct': false},
        {'text': 'England', 'correct': false},
      ],
    },
    {
      'questionText': 'Who was the captain of the Indian cricket team when they won the 1983 Cricket World Cup?',
      'answers': [
        {'text': 'Kapil Dev', 'correct': true},
        {'text': 'Sunil Gavaskar', 'correct': false},
        {'text': 'Sachin Tendulkar', 'correct': false},
        {'text': 'MS Dhoni', 'correct': false},
      ],
    },
    {
      'questionText': 'Which bowler has taken the most wickets in T20 International cricket?',
      'answers': [
        {'text': 'Lasith Malinga', 'correct': true},
        {'text': 'Rashid Khan', 'correct': false},
        {'text': 'Jasprit Bumrah', 'correct': false},
        {'text': 'Shahid Afridi', 'correct': false},
      ],
    },
    {
      'questionText': 'Who is the fastest bowler to reach 200 Test wickets?',
      'answers': [
        {'text': 'Dale Steyn', 'correct': true},
        {'text': 'Glenn McGrath', 'correct': false},
        {'text': 'Wasim Akram', 'correct': false},
        {'text': 'Courtney Walsh', 'correct': false},
      ],
    },
    {
      'questionText': 'Which country won the ICC T20 World Cup in 2007?',
      'answers': [
        {'text': 'India', 'correct': true},
        {'text': 'Australia', 'correct': false},
        {'text': 'Pakistan', 'correct': false},
        {'text': 'England', 'correct': false},
      ],
    },
    {
      'questionText': 'Who is the leading run-scorer in T20 International cricket?',
      'answers': [
        {'text': 'Virat Kohli', 'correct': false},
        {'text': 'Chris Gayle', 'correct': false},
        {'text': 'Rohit Sharma', 'correct': false},
        {'text': 'Martin Guptill', 'correct': true},
      ],
    },
    {
      'questionText': 'Which bowler has taken the most Test wickets for England?',
      'answers': [
        {'text': 'James Anderson', 'correct': true},
        {'text': 'Ian Botham', 'correct': false},
        {'text': 'Fred Trueman', 'correct': false},
        {'text': 'Bob Willis', 'correct': false},
      ],
    },
    {
      'questionText': 'Who was the captain of the Australian cricket team when they won three consecutive ICC Cricket World Cups from 1999 to 2007?',
      'answers': [
        {'text': 'Ricky Ponting', 'correct': true},
        {'text': 'Steve Waugh', 'correct': false},
        {'text': 'Shane Warne', 'correct': false},
        {'text': 'Michael Clarke', 'correct': false},
      ],
    },
    {
      'questionText': 'Which cricketer is known as "The Little Master"?',
      'answers': [
        {'text': 'Sachin Tendulkar', 'correct': true},
        {'text': 'Brian Lara', 'correct': false},
        {'text': 'Rahul Dravid', 'correct': false},
        {'text': 'Kumar Sangakkara', 'correct': false},
      ],
    },
    {
      'questionText': 'Who is the only player to score a triple century in Test cricket twice?',
      'answers': [
        {'text': 'Brian Lara', 'correct': true},
        {'text': 'Virender Sehwag', 'correct': false},
        {'text': 'Don Bradman', 'correct': false},
        {'text': 'Kumar Sangakkara', 'correct': false},
      ],
    },
    {
      'questionText': 'Which Indian cricketer holds the record for the highest individual score in ODIs?',
      'answers': [
        {'text': 'Sachin Tendulkar', 'correct': false},
        {'text': 'Virender Sehwag', 'correct': false},
        {'text': 'Rohit Sharma', 'correct': true},
        {'text': 'Virat Kohli', 'correct': false},
      ],
    },
    {
      'questionText': 'Who holds the record for the fastest half-century in T20 International cricket?',
      'answers': [
        {'text': 'Yuvraj Singh', 'correct': true},
        {'text': 'Chris Gayle', 'correct': false},
        {'text': 'David Miller', 'correct': false},
        {'text': 'Colin Munro', 'correct': false},
      ],
    },
    {
      'questionText': 'Which team won the ICC Champions Trophy in 2013?',
      'answers': [
        {'text': 'India', 'correct': false},
        {'text': 'Sri Lanka', 'correct': false},
        {'text': 'Pakistan', 'correct': true},
        {'text': 'West Indies', 'correct': false},
      ],
    },
    {
      'questionText': 'Who was the captain of the Pakistan cricket team when they won the ICC T20 World Cup in 2009?',
      'answers': [
        {'text': 'Shahid Afridi', 'correct': true},
        {'text': 'Misbah-ul-Haq', 'correct': false},
        {'text': 'Sarfaraz Ahmed', 'correct': false},
        {'text': 'Younis Khan', 'correct': false},
      ],
    },
    {
      'questionText': 'Which Australian cricketer is known as "Pup"?',
      'answers': [
        {'text': 'Ricky Ponting', 'correct': false},
        {'text': 'Michael Clarke', 'correct': true},
        {'text': 'Steve Waugh', 'correct': false},
        {'text': 'Shane Warne', 'correct': false},
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
        title: Text('Cricket Quiz'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () => _startQuiz(context),
              child: Text('Start Quiz'),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () => Navigator.pop(context),
              child: Text('Back to Main Menu'),
            ),
          ],
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
        title: Text('Cricket Quiz'),
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
      children: [
        Question(
          questions[questionIndex]['questionText'] as String,
        ),
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
      width: double.infinity,
      margin: EdgeInsets.all(10),
      child: Text(
        questionText,
        style: TextStyle(fontSize: 28),
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
      width: double.infinity,
      margin: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      child: ElevatedButton(
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all(Colors.blue),
          textStyle: MaterialStateProperty.all(
            TextStyle(color: Colors.white),
          ),
        ),
        onPressed: selectHandler,
        child: Text(answerText),
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
            'You did it!\nScore: $score/$totalQuestions',
            style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
          ElevatedButton(
            onPressed: () => _resetQuiz(context),
            child: Text('Back'),
          ),
        ],
      ),
    );
  }
}
