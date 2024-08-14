import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: SoccerQuizPage(),
  ));
}

class SoccerQuizPage extends StatelessWidget {
  final List<Map<String, Object>> _questions = const [
    {
      'questionText': 'Which country won the FIFA World Cup in 2018?',
      'answers': [
        {'text': 'France', 'correct': true},
        {'text': 'Germany', 'correct': false},
        {'text': 'Brazil', 'correct': false},
        {'text': 'Spain', 'correct': false},
      ],
    },
    {
      'questionText': 'Who is the all-time leading scorer in FIFA World Cup history?',
      'answers': [
        {'text': 'Miroslav Klose', 'correct': true},
        {'text': 'Pele', 'correct': false},
        {'text': 'Cristiano Ronaldo', 'correct': false},
        {'text': 'Lionel Messi', 'correct': false},
      ],
    },
    {
      'questionText': 'Which club has won the most UEFA Champions League titles?',
      'answers': [
        {'text': 'Real Madrid', 'correct': true},
        {'text': 'FC Barcelona', 'correct': false},
        {'text': 'Bayern Munich', 'correct': false},
        {'text': 'Liverpool', 'correct': false},
      ],
    },
    {
      'questionText': 'Who is the all-time leading scorer for FC Barcelona?',
      'answers': [
        {'text': 'Lionel Messi', 'correct': true},
        {'text': 'Ronaldinho', 'correct': false},
        {'text': 'Xavi Hernandez', 'correct': false},
        {'text': 'Andres Iniesta', 'correct': false},
      ],
    },
    {
      'questionText': 'Which player has won the most Ballon d\'Or awards?',
      'answers': [
        {'text': 'Lionel Messi', 'correct': true},
        {'text': 'Cristiano Ronaldo', 'correct': false},
        {'text': 'Michel Platini', 'correct': false},
        {'text': 'Johan Cruyff', 'correct': false},
      ],
    },
    {
      'questionText': 'Who won the Copa America 2021?',
      'answers': [
        {'text': 'Argentina', 'correct': true},
        {'text': 'Brazil', 'correct': false},
        {'text': 'Uruguay', 'correct': false},
        {'text': 'Chile', 'correct': false},
      ],
    },
    {
      'questionText': 'Which country has won the most UEFA European Championship titles?',
      'answers': [
        {'text': 'Germany', 'correct': true},
        {'text': 'Spain', 'correct': false},
        {'text': 'France', 'correct': false},
        {'text': 'Italy', 'correct': false},
      ],
    },
    {
      'questionText': 'Who is the top goal scorer in English Premier League history?',
      'answers': [
        {'text': 'Alan Shearer', 'correct': true},
        {'text': 'Wayne Rooney', 'correct': false},
        {'text': 'Thierry Henry', 'correct': false},
        {'text': 'Sergio Aguero', 'correct': false},
      ],
    },
    {
      'questionText': 'Which player has won the most FIFA Club World Cup Golden Balls?',
      'answers': [
        {'text': 'Lionel Messi', 'correct': true},
        {'text': 'Cristiano Ronaldo', 'correct': false},
        {'text': 'Neymar', 'correct': false},
        {'text': 'Andres Iniesta', 'correct': false},
      ],
    },
    {
      'questionText': 'Who won the FIFA Women\'s World Cup in 2019?',
      'answers': [
        {'text': 'United States', 'correct': true},
        {'text': 'Netherlands', 'correct': false},
        {'text': 'Sweden', 'correct': false},
        {'text': 'Germany', 'correct': false},
      ],
    },
    {
      'questionText': 'Which player has the most assists in La Liga history?',
      'answers': [
        {'text': 'Lionel Messi', 'correct': true},
        {'text': 'Xavi Hernandez', 'correct': false},
        {'text': 'Andres Iniesta', 'correct': false},
        {'text': 'Zinedine Zidane', 'correct': false},
      ],
    },
    {
      'questionText': 'Who is the all-time leading scorer for Brazil in FIFA World Cup tournaments?',
      'answers': [
        {'text': 'Pele', 'correct': true},
        {'text': 'Ronaldo', 'correct': false},
        {'text': 'Romario', 'correct': false},
        {'text': 'Neymar', 'correct': false},
      ],
    },
    {
      'questionText': 'Which club did Zlatan Ibrahimovic refer to as "mythical"?',
      'answers': [
        {'text': 'AC Milan', 'correct': true},
        {'text': 'Manchester United', 'correct': false},
        {'text': 'FC Barcelona', 'correct': false},
        {'text': 'Paris Saint-Germain', 'correct': false},
      ],
    },
    {
      'questionText': 'Who is the all-time leading scorer for Argentina in international matches?',
      'answers': [
        {'text': 'Lionel Messi', 'correct': true},
        {'text': 'Gabriel Batistuta', 'correct': false},
        {'text': 'Diego Maradona', 'correct': false},
        {'text': 'Sergio Aguero', 'correct': false},
      ],
    },
    {
      'questionText': 'Which country hosted the FIFA World Cup in 2014?',
      'answers': [
        {'text': 'Brazil', 'correct': true},
        {'text': 'Germany', 'correct': false},
        {'text': 'Spain', 'correct': false},
        {'text': 'Russia', 'correct': false},
      ],
    },
    {
      'questionText': 'Who won the UEFA Euro 2020?',
      'answers': [
        {'text': 'Italy', 'correct': true},
        {'text': 'England', 'correct': false},
        {'text': 'Belgium', 'correct': false},
        {'text': 'Portugal', 'correct': false},
      ],
    },
    {
      'questionText': 'Which club won the most consecutive UEFA Champions League titles from 1956 to 1960?',
      'answers': [
        {'text': 'Real Madrid', 'correct': true},
        {'text': 'AC Milan', 'correct': false},
        {'text': 'Liverpool', 'correct': false},
        {'text': 'Bayern Munich', 'correct': false},
      ],
    },
    {
      'questionText': 'Who is the all-time leading scorer for FC Bayern Munich?',
      'answers': [
        {'text': 'Gerd Muller', 'correct': true},
        {'text': 'Robert Lewandowski', 'correct': false},
        {'text': 'Thomas Muller', 'correct': false},
        {'text': 'Franz Beckenbauer', 'correct': false},
      ],
    },
    {
      'questionText': 'Which country won the first FIFA World Cup in 1930?',
      'answers': [
        {'text': 'Uruguay', 'correct': true},
        {'text': 'Brazil', 'correct': false},
        {'text': 'Italy', 'correct': false},
        {'text': 'Argentina', 'correct': false},
      ],
    },
    {
      'questionText': 'Who is the all-time leading scorer in UEFA European Championship history?',
      'answers': [
        {'text': 'Cristiano Ronaldo', 'correct': true},
        {'text': 'Michel Platini', 'correct': false},
        {'text': 'Thierry Henry', 'correct': false},
        {'text': 'Antoine Griezmann', 'correct': false},
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
        title: Text('Soccer Quiz'),
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
        title: Text('Soccer Quiz'),
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
