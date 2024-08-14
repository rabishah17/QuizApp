import 'package:flutter/material.dart';
import 'dart:math'; // Import this for using Random

void main() {
  runApp(MaterialApp(
    home: AlgebraQuizPage(),
  ));
}

class AlgebraQuizPage extends StatelessWidget {
  final List<Map<String, Object>> _questions = const [
    {
      'questionText': 'What is the formula for the area of a rectangle?',
      'answers': [
        {'text': 'A = l * w', 'correct': true},
        {'text': 'A = l + w', 'correct': false},
        {'text': 'A = 2 * (l + w)', 'correct': false},
        {'text': 'A = l^2 + w^2', 'correct': false},
      ],
    },
    {
      'questionText': 'Which of the following is a quadratic equation?',
      'answers': [
        {'text': 'y = mx + b', 'correct': false},
        {'text': 'y = x^2 + 3x - 5', 'correct': true},
        {'text': 'y = 1/x', 'correct': false},
        {'text': 'y = sqrt(x)', 'correct': false},
      ],
    },
    {
      'questionText': 'What is the value of x in the equation 3x - 5 = 10?',
      'answers': [
        {'text': 'x = 5', 'correct': true},
        {'text': 'x = 3', 'correct': false},
        {'text': 'x = 2', 'correct': false},
        {'text': 'x = 0', 'correct': false},
      ],
    },
    {
      'questionText': 'Simplify the expression: 2(x + 3) - 4(x - 1)',
      'answers': [
        {'text': '2x + 2', 'correct': false},
        {'text': '-2x + 10', 'correct': true},
        {'text': '2x - 2', 'correct': false},
        {'text': '-2x + 2', 'correct': false},
      ],
    },
    {
      'questionText': 'Which property of real numbers states that for any real numbers a and b, a + b = b + a?',
      'answers': [
        {'text': 'Distributive Property', 'correct': false},
        {'text': 'Commutative Property', 'correct': true},
        {'text': 'Associative Property', 'correct': false},
        {'text': 'Identity Property', 'correct': false},
      ],
    },
    {
      'questionText': 'Solve for x: 3x + 7 = 22',
      'answers': [
        {'text': 'x = 5', 'correct': true},
        {'text': 'x = 6', 'correct': false},
        {'text': 'x = 7', 'correct': false},
        {'text': 'x = 8', 'correct': false},
      ],
    },
    {
      'questionText': 'What is the slope-intercept form of a linear equation?',
      'answers': [
        {'text': 'y = mx + b', 'correct': true},
        {'text': 'y = ax^2 + bx + c', 'correct': false},
        {'text': 'y = a/x', 'correct': false},
        {'text': 'y = sqrt(x)', 'correct': false},
      ],
    },
    {
      'questionText': 'Which of the following is the identity element for multiplication of real numbers?',
      'answers': [
        {'text': '0', 'correct': false},
        {'text': '1', 'correct': true},
        {'text': '-1', 'correct': false},
        {'text': '2', 'correct': false},
      ],
    },
    {
      'questionText': 'Solve for x: 2x^2 - 8 = 0',
      'answers': [
        {'text': 'x = 2', 'correct': false},
        {'text': 'x = -2', 'correct': false},
        {'text': 'x = ±2', 'correct': true},
        {'text': 'x = 4', 'correct': false},
      ],
    },
    {
      'questionText': 'What is the y-intercept of the equation y = 2x + 3?',
      'answers': [
        {'text': '2', 'correct': false},
        {'text': '3', 'correct': true},
        {'text': '0', 'correct': false},
        {'text': '-3', 'correct': false},
      ],
    },
    {
      'questionText': 'What is the product of (x + 3)(x - 2)?',
      'answers': [
        {'text': 'x^2 + x - 6', 'correct': true},
        {'text': 'x^2 - x - 6', 'correct': false},
        {'text': 'x^2 - x + 6', 'correct': false},
      ],
    },
    {
      'questionText': 'Which of the following is the equation of a circle?',
      'answers': [
        {'text': 'y = mx + b', 'correct': false},
        {'text': 'x^2 + y^2 = r^2', 'correct': true},
        {'text': 'y = x^2 + 1', 'correct': false},
        {'text': 'y = sqrt(x)', 'correct': false},
      ],
    },
    {
      'questionText': 'Which of the following represents a system of equations?',
      'answers': [
        {'text': 'y = mx + b', 'correct': false},
        {'text': 'y = x^2 + 3x - 5', 'correct': false},
        {'text': '2x + y = 7\n3x - y = 5', 'correct': true},
        {'text': 'y = sqrt(x)', 'correct': false},
      ],
    },
    {
      'questionText': 'Solve for x: 4(x - 3) = 8',
      'answers': [
        {'text': 'x = 2', 'correct': true},
        {'text': 'x = 3', 'correct': false},
        {'text': 'x = 4', 'correct': false},
        {'text': 'x = 5', 'correct': false},
      ],
    },
    {
      'questionText': 'Which of the following is the equation of a parabola?',
      'answers': [
        {'text': 'y = mx + b', 'correct': false},
        {'text': 'y = x^2 + 3x - 5', 'correct': true},
        {'text': 'y = 1/x', 'correct': false},
        {'text': 'y = sqrt(x)', 'correct': false},
      ],
    },
    {
      'questionText': 'What is the solution to the equation 5x - 2 = 3x + 10?',
      'answers': [
        {'text': 'x = -4', 'correct': true},
        {'text': 'x = 4', 'correct': false},
        {'text': 'x = -6', 'correct': false},
        {'text': 'x = 6', 'correct': false},
      ],
    },
    {
      'questionText': 'What is the value of x in the equation 2(x + 5) = 3x - 2?',
      'answers': [
        {'text': 'x = 12', 'correct': false},
        {'text': 'x = 7', 'correct': true},
        {'text': 'x = 3', 'correct': false},
        {'text': 'x = -7', 'correct': false},
      ],
    },
    {
      'questionText': 'Which property of real numbers states that for any real numbers a and b, a * (b + c) = a * b + a * c?',
      'answers': [
        {'text': 'Distributive Property', 'correct': true},
        {'text': 'Commutative Property', 'correct': false},
        {'text': 'Associative Property', 'correct': false},
        {'text': 'Identity Property', 'correct': false},
      ],
    },
    {
      'questionText': 'Solve for x: x^2 - 9 = 0',
      'answers': [
        {'text': 'x = ±3', 'correct': true},
        {'text': 'x = 3', 'correct': false},
        {'text': 'x = -3', 'correct': false},
        {'text': 'x = 9', 'correct': false},
      ],
    },
    {
      'questionText': 'Which of the following is the standard form of a linear equation?',
      'answers': [
        {'text': 'y = mx + b', 'correct': false},
        {'text': 'Ax + By = C', 'correct': true},
        {'text': 'y = x^2 + 3x - 5', 'correct': false},
        {'text': 'y = sqrt(x)', 'correct': false},
      ],
    },
  ];

