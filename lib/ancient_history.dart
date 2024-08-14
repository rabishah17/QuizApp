import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: AncientHistoryQuizPage(),
  ));
}

class AncientHistoryQuizPage extends StatelessWidget {
  final List<Map<String, Object>> _questions = const [
    {
      'questionText': 'Who built the Great Pyramid of Giza?',
      'answers': [
        {'text': 'Khufu', 'correct': true},
        {'text': 'Akhenaten', 'correct': false},
        {'text': 'Ramses II', 'correct': false},
        {'text': 'Hatshepsut', 'correct': false},
      ],
    },
    {
      'questionText': 'Which ancient civilization built the Acropolis?',
      'answers': [
        {'text': 'Ancient Greeks', 'correct': true},
        {'text': 'Ancient Egyptians', 'correct': false},
        {'text': 'Ancient Romans', 'correct': false},
        {'text': 'Mesopotamians', 'correct': false},
      ],
    },
    {
      'questionText': 'Who was the first emperor of China?',
      'answers': [
        {'text': 'Qin Shi Huang', 'correct': true},
        {'text': 'Liu Bang', 'correct': false},
        {'text': 'Emperor Wu', 'correct': false},
        {'text': 'Emperor Xuanzong', 'correct': false},
      ],
    },
    {
      'questionText': 'Which ancient city was known for the Hanging Gardens?',
      'answers': [
        {'text': 'Babylon', 'correct': true},
        {'text': 'Thebes', 'correct': false},
        {'text': 'Athens', 'correct': false},
        {'text': 'Nineveh', 'correct': false},
      ],
    },
    {
      'questionText': 'Who was the first pharaoh of Egypt?',
      'answers': [
        {'text': 'Narmer', 'correct': true},
        {'text': 'Khufu', 'correct': false},
        {'text': 'Akhenaten', 'correct': false},
        {'text': 'Hatshepsut', 'correct': false},
      ],
    },
    {
      'questionText': 'Which ancient civilization developed the Code of Hammurabi?',
      'answers': [
        {'text': 'Babylonians', 'correct': true},
        {'text': 'Assyrians', 'correct': false},
        {'text': 'Persians', 'correct': false},
        {'text': 'Hittites', 'correct': false},
      ],
    },
    {
      'questionText': 'Who founded the city of Rome according to legend?',
      'answers': [
        {'text': 'Romulus and Remus', 'correct': true},
        {'text': 'Julius Caesar', 'correct': false},
        {'text': 'Augustus', 'correct': false},
        {'text': 'Nero', 'correct': false},
      ],
    },
    {
      'questionText': 'Which ancient civilization built Machu Picchu?',
      'answers': [
        {'text': 'Incas', 'correct': true},
        {'text': 'Mayans', 'correct': false},
        {'text': 'Aztecs', 'correct': false},
        {'text': 'Moche', 'correct': false},
      ],
    },
    {
      'questionText': 'Who was the first emperor of Rome?',
      'answers': [
        {'text': 'Augustus', 'correct': true},
        {'text': 'Julius Caesar', 'correct': false},
        {'text': 'Nero', 'correct': false},
        {'text': 'Trajan', 'correct': false},
      ],
    },
    {
      'questionText': 'Which ancient civilization built the city of Persepolis?',
      'answers': [
        {'text': 'Persians', 'correct': true},
        {'text': 'Babylonians', 'correct': false},
        {'text': 'Sumerians', 'correct': false},
        {'text': 'Assyrians', 'correct': false},
      ],
    },
    {
      'questionText': 'Who was the famous queen of ancient Egypt known for her beauty?',
      'answers': [
        {'text': 'Cleopatra', 'correct': true},
        {'text': 'Nefertiti', 'correct': false},
        {'text': 'Hatshepsut', 'correct': false},
        {'text': 'Isis', 'correct': false},
      ],
    },
    {
      'questionText': 'Which ancient city-state is considered the birthplace of democracy?',
      'answers': [
        {'text': 'Athens', 'correct': true},
        {'text': 'Sparta', 'correct': false},
        {'text': 'Thebes', 'correct': false},
        {'text': 'Corinth', 'correct': false},
      ],
    },
    {
      'questionText': 'Who was the famous Carthaginian general who crossed the Alps with elephants?',
      'answers': [
        {'text': 'Hannibal', 'correct': true},
        {'text': 'Scipio Africanus', 'correct': false},
        {'text': 'Julius Caesar', 'correct': false},
        {'text': 'Cato the Elder', 'correct': false},
      ],
    },
    {
      'questionText': 'Which ancient civilization built the city of Petra?',
      'answers': [
        {'text': 'Nabateans', 'correct': true},
        {'text': 'Phoenicians', 'correct': false},
        {'text': 'Hittites', 'correct': false},
        {'text': 'Egyptians', 'correct': false},
      ],
    },
    {
      'questionText': 'Who was the founder of Buddhism?',
      'answers': [
        {'text': 'Siddhartha Gautama', 'correct': true},
        {'text': 'Confucius', 'correct': false},
        {'text': 'Laozi', 'correct': false},
        {'text': 'Ashoka the Great', 'correct': false},
      ],
    },
    {
      'questionText': 'Which ancient city was the center of the Indus Valley Civilization?',
      'answers': [
        {'text': 'Harappa', 'correct': true},
        {'text': 'Mohenjo-daro', 'correct': false},
        {'text': 'Taxila', 'correct': false},
        {'text': 'Chanhudaro', 'correct': false},
      ],
    },
    {
      'questionText': 'Who was the first emperor of the Maurya Empire in ancient India?',
      'answers': [
        {'text': 'Chandragupta Maurya', 'correct': true},
        {'text': 'Ashoka', 'correct': false},
        {'text': 'Chandragupta II', 'correct': false},
        {'text': 'Bindusara', 'correct': false},
      ],
    },
    {
      'questionText': 'Which ancient civilization built the city of Teotihuacan?',
      'answers': [
        {'text': 'Teotihuacanos', 'correct': true},
        {'text': 'Mayans', 'correct': false},
        {'text': 'Aztecs', 'correct': false},
        {'text': 'Olmecs', 'correct': false},
      ],
    },
    {
      'questionText': 'Who was the first emperor of the Gupta Empire in ancient India?',
      'answers': [
        {'text': 'Chandragupta I', 'correct': true},
        {'text': 'Samudragupta', 'correct': false},
        {'text': 'Chandragupta II', 'correct': false},
        {'text': 'Skandagupta', 'correct': false},
      ],
    },
    {
      'questionText': 'Which ancient civilization built the city of Tikal?',
      'answers': [
        {'text': 'Mayans', 'correct': true},
        {'text': 'Aztecs', 'correct': false},
        {'text': 'Incas', 'correct': false},
        {'text': 'Olmecs', 'correct': false},
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
        title: Text('Ancient History Quiz'),
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
              child: Text('Back to Ancient History'),
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
        title: Text('Ancient History Quiz'),
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
