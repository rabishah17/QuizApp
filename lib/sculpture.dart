import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: SculptureQuizPage(),
  ));
}

class SculptureQuizPage extends StatelessWidget {
  final List<Map<String, Object>> _questions = const [
    {
      'questionText': 'Who created the sculpture "David"?',
      'answers': [
        {'text': 'Michelangelo', 'correct': true},
        {'text': 'Auguste Rodin', 'correct': false},
        {'text': 'Donatello', 'correct': false},
        {'text': 'Antonio Canova', 'correct': false},
      ],
    },
    {
      'questionText': 'Which sculptor created "The Thinker"?',
      'answers': [
        {'text': 'Auguste Rodin', 'correct': true},
        {'text': 'Donatello', 'correct': false},
        {'text': 'Michelangelo', 'correct': false},
        {'text': 'Antonio Canova', 'correct': false},
      ],
    },
    {
      'questionText': 'Who sculpted the Statue of Liberty?',
      'answers': [
        {'text': 'Frédéric Auguste Bartholdi', 'correct': true},
        {'text': 'Gustave Eiffel', 'correct': false},
        {'text': 'Auguste Rodin', 'correct': false},
        {'text': 'Michelangelo', 'correct': false},
      ],
    },
    {
      'questionText': 'Which sculptor created "The Pieta"?',
      'answers': [
        {'text': 'Michelangelo', 'correct': true},
        {'text': 'Donatello', 'correct': false},
        {'text': 'Auguste Rodin', 'correct': false},
        {'text': 'Antonio Canova', 'correct': false},
      ],
    },
    {
      'questionText': 'Who created the sculpture "The Kiss"?',
      'answers': [
        {'text': 'Auguste Rodin', 'correct': true},
        {'text': 'Michelangelo', 'correct': false},
        {'text': 'Donatello', 'correct': false},
        {'text': 'Antonio Canova', 'correct': false},
      ],
    },
    {
      'questionText': 'Which sculptor created "The Venus de Milo"?',
      'answers': [
        {'text': 'Alexandros of Antioch', 'correct': true},
        {'text': 'Auguste Rodin', 'correct': false},
        {'text': 'Michelangelo', 'correct': false},
        {'text': 'Antonio Canova', 'correct': false},
      ],
    },
    {
      'questionText': 'Who sculpted the Lincoln Memorial statue?',
      'answers': [
        {'text': 'Daniel Chester French', 'correct': true},
        {'text': 'Auguste Rodin', 'correct': false},
        {'text': 'Michelangelo', 'correct': false},
        {'text': 'Antonio Canova', 'correct': false},
      ],
    },
    {
      'questionText': 'Which sculptor created the "Discobolus"?',
      'answers': [
        {'text': 'Myron', 'correct': true},
        {'text': 'Phidias', 'correct': false},
        {'text': 'Praxiteles', 'correct': false},
        {'text': 'Polykleitos', 'correct': false},
      ],
    },
    {
      'questionText': 'Who created the sculpture "Winged Victory of Samothrace"?',
      'answers': [
        {'text': 'Unknown', 'correct': true},
        {'text': 'Phidias', 'correct': false},
        {'text': 'Praxiteles', 'correct': false},
        {'text': 'Polykleitos', 'correct': false},
      ],
    },
    {
      'questionText': 'Which sculptor created "The Ecstasy of Saint Teresa"?',
      'answers': [
        {'text': 'Gian Lorenzo Bernini', 'correct': true},
        {'text': 'Michelangelo', 'correct': false},
        {'text': 'Auguste Rodin', 'correct': false},
        {'text': 'Antonio Canova', 'correct': false},
      ],
    },
    {
      'questionText': 'Who sculpted the statue of "David" in Florence?',
      'answers': [
        {'text': 'Donatello', 'correct': true},
        {'text': 'Michelangelo', 'correct': false},
        {'text': 'Auguste Rodin', 'correct': false},
        {'text': 'Antonio Canova', 'correct': false},
      ],
    },
    {
      'questionText': 'Which sculptor created the "Pietà Rondanini"?',
      'answers': [
        {'text': 'Michelangelo', 'correct': true},
        {'text': 'Auguste Rodin', 'correct': false},
        {'text': 'Donatello', 'correct': false},
        {'text': 'Antonio Canova', 'correct': false},
      ],
    },
    {
      'questionText': 'Who sculpted the "Discus Thrower"?',
      'answers': [
        {'text': 'Myron', 'correct': true},
        {'text': 'Phidias', 'correct': false},
        {'text': 'Praxiteles', 'correct': false},
        {'text': 'Polykleitos', 'correct': false},
      ],
    },
    {
      'questionText': 'Which sculptor created "The Gates of Hell"?',
      'answers': [
        {'text': 'Auguste Rodin', 'correct': true},
        {'text': 'Michelangelo', 'correct': false},
        {'text': 'Donatello', 'correct': false},
        {'text': 'Antonio Canova', 'correct': false},
      ],
    },
    {
      'questionText': 'Who sculpted "Bust of Nefertiti"?',
      'answers': [
        {'text': 'Thutmose', 'correct': true},
        {'text': 'Michelangelo', 'correct': false},
        {'text': 'Auguste Rodin', 'correct': false},
        {'text': 'Antonio Canova', 'correct': false},
      ],
    },
    {
      'questionText': 'Which sculptor created the "Fountain of Neptune"?',
      'answers': [
        {'text': 'Bartolomeo Ammannati', 'correct': true},
        {'text': 'Michelangelo', 'correct': false},
        {'text': 'Auguste Rodin', 'correct': false},
        {'text': 'Antonio Canova', 'correct': false},
      ],
    },
    {
      'questionText': 'Who created the statue "The Burghers of Calais"?',
      'answers': [
        {'text': 'Auguste Rodin', 'correct': true},
        {'text': 'Michelangelo', 'correct': false},
        {'text': 'Donatello', 'correct': false},
        {'text': 'Antonio Canova', 'correct': false},
      ],
    },
    {
      'questionText': 'Which sculptor created the "Laocoön and His Sons"?',
      'answers': [
        {'text': 'Agesander, Athenodoros, and Polydorus', 'correct': true},
        {'text': 'Michelangelo', 'correct': false},
        {'text': 'Auguste Rodin', 'correct': false},
        {'text': 'Antonio Canova', 'correct': false},
      ],
    },
    {
      'questionText': 'Who sculpted the "Rape of the Sabine Women"?',
      'answers': [
        {'text': 'Gian Lorenzo Bernini', 'correct': true},
        {'text': 'Michelangelo', 'correct': false},
        {'text': 'Auguste Rodin', 'correct': false},
        {'text': 'Antonio Canova', 'correct': false},
      ],
    },
    {
      'questionText': 'Which sculptor created the "Dying Gaul"?',
      'answers': [
        {'text': 'Unknown', 'correct': true},
        {'text': 'Michelangelo', 'correct': false},
        {'text': 'Auguste Rodin', 'correct': false},
        {'text': 'Antonio Canova', 'correct': false},
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
        title: Text('Sculpture Quiz'),
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
        title: Text('Question ${_questionIndex + 1}'),
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
