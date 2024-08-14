import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: ChemistryQuizPage(),
  ));
}

class ChemistryQuizPage extends StatelessWidget {
  final List<Map<String, Object>> _questions = const [
    {
      'questionText': 'What is the atomic number of Carbon?',
      'answers': [
        {'text': '6', 'correct': true},
        {'text': '8', 'correct': false},
        {'text': '12', 'correct': false},
        {'text': '16', 'correct': false},
      ],
    },
    {
      'questionText': 'What is the chemical symbol for Gold?',
      'answers': [
        {'text': 'Au', 'correct': true},
        {'text': 'Ag', 'correct': false},
        {'text': 'Cu', 'correct': false},
        {'text': 'Fe', 'correct': false},
      ],
    },
    {
      'questionText': 'Which gas is produced during photosynthesis?',
      'answers': [
        {'text': 'Oxygen', 'correct': true},
        {'text': 'Carbon Dioxide', 'correct': false},
        {'text': 'Nitrogen', 'correct': false},
        {'text': 'Hydrogen', 'correct': false},
      ],
    },
    {
      'questionText': 'What is the pH value of pure water?',
      'answers': [
        {'text': '7', 'correct': true},
        {'text': '5', 'correct': false},
        {'text': '10', 'correct': false},
        {'text': '12', 'correct': false},
      ],
    },
    {
      'questionText': 'Which element is the most abundant in the Earth\'s crust?',
      'answers': [
        {'text': 'Oxygen', 'correct': true},
        {'text': 'Silicon', 'correct': false},
        {'text': 'Aluminum', 'correct': false},
        {'text': 'Iron', 'correct': false},
      ],
    },
    {
      'questionText': 'What is the chemical symbol for Sodium?',
      'answers': [
        {'text': 'Na', 'correct': true},
        {'text': 'S', 'correct': false},
        {'text': 'So', 'correct': false},
        {'text': 'N', 'correct': false},
      ],
    },
    {
      'questionText': 'Which gas gives the fizzy sensation in soft drinks?',
      'answers': [
        {'text': 'Carbon Dioxide', 'correct': true},
        {'text': 'Oxygen', 'correct': false},
        {'text': 'Nitrogen', 'correct': false},
        {'text': 'Hydrogen', 'correct': false},
      ],
    },
    {
      'questionText': 'What is the main component of natural gas?',
      'answers': [
        {'text': 'Methane', 'correct': true},
        {'text': 'Propane', 'correct': false},
        {'text': 'Butane', 'correct': false},
        {'text': 'Ethane', 'correct': false},
      ],
    },
    {
      'questionText': 'What is the chemical formula for water?',
      'answers': [
        {'text': 'H2O', 'correct': true},
        {'text': 'CO2', 'correct': false},
        {'text': 'CH4', 'correct': false},
        {'text': 'NH3', 'correct': false},
      ],
    },
    {
      'questionText': 'Which metal is liquid at room temperature?',
      'answers': [
        {'text': 'Mercury', 'correct': true},
        {'text': 'Lead', 'correct': false},
        {'text': 'Iron', 'correct': false},
        {'text': 'Copper', 'correct': false},
      ],
    },
    {
      'questionText': 'What is the hardest natural substance on Earth?',
      'answers': [
        {'text': 'Diamond', 'correct': true},
        {'text': 'Graphite', 'correct': false},
        {'text': 'Quartz', 'correct': false},
        {'text': 'Topaz', 'correct': false},
      ],
    },
    {
      'questionText': 'Which gas is used in balloons for flying?',
      'answers': [
        {'text': 'Helium', 'correct': true},
        {'text': 'Neon', 'correct': false},
        {'text': 'Argon', 'correct': false},
        {'text': 'Xenon', 'correct': false},
      ],
    },
    {
      'questionText': 'What is the lightest metal?',
      'answers': [
        {'text': 'Lithium', 'correct': true},
        {'text': 'Sodium', 'correct': false},
        {'text': 'Potassium', 'correct': false},
        {'text': 'Magnesium', 'correct': false},
      ],
    },
    {
      'questionText': 'What is the chemical formula for ammonia?',
      'answers': [
        {'text': 'NH3', 'correct': true},
        {'text': 'NO2', 'correct': false},
        {'text': 'CO2', 'correct': false},
        {'text': 'CH4', 'correct': false},
      ],
    },
    {
      'questionText': 'Which substance is known as "white gold"?',
      'answers': [
        {'text': 'Salt', 'correct': true},
        {'text': 'Sugar', 'correct': false},
        {'text': 'Platinum', 'correct': false},
        {'text': 'Diamond', 'correct': false},
      ],
    },
    {
      'questionText': 'What is the chemical symbol for Potassium?',
      'answers': [
        {'text': 'K', 'correct': true},
        {'text': 'P', 'correct': false},
        {'text': 'Pt', 'correct': false},
        {'text': 'Ka', 'correct': false},
      ],
    },
    {
      'questionText': 'Which gas is produced in car batteries?',
      'answers': [
        {'text': 'Hydrogen', 'correct': true},
        {'text': 'Oxygen', 'correct': false},
        {'text': 'Nitrogen', 'correct': false},
        {'text': 'Carbon Dioxide', 'correct': false},
      ],
    },
    {
      'questionText': 'What is the main component of vinegar?',
      'answers': [
        {'text': 'Acetic Acid', 'correct': true},
        {'text': 'Citric Acid', 'correct': false},
        {'text': 'Lactic Acid', 'correct': false},
        {'text': 'Sulfuric Acid', 'correct': false},
      ],
    },
    {
      'questionText': 'Which element has the symbol Fe?',
      'answers': [
        {'text': 'Iron', 'correct': true},
        {'text': 'Silver', 'correct': false},
        {'text': 'Gold', 'correct': false},
        {'text': 'Aluminum', 'correct': false},
      ],
    },
    {
      'questionText': 'What is the chemical formula for table salt?',
      'answers': [
        {'text': 'NaCl', 'correct': true},
        {'text': 'KCl', 'correct': false},
        {'text': 'CaCl2', 'correct': false},
        {'text': 'MgCl2', 'correct': false},
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
        title: Text('Chemistry Quiz'),
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
              child: Text('Back to Chemistry'),
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
        title: Text('Chemistry Quiz'),
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
