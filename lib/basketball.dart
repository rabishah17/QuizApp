import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: BasketballQuizPage(),
  ));
}

class BasketballQuizPage extends StatelessWidget {
  final List<Map<String, Object>> _questions = const [
    {
      'questionText': 'Who is the NBA all-time leading scorer?',
      'answers': [
        {'text': 'Kareem Abdul-Jabbar', 'correct': true},
        {'text': 'LeBron James', 'correct': false},
        {'text': 'Michael Jordan', 'correct': false},
        {'text': 'Kobe Bryant', 'correct': false},
      ],
    },
    {
      'questionText': 'Which team won the most NBA championships?',
      'answers': [
        {'text': 'Boston Celtics', 'correct': true},
        {'text': 'Los Angeles Lakers', 'correct': false},
        {'text': 'Chicago Bulls', 'correct': false},
        {'text': 'Golden State Warriors', 'correct': false},
      ],
    },
    {
      'questionText': 'Who is the NBA all-time assists leader?',
      'answers': [
        {'text': 'John Stockton', 'correct': true},
        {'text': 'Magic Johnson', 'correct': false},
        {'text': 'Steve Nash', 'correct': false},
        {'text': 'Chris Paul', 'correct': false},
      ],
    },
    {
      'questionText': 'Which player has the highest career scoring average in NBA history?',
      'answers': [
        {'text': 'Michael Jordan', 'correct': true},
        {'text': 'Wilt Chamberlain', 'correct': false},
        {'text': 'LeBron James', 'correct': false},
        {'text': 'Shaquille O\'Neal', 'correct': false},
      ],
    },
    {
      'questionText': 'Who is the only player to score 100 points in a single NBA game?',
      'answers': [
        {'text': 'Wilt Chamberlain', 'correct': true},
        {'text': 'Michael Jordan', 'correct': false},
        {'text': 'Kobe Bryant', 'correct': false},
        {'text': 'LeBron James', 'correct': false},
      ],
    },
    {
      'questionText': 'Which team drafted Dirk Nowitzki in the 1998 NBA Draft?',
      'answers': [
        {'text': 'Milwaukee Bucks', 'correct': false},
        {'text': 'Dallas Mavericks', 'correct': true},
        {'text': 'Boston Celtics', 'correct': false},
        {'text': 'San Antonio Spurs', 'correct': false},
      ],
    },
    {
      'questionText': 'Who won the NBA Finals MVP in 2021?',
      'answers': [
        {'text': 'Giannis Antetokounmpo', 'correct': true},
        {'text': 'LeBron James', 'correct': false},
        {'text': 'Kevin Durant', 'correct': false},
        {'text': 'Kawhi Leonard', 'correct': false},
      ],
    },
    {
      'questionText': 'Which NBA player has won the most MVP awards?',
      'answers': [
        {'text': 'Kareem Abdul-Jabbar', 'correct': true},
        {'text': 'LeBron James', 'correct': false},
        {'text': 'Michael Jordan', 'correct': false},
        {'text': 'Shaquille O\'Neal', 'correct': false},
      ],
    },
    {
      'questionText': 'Who holds the record for the most three-pointers made in NBA history?',
      'answers': [
        {'text': 'Ray Allen', 'correct': true},
        {'text': 'Stephen Curry', 'correct': false},
        {'text': 'Reggie Miller', 'correct': false},
        {'text': 'Klay Thompson', 'correct': false},
      ],
    },
    {
      'questionText': 'Which team won the first NBA championship?',
      'answers': [
        {'text': 'Philadelphia Warriors', 'correct': true},
        {'text': 'New York Knicks', 'correct': false},
        {'text': 'Boston Celtics', 'correct': false},
        {'text': 'Minneapolis Lakers', 'correct': false},
      ],
    },
    {
      'questionText': 'Who is the NBA\'s all-time leader in steals?',
      'answers': [
        {'text': 'John Stockton', 'correct': true},
        {'text': 'Gary Payton', 'correct': false},
        {'text': 'Scottie Pippen', 'correct': false},
        {'text': 'Chris Paul', 'correct': false},
      ],
    },
    {
      'questionText': 'Which NBA player is known as "The Answer"?',
      'answers': [
        {'text': 'Allen Iverson', 'correct': true},
        {'text': 'Dwyane Wade', 'correct': false},
        {'text': 'Kevin Garnett', 'correct': false},
        {'text': 'Tracy McGrady', 'correct': false},
      ],
    },
    {
      'questionText': 'Who won the NBA Rookie of the Year award for the 2020-2021 season?',
      'answers': [
        {'text': 'LaMelo Ball', 'correct': true},
        {'text': 'Anthony Edwards', 'correct': false},
        {'text': 'James Wiseman', 'correct': false},
        {'text': 'Tyrese Haliburton', 'correct': false},
      ],
    },
    {
      'questionText': 'Which player won the NBA Defensive Player of the Year award for the 2020-2021 season?',
      'answers': [
        {'text': 'Rudy Gobert', 'correct': true},
        {'text': 'Ben Simmons', 'correct': false},
        {'text': 'Giannis Antetokounmpo', 'correct': false},
        {'text': 'Anthony Davis', 'correct': false},
      ],
    },
    {
      'questionText': 'Which player holds the record for the most assists in a single NBA game?',
      'answers': [
        {'text': 'Scott Skiles', 'correct': true},
        {'text': 'Magic Johnson', 'correct': false},
        {'text': 'John Stockton', 'correct': false},
        {'text': 'Chris Paul', 'correct': false},
      ],
    },
    {
      'questionText': 'Who is the NBA\'s all-time leader in blocks?',
      'answers': [
        {'text': 'Hakeem Olajuwon', 'correct': true},
        {'text': 'Dikembe Mutombo', 'correct': false},
        {'text': 'Shaquille O\'Neal', 'correct': false},
        {'text': 'David Robinson', 'correct': false},
      ],
    },
    {
      'questionText': 'Which team did Shaquille O\'Neal win three consecutive NBA championships with in the early 2000s?',
      'answers': [
        {'text': 'Los Angeles Lakers', 'correct': true},
        {'text': 'Orlando Magic', 'correct': false},
        {'text': 'Miami Heat', 'correct': false},
        {'text': 'Phoenix Suns', 'correct': false},
      ],
    },
    {
      'questionText': 'Who was the first Chinese-born player to play in the NBA?',
      'answers': [
        {'text': 'Yao Ming', 'correct': true},
        {'text': 'Jeremy Lin', 'correct': false},
        {'text': 'Zhou Qi', 'correct': false},
        {'text': 'Wang Zhizhi', 'correct': false},
      ],
    },
    {
      'questionText': 'Which NBA player scored 81 points in a single game, the second-highest in NBA history?',
      'answers': [
        {'text': 'Kobe Bryant', 'correct': true},
        {'text': 'Michael Jordan', 'correct': false},
        {'text': 'LeBron James', 'correct': false},
        {'text': 'Kevin Durant', 'correct': false},
      ],
    },
    {
      'questionText': 'Which team drafted Dirk Nowitzki in the 1998 NBA Draft?',
      'answers': [
        {'text': 'Milwaukee Bucks', 'correct': false},
        {'text': 'Dallas Mavericks', 'correct': true},
        {'text': 'Boston Celtics', 'correct': false},
        {'text': 'San Antonio Spurs', 'correct': false},
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
        title: Text('Basketball Quiz'),
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
        title: Text('Basketball Quiz'),
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
