import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: PhysicsQuizPage(),
  ));
}

class PhysicsQuizPage extends StatelessWidget {
  final List<Map<String, Object>> _questions = const [
    {
      'questionText': 'Which of these is a vector quantity?',
      'answers': [
        {'text': 'Mass', 'correct': false},
        {'text': 'Velocity', 'correct': true},
        {'text': 'Temperature', 'correct': false},
        {'text': 'Energy', 'correct': false},
      ],
    },
    {
      'questionText': 'What is the SI unit of force?',
      'answers': [
        {'text': 'Newton', 'correct': true},
        {'text': 'Joule', 'correct': false},
        {'text': 'Watt', 'correct': false},
        {'text': 'Pascal', 'correct': false},
      ],
    },
    {
      'questionText': 'Which scientist formulated the laws of motion?',
      'answers': [
        {'text': 'Isaac Newton', 'correct': true},
        {'text': 'Albert Einstein', 'correct': false},
        {'text': 'Galileo Galilei', 'correct': false},
        {'text': 'Nikola Tesla', 'correct': false},
      ],
    },
    {
      'questionText': 'What is the acceleration due to gravity on Earth?',
      'answers': [
        {'text': '9.8 m/s²', 'correct': true},
        {'text': '10 m/s²', 'correct': false},
        {'text': '9.2 m/s²', 'correct': false},
        {'text': '8.5 m/s²', 'correct': false},
      ],
    },
    {
      'questionText': 'Which type of energy does a moving car possess?',
      'answers': [
        {'text': 'Kinetic Energy', 'correct': true},
        {'text': 'Potential Energy', 'correct': false},
        {'text': 'Thermal Energy', 'correct': false},
        {'text': 'Nuclear Energy', 'correct': false},
      ],
    },
    {
      'questionText': 'What is the speed of light in a vacuum?',
      'answers': [
        {'text': '299,792,458 m/s', 'correct': true},
        {'text': '300,000,000 m/s', 'correct': false},
        {'text': '200,000,000 m/s', 'correct': false},
        {'text': '250,000,000 m/s', 'correct': false},
      ],
    },
    {
      'questionText': 'What does Ohm\'s Law state?',
      'answers': [
        {'text': 'V = IR', 'correct': true},
        {'text': 'P = VI', 'correct': false},
        {'text': 'F = ma', 'correct': false},
        {'text': 'Q = mcΔT', 'correct': false},
      ],
    },
    {
      'questionText': 'Which color has the highest frequency in the visible spectrum?',
      'answers': [
        {'text': 'Violet', 'correct': true},
        {'text': 'Red', 'correct': false},
        {'text': 'Blue', 'correct': false},
        {'text': 'Yellow', 'correct': false},
      ],
    },
    {
      'questionText': 'What is the law of conservation of energy?',
      'answers': [
        {'text': 'Energy cannot be created or destroyed, only transformed or transferred.', 'correct': true},
        {'text': 'Energy is always increasing in the universe.', 'correct': false},
        {'text': 'Energy can be created from nothing.', 'correct': false},
        {'text': 'Energy only exists in living organisms.', 'correct': false},
      ],
    },
    {
      'questionText': 'Which particle has a positive charge?',
      'answers': [
        {'text': 'Proton', 'correct': true},
        {'text': 'Electron', 'correct': false},
        {'text': 'Neutron', 'correct': false},
        {'text': 'Photon', 'correct': false},
      ],
    },
    {
      'questionText': 'What is the first law of thermodynamics?',
      'answers': [
        {'text': 'Energy cannot be created or destroyed.', 'correct': true},
        {'text': 'Heat flows from hot to cold.', 'correct': false},
        {'text': 'Entropy of an isolated system increases over time.', 'correct': false},
        {'text': 'No energy transfer is 100% efficient.', 'correct': false},
      ],
    },
    {
      'questionText': 'What is the unit of electrical resistance?',
      'answers': [
        {'text': 'Ohm', 'correct': true},
        {'text': 'Volt', 'correct': false},
        {'text': 'Ampere', 'correct': false},
        {'text': 'Watt', 'correct': false},
      ],
    },
    {
      'questionText': 'Which of these is a unit of power?',
      'answers': [
        {'text': 'Watt', 'correct': true},
        {'text': 'Newton', 'correct': false},
        {'text': 'Joule', 'correct': false},
        {'text': 'Ohm', 'correct': false},
      ],
    },
    {
      'questionText': 'What is the force that resists motion between two objects?',
      'answers': [
        {'text': 'Friction', 'correct': true},
        {'text': 'Gravity', 'correct': false},
        {'text': 'Tension', 'correct': false},
        {'text': 'Inertia', 'correct': false},
      ],
    },
    {
      'questionText': 'What type of lens converges light rays to a single point?',
      'answers': [
        {'text': 'Convex Lens', 'correct': true},
        {'text': 'Concave Lens', 'correct': false},
        {'text': 'Plano-Convex Lens', 'correct': false},
        {'text': 'Bifocal Lens', 'correct': false},
      ],
    },
    {
      'questionText': 'Which of these describes the resistance of an object to changes in its motion?',
      'answers': [
        {'text': 'Inertia', 'correct': true},
        {'text': 'Gravity', 'correct': false},
        {'text': 'Friction', 'correct': false},
        {'text': 'Momentum', 'correct': false},
      ],
    },
    {
      'questionText': 'What is the measure of disorder or randomness in a system?',
      'answers': [
        {'text': 'Entropy', 'correct': true},
        {'text': 'Energy', 'correct': false},
        {'text': 'Temperature', 'correct': false},
        {'text': 'Heat', 'correct': false},
      ],
    },
    {
      'questionText': 'Which of these laws explains the behavior of gases?',
      'answers': [
        {'text': 'Ideal Gas Law', 'correct': true},
        {'text': 'Ohm\'s Law', 'correct': false},
        {'text': 'Newton\'s Law of Universal Gravitation', 'correct': false},
        {'text': 'Boyle\'s Law', 'correct': false},
      ],
    },
    {
      'questionText': 'What is the principle that light bends when passing through different mediums?',
      'answers': [
        {'text': 'Refraction', 'correct': true},
        {'text': 'Reflection', 'correct': false},
        {'text': 'Diffraction', 'correct': false},
        {'text': 'Interference', 'correct': false},
      ],
    },
    {
      'questionText': 'What is the measure of the total amount of matter in an object?',
      'answers': [
        {'text': 'Mass', 'correct': true},
        {'text': 'Weight', 'correct': false},
        {'text': 'Volume', 'correct': false},
        {'text': 'Density', 'correct': false},
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

  void _goBack(BuildContext context) {
    Navigator.pop(context);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Physics Quiz'),
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
              onPressed: () => _goBack(context),
              child: Text('Back to Physics'),
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
        title: Text('Physics Quiz'),
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
