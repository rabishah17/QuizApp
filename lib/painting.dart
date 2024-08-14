import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: PaintingQuizPage(),
  ));
}

class PaintingQuizPage extends StatelessWidget {
  final List<Map<String, Object>> _questions = const [
    {
      'questionText': 'Who painted the Mona Lisa?',
      'answers': [
        {'text': 'Leonardo da Vinci', 'correct': true},
        {'text': 'Vincent van Gogh', 'correct': false},
        {'text': 'Pablo Picasso', 'correct': false},
        {'text': 'Michelangelo', 'correct': false},
      ],
    },
    {
      'questionText': 'Which painting is known for its melting clocks?',
      'answers': [
        {'text': 'The Persistence of Memory', 'correct': true},
        {'text': 'Starry Night', 'correct': false},
        {'text': 'The Last Supper', 'correct': false},
        {'text': 'The Scream', 'correct': false},
      ],
    },
    {
      'questionText': 'Who painted "Starry Night"?',
      'answers': [
        {'text': 'Vincent van Gogh', 'correct': true},
        {'text': 'Leonardo da Vinci', 'correct': false},
        {'text': 'Claude Monet', 'correct': false},
        {'text': 'Pablo Picasso', 'correct': false},
      ],
    },
    {
      'questionText': 'Which artist painted "The Kiss"?',
      'answers': [
        {'text': 'Gustav Klimt', 'correct': true},
        {'text': 'Edvard Munch', 'correct': false},
        {'text': 'Henri Matisse', 'correct': false},
        {'text': 'Rembrandt', 'correct': false},
      ],
    },
    {
      'questionText': 'Who painted "Guernica"?',
      'answers': [
        {'text': 'Pablo Picasso', 'correct': true},
        {'text': 'Salvador Dalí', 'correct': false},
        {'text': 'Edvard Munch', 'correct': false},
        {'text': 'Georges Braque', 'correct': false},
      ],
    },
    {
      'questionText': 'Which painting depicts the goddess Venus standing on a shell?',
      'answers': [
        {'text': 'The Birth of Venus', 'correct': true},
        {'text': 'American Gothic', 'correct': false},
        {'text': 'The Night Watch', 'correct': false},
        {'text': 'Water Lilies', 'correct': false},
      ],
    },
    {
      'questionText': 'Who painted "The Starry Night"?',
      'answers': [
        {'text': 'Vincent van Gogh', 'correct': true},
        {'text': 'Claude Monet', 'correct': false},
        {'text': 'Pablo Picasso', 'correct': false},
        {'text': 'Leonardo da Vinci', 'correct': false},
      ],
    },
    {
      'questionText': 'Which painting features a woman with an enigmatic smile?',
      'answers': [
        {'text': 'Mona Lisa', 'correct': true},
        {'text': 'Girl with a Pearl Earring', 'correct': false},
        {'text': 'The Scream', 'correct': false},
        {'text': 'Whistler\'s Mother', 'correct': false},
      ],
    },
    {
      'questionText': 'Who painted "The Persistence of Memory"?',
      'answers': [
        {'text': 'Salvador Dalí', 'correct': true},
        {'text': 'Pablo Picasso', 'correct': false},
        {'text': 'Vincent van Gogh', 'correct': false},
        {'text': 'Edvard Munch', 'correct': false},
      ],
    },
    {
      'questionText': 'Which artist painted "The Scream"?',
      'answers': [
        {'text': 'Edvard Munch', 'correct': true},
        {'text': 'Vincent van Gogh', 'correct': false},
        {'text': 'Leonardo da Vinci', 'correct': false},
        {'text': 'Claude Monet', 'correct': false},
      ],
    },
    {
      'questionText': 'Who painted "The Night Watch"?',
      'answers': [
        {'text': 'Rembrandt', 'correct': true},
        {'text': 'Michelangelo', 'correct': false},
        {'text': 'Gustav Klimt', 'correct': false},
        {'text': 'Edvard Munch', 'correct': false},
      ],
    },
    {
      'questionText': 'Which painting depicts a scene of rural American Gothic architecture?',
      'answers': [
        {'text': 'American Gothic', 'correct': true},
        {'text': 'The Persistence of Memory', 'correct': false},
        {'text': 'The Kiss', 'correct': false},
        {'text': 'Whistler\'s Mother', 'correct': false},
      ],
    },
    {
      'questionText': 'Who painted "The Birth of Venus"?',
      'answers': [
        {'text': 'Sandro Botticelli', 'correct': true},
        {'text': 'Leonardo da Vinci', 'correct': false},
        {'text': 'Michelangelo', 'correct': false},
        {'text': 'Raphael', 'correct': false},
      ],
    },
    {
      'questionText': 'Which artist painted "Whistler\'s Mother"?',
      'answers': [
        {'text': 'James McNeill Whistler', 'correct': true},
        {'text': 'Grant Wood', 'correct': false},
        {'text': 'Edward Hopper', 'correct': false},
        {'text': 'Johannes Vermeer', 'correct': false},
      ],
    },
    {
      'questionText': 'Who painted "Las Meninas"?',
      'answers': [
        {'text': 'Diego Velázquez', 'correct': true},
        {'text': 'El Greco', 'correct': false},
        {'text': 'Francisco Goya', 'correct': false},
        {'text': 'Pablo Picasso', 'correct': false},
      ],
    },
    {
      'questionText': 'Which painting is famous for its depiction of a garden and a pond with water lilies?',
      'answers': [
        {'text': 'Water Lilies', 'correct': true},
        {'text': 'Sunflowers', 'correct': false},
        {'text': 'The Starry Night', 'correct': false},
        {'text': 'The Persistence of Memory', 'correct': false},
      ],
    },
    {
      'questionText': 'Who painted "Sunflowers"?',
      'answers': [
        {'text': 'Vincent van Gogh', 'correct': true},
        {'text': 'Claude Monet', 'correct': false},
        {'text': 'Pablo Picasso', 'correct': false},
        {'text': 'Leonardo da Vinci', 'correct': false},
      ],
    },
    {
      'questionText': 'Which artist painted "Girl with a Pearl Earring"?',
      'answers': [
        {'text': 'Johannes Vermeer', 'correct': true},
        {'text': 'Leonardo da Vinci', 'correct': false},
        {'text': 'Pablo Picasso', 'correct': false},
        {'text': 'Edvard Munch', 'correct': false},
      ],
    },
    {
      'questionText': 'Who painted "The Garden of Earthly Delights"?',
      'answers': [
        {'text': 'Hieronymus Bosch', 'correct': true},
        {'text': 'Pieter Bruegel the Elder', 'correct': false},
        {'text': 'Albrecht Dürer', 'correct': false},
        {'text': 'Jan van Eyck', 'correct': false},
      ],
    },
    {
      'questionText': 'Which painting is known for its depiction of a young woman in front of a mirror?',
      'answers': [
        {'text': 'Girl Before a Mirror', 'correct': true},
        {'text': 'American Gothic', 'correct': false},
        {'text': 'The Kiss', 'correct': false},
        {'text': 'The Birth of Venus', 'correct': false},
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
        title: Text('Painting Quiz'),
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