  const AlgebraQuizPage({super.key});

  void _startQuiz(BuildContext context) {
    List<Map<String, Object>> shuffledQuestions = List.from(_questions);
    shuffledQuestions.shuffle(Random());

    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => QuizPage(shuffledQuestions),
      ),
    );
  }

  void _goBack(BuildContext context) {
    Navigator.of(context).pop();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Algebra Quiz'),
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
  int _score = 0;

  void _answerQuestion(bool isCorrect) {
    if (isCorrect) {
      setState(() {
        _score++;
      });
    }

    setState(() {
      _questionIndex++;
    });

    if (_questionIndex >= widget.questions.length) {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (context) => Result(_score, widget.questions.length),
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    final question = widget.questions[_questionIndex];
    return Scaffold(
      appBar: AppBar(
        title: Text('Question ${_questionIndex + 1}'),
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Text(
              question['questionText'] as String,
              style: const TextStyle(fontSize: 24),
              textAlign: TextAlign.center,
            ),
          ),
          ...(question['answers'] as List<Map<String, Object>>).map((answer) {
            return Padding(
              padding: const EdgeInsets.symmetric(vertical: 8.0),
              child: ElevatedButton(
                child: Text(answer['text'] as String),
                onPressed: () {
                  _answerQuestion(answer['correct'] as bool);
                },
              ),
            );
          }),
        ],
      ),
    );
  }
}

class Result extends StatelessWidget {
  final int score;
  final int totalQuestions;

  const Result(this.score, this.totalQuestions, {super.key});

  void _resetQuiz(BuildContext context) {
    Navigator.pushAndRemoveUntil(
      context,
      MaterialPageRoute(
        builder: (context) => const AlgebraQuizPage(),
      ),
          (Route<dynamic> route) => false,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Quiz Completed'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Your score is $score out of $totalQuestions!',
              style: const TextStyle(fontSize: 24),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () => _resetQuiz(context),
              child: const Text('Back'),
            ),
          ],
        ),
      ),
    );
  }
}
