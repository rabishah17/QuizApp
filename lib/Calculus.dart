import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(MaterialApp(
    home: CalculusQuizPage(),
  ));
}

class CalculusQuizPage extends StatelessWidget {
  final List<Map<String, Object>> _questions = const [
    {
      'questionText': 'What is the derivative of f(x) = 3x^2?',
      'answers': [
        {'text': 'f\'(x) = 6x', 'correct': true},
        {'text': 'f\'(x) = 3x', 'correct': false},
        {'text': 'f\'(x) = 2x', 'correct': false},
        {'text': 'f\'(x) = 4x', 'correct': false},
      ],
    },
    {
      'questionText': 'What is the integral of f(x) = 2x?',
      'answers': [
        {'text': '∫ f(x) dx = x^2 + C', 'correct': true},
        {'text': '∫ f(x) dx = 2x', 'correct': false},
        {'text': '∫ f(x) dx = 3x', 'correct': false},
        {'text': '∫ f(x) dx = x + C', 'correct': false},
      ],
    },
    {
      'questionText': 'What is the limit of (x -> ∞) for f(x) = 1/x?',
      'answers': [
        {'text': '0', 'correct': true},
        {'text': '1', 'correct': false},
        {'text': 'Infinity', 'correct': false},
        {'text': 'Undefined', 'correct': false},
      ],
    },
    {
      'questionText': 'What is the derivative of f(x) = e^x?',
      'answers': [
        {'text': 'f\'(x) = e^x', 'correct': true},
        {'text': 'f\'(x) = e', 'correct': false},
        {'text': 'f\'(x) = 2e^x', 'correct': false},
        {'text': 'f\'(x) = e^(x-1)', 'correct': false},
      ],
    },
    {
      'questionText': 'What is the integral of f(x) = sin(x)?',
      'answers': [
        {'text': '∫ f(x) dx = -cos(x) + C', 'correct': true},
        {'text': '∫ f(x) dx = cos(x)', 'correct': false},
        {'text': '∫ f(x) dx = sin(x) + C', 'correct': false},
        {'text': '∫ f(x) dx = -sin(x) + C', 'correct': false},
      ],
    },
    {
      'questionText': 'What is the derivative of f(x) = ln(x)?',
      'answers': [
        {'text': 'f\'(x) = 1/x', 'correct': true},
        {'text': 'f\'(x) = x', 'correct': false},
        {'text': 'f\'(x) = 2/x', 'correct': false},
        {'text': 'f\'(x) = 0', 'correct': false},
      ],
    },
    {
      'questionText': 'What is the limit of (x -> 0) for f(x) = sin(x)/x?',
      'answers': [
        {'text': '1', 'correct': true},
        {'text': '0', 'correct': false},
        {'text': 'Infinity', 'correct': false},
        {'text': 'Undefined', 'correct': false},
      ],
    },
    {
      'questionText': 'What is the integral of f(x) = 1/x?',
      'answers': [
        {'text': '∫ f(x) dx = ln|x| + C', 'correct': true},
        {'text': '∫ f(x) dx = x', 'correct': false},
        {'text': '∫ f(x) dx = e^x + C', 'correct': false},
        {'text': '∫ f(x) dx = 1/(2x) + C', 'correct': false},
      ],
    },
    {
      'questionText': 'What is the derivative of f(x) = cos(x)?',
      'answers': [
        {'text': 'f\'(x) = -sin(x)', 'correct': true},
        {'text': 'f\'(x) = sin(x)', 'correct': false},
        {'text': 'f\'(x) = -cos(x)', 'correct': false},
        {'text': 'f\'(x) = cos(x)', 'correct': false},
      ],
    },
    {
      'questionText': 'What is the derivative of f(x) = tan(x)?',
      'answers': [
        {'text': 'f\'(x) = sec^2(x)', 'correct': true},
        {'text': 'f\'(x) = sec(x)', 'correct': false},
        {'text': 'f\'(x) = cos^2(x)', 'correct': false},
        {'text': 'f\'(x) = sin(x)', 'correct': false},
      ],
    },
    {
      'questionText': 'What is the integral of f(x) = x^2?',
      'answers': [
        {'text': '∫ f(x) dx = (1/3)x^3 + C', 'correct': true},
        {'text': '∫ f(x) dx = x^3', 'correct': false},
        {'text': '∫ f(x) dx = x^2 + C', 'correct': false},
        {'text': '∫ f(x) dx = 3x^2 + C', 'correct': false},
      ],
    },
    {
      'questionText': 'What is the limit of (x -> 0) for f(x) = (1 - cos(x))/x^2?',
      'answers': [
        {'text': '1/2', 'correct': true},
        {'text': '0', 'correct': false},
        {'text': 'Infinity', 'correct': false},
        {'text': 'Undefined', 'correct': false},
      ],
    },
    {
      'questionText': 'What is the derivative of f(x) = 1/x?',
      'answers': [
        {'text': 'f\'(x) = -1/x^2', 'correct': true},
        {'text': 'f\'(x) = x^2', 'correct': false},
        {'text': 'f\'(x) = -x', 'correct': false},
        {'text': 'f\'(x) = 1/x^2', 'correct': false},
      ],
    },
    {
      'questionText': 'What is the integral of f(x) = e^(2x)?',
      'answers': [
        {'text': '∫ f(x) dx = (1/2)e^(2x) + C', 'correct': true},
        {'text': '∫ f(x) dx = e^(2x) + C', 'correct': false},
        {'text': '∫ f(x) dx = 2e^(2x) + C', 'correct': false},
        {'text': '∫ f(x) dx = e^(2x)/2 + C', 'correct': false},
      ],
    },
    {
      'questionText': 'What is the derivative of f(x) = sqrt(x)?',
      'answers': [
        {'text': 'f\'(x) = 1/(2sqrt(x))', 'correct': true},
        {'text': 'f\'(x) = 2sqrt(x)', 'correct': false},
        {'text': 'f\'(x) = 1/(2x)', 'correct': false},
        {'text': 'f\'(x) = 1/(2x^2)', 'correct': false},
      ],
    },
    {
      'questionText': 'What is the limit of (x -> 0) for f(x) = tan(x)/x?',
      'answers': [
        {'text': '1', 'correct': true},
        {'text': '0', 'correct': false},
        {'text': 'Infinity', 'correct': false},
        {'text': 'Undefined', 'correct': false},
      ],
    },
    {
      'questionText': 'What is the integral of f(x) = sec^2(x)?',
      'answers': [
        {'text': '∫ f(x) dx = tan(x) + C', 'correct': true},
        {'text': '∫ f(x) dx = sec(x) + C', 'correct': false},
        {'text': '∫ f(x) dx = 1/(cos^2(x)) + C', 'correct': false},
        {'text': '∫ f(x) dx = 2tan(x) + C', 'correct': false},
      ],
    },
    {
      'questionText': 'What is the derivative of f(x) = ln(x)?',
      'answers': [
        {'text': 'f\'(x) = 1/x', 'correct': true},
        {'text': 'f\'(x) = x', 'correct': false},
        {'text': 'f\'(x) = 2/x', 'correct': false},
        {'text': 'f\'(x) = 0', 'correct': false},
      ],
    },
    {
      'questionText': 'What is the limit of (x -> 0) for f(x) = (1 - cos(x))/x?',
      'answers': [
        {'text': '0', 'correct': true},
        {'text': '1', 'correct': false},
        {'text': 'Infinity', 'correct': false},
        {'text': 'Undefined', 'correct': false},
      ],
    },
    {
      'questionText': 'What is the integral of f(x) = 1/(1+x^2)?',
      'answers': [
        {'text': '∫ f(x) dx = arctan(x) + C', 'correct': true},
        {'text': '∫ f(x) dx = 1 - x^2 + C', 'correct': false},
        {'text': '∫ f(x) dx = x/(1+x^2) + C', 'correct': false},
        {'text': '∫ f(x) dx = ln(1+x^2) + C', 'correct': false},
      ],
    },
  ];

  List<Map<String, Object>> _shuffleQuestions(List<Map<String, Object>> questions) {
    questions.shuffle(Random());
    return questions;
  }

  void _startQuiz(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => QuizPage(_shuffleQuestions(List.from(_questions))),
      ),
    );
  }

  void _goBack(BuildContext context) {
    Navigator.pop(context);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Calculus Quiz'),
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () => _goBack(context),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              child: Text('Start Quiz'),
              onPressed: () => _startQuiz(context),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () => _goBack(context),
              child: Text('Back'),
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
        title: Text('Calculus Quiz'),
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
      crossAxisAlignment: CrossAxisAlignment.stretch,
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
        Spacer(),
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
      width: double.infinity,
      margin: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
      child: ElevatedButton(
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all(Colors.blue),
          textStyle: MaterialStateProperty.all(
            TextStyle(fontSize: 16),
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
