import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: GeographyQuizPage(),
  ));
}

class GeographyQuizPage extends StatelessWidget {
  final List<Map<String, Object>> _questions = const [
    {
      'questionText': 'What is the capital city of France?',
      'answers': [
        {'text': 'Berlin', 'correct': false},
        {'text': 'Madrid', 'correct': false},
        {'text': 'Paris', 'correct': true},
        {'text': 'Rome', 'correct': false},
      ],
    },
    {
      'questionText': 'Which river runs through London?',
      'answers': [
        {'text': 'Thames', 'correct': true},
        {'text': 'Seine', 'correct': false},
        {'text': 'Danube', 'correct': false},
        {'text': 'Rhine', 'correct': false},
      ],
    },
    {
      'questionText': 'What is the largest city in Brazil?',
      'answers': [
        {'text': 'São Paulo', 'correct': true},
        {'text': 'Rio de Janeiro', 'correct': false},
        {'text': 'Brasília', 'correct': false},
        {'text': 'Salvador', 'correct': false},
      ],
    },
    {
      'questionText': 'Which country has the largest population in the world?',
      'answers': [
        {'text': 'India', 'correct': false},
        {'text': 'United States', 'correct': false},
        {'text': 'China', 'correct': true},
        {'text': 'Brazil', 'correct': false},
      ],
    },
    {
      'questionText': 'Which continent is the least populated?',
      'answers': [
        {'text': 'Asia', 'correct': false},
        {'text': 'Africa', 'correct': false},
        {'text': 'Antarctica', 'correct': true},
        {'text': 'Europe', 'correct': false},
      ],
    },
    {
      'questionText': 'What is the longest river in South America?',
      'answers': [
        {'text': 'Amazon', 'correct': true},
        {'text': 'Orinoco', 'correct': false},
        {'text': 'Paraguay', 'correct': false},
        {'text': 'Magdalena', 'correct': false},
      ],
    },
    {
      'questionText': 'Which country has the highest population density?',
      'answers': [
        {'text': 'Monaco', 'correct': true},
        {'text': 'Singapore', 'correct': false},
        {'text': 'Bangladesh', 'correct': false},
        {'text': 'India', 'correct': false},
      ],
    },
    {
      'questionText': 'Which of these countries is not part of Scandinavia?',
      'answers': [
        {'text': 'Norway', 'correct': false},
        {'text': 'Sweden', 'correct': false},
        {'text': 'Denmark', 'correct': false},
        {'text': 'Ireland', 'correct': true},
      ],
    },
    {
      'questionText': 'What is the official language of Brazil?',
      'answers': [
        {'text': 'Portuguese', 'correct': true},
        {'text': 'Spanish', 'correct': false},
        {'text': 'English', 'correct': false},
        {'text': 'French', 'correct': false},
      ],
    },
    {
      'questionText': 'Which city is known as the "City of Seven Hills"?',
      'answers': [
        {'text': 'Rome', 'correct': true},
        {'text': 'Athens', 'correct': false},
        {'text': 'Istanbul', 'correct': false},
        {'text': 'Lisbon', 'correct': false},
      ],
    },
    {
      'questionText': 'What is the largest desert in the world?',
      'answers': [
        {'text': 'Sahara', 'correct': true},
        {'text': 'Gobi', 'correct': false},
        {'text': 'Arabian', 'correct': false},
        {'text': 'Kalahari', 'correct': false},
      ],
    },
    {
      'questionText': 'Which country is the largest by land area?',
      'answers': [
        {'text': 'Russia', 'correct': true},
        {'text': 'Canada', 'correct': false},
        {'text': 'China', 'correct': false},
        {'text': 'United States', 'correct': false},
      ],
    },
    {
      'questionText': 'Which of these cities is located on two continents?',
      'answers': [
        {'text': 'Rome', 'correct': false},
        {'text': 'Istanbul', 'correct': true},
        {'text': 'Moscow', 'correct': false},
        {'text': 'Athens', 'correct': false},
      ],
    },
    {
      'questionText': 'What is the world\'s most populous city?',
      'answers': [
        {'text': 'Tokyo', 'correct': true},
        {'text': 'Shanghai', 'correct': false},
        {'text': 'Beijing', 'correct': false},
        {'text': 'Delhi', 'correct': false},
      ],
    },
    {
      'questionText': 'Which country has the longest coastline?',
      'answers': [
        {'text': 'Canada', 'correct': true},
        {'text': 'United States', 'correct': false},
        {'text': 'Russia', 'correct': false},
        {'text': 'Australia', 'correct': false},
      ],
    },
    {
      'questionText': 'Which river is known as the "Cradle of Chinese Civilization"?',
      'answers': [
        {'text': 'Yangtze', 'correct': true},
        {'text': 'Yellow', 'correct': false},
        {'text': 'Mekong', 'correct': false},
        {'text': 'Huai', 'correct': false},
      ],
    },
    {
      'questionText': 'Which city is home to the world\'s tallest building, the Burj Khalifa?',
      'answers': [
        {'text': 'Dubai', 'correct': true},
        {'text': 'Riyadh', 'correct': false},
        {'text': 'Abu Dhabi', 'correct': false},
        {'text': 'Doha', 'correct': false},
      ],
    },
    {
      'questionText': 'Which country has the largest number of UNESCO World Heritage Sites?',
      'answers': [
        {'text': 'Italy', 'correct': true},
        {'text': 'France', 'correct': false},
        {'text': 'China', 'correct': false},
        {'text': 'Spain', 'correct': false},
      ],
    },
    {
      'questionText': 'Which of these cities is located at the highest altitude?',
      'answers': [
        {'text': 'La Paz', 'correct': true},
        {'text': 'Quito', 'correct': false},
        {'text': 'Bogotá', 'correct': false},
        {'text': 'Lima', 'correct': false},
      ],
    },
    {
      'questionText': 'Which country is known as the "Land of the Rising Sun"?',
      'answers': [
        {'text': 'China', 'correct': false},
        {'text': 'Vietnam', 'correct': false},
        {'text': 'Japan', 'correct': true},
        {'text': 'Korea', 'correct': false},
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
        title: Text('Human Geography Quiz'),
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
        title: Text('Human Geography Quiz'),
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
