import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: PhysicalGeographyQuizPage(),
  ));
}

class PhysicalGeographyQuizPage extends StatelessWidget {
  final List<Map<String, Object>> _questions = const [
    {
      'questionText': 'Which of the following is not a type of plate boundary?',
      'answers': [
        {'text': 'Convergent', 'correct': false},
        {'text': 'Divergent', 'correct': false},
        {'text': 'Incoherent', 'correct': true},
        {'text': 'Transform', 'correct': false},
      ],
    },
    {
      'questionText': 'What is the capital city of Australia?',
      'answers': [
        {'text': 'Sydney', 'correct': false},
        {'text': 'Canberra', 'correct': true},
        {'text': 'Melbourne', 'correct': false},
        {'text': 'Brisbane', 'correct': false},
      ],
    },
    {
      'questionText': 'Which is the largest desert in the world?',
      'answers': [
        {'text': 'Gobi Desert', 'correct': false},
        {'text': 'Kalahari Desert', 'correct': false},
        {'text': 'Sahara Desert', 'correct': true},
        {'text': 'Mojave Desert', 'correct': false},
      ],
    },
    {
      'questionText': 'Which is the longest river in the world?',
      'answers': [
        {'text': 'Amazon River', 'correct': false},
        {'text': 'Nile River', 'correct': true},
        {'text': 'Yangtze River', 'correct': false},
        {'text': 'Mississippi River', 'correct': false},
      ],
    },
    {
      'questionText': 'Which of the following is not a type of cloud?',
      'answers': [
        {'text': 'Cumulus', 'correct': false},
        {'text': 'Stratus', 'correct': false},
        {'text': 'Nimbus', 'correct': false},
        {'text': 'Lenticular', 'correct': false},
      ],
    },
    {
      'questionText': 'What is the process by which water changes from a liquid to a gas?',
      'answers': [
        {'text': 'Condensation', 'correct': false},
        {'text': 'Sublimation', 'correct': false},
        {'text': 'Evaporation', 'correct': true},
        {'text': 'Precipitation', 'correct': false},
      ],
    },
    {
      'questionText': 'Which of the following is not a type of rock?',
      'answers': [
        {'text': 'Igneous', 'correct': false},
        {'text': 'Metamorphic', 'correct': false},
        {'text': 'Stratocumulus', 'correct': true},
        {'text': 'Sedimentary', 'correct': false},
      ],
    },
    {
      'questionText': 'What is the outermost layer of the Earth called?',
      'answers': [
        {'text': 'Mantle', 'correct': false},
        {'text': 'Crust', 'correct': true},
        {'text': 'Core', 'correct': false},
        {'text': 'Asthenosphere', 'correct': false},
      ],
    },
    {
      'questionText': 'Which ocean is the largest by area?',
      'answers': [
        {'text': 'Indian Ocean', 'correct': false},
        {'text': 'Atlantic Ocean', 'correct': false},
        {'text': 'Pacific Ocean', 'correct': true},
        {'text': 'Arctic Ocean', 'correct': false},
      ],
    },
    {
      'questionText': 'What is the term for the process of wearing away rock by natural forces?',
      'answers': [
        {'text': 'Erosion', 'correct': true},
        {'text': 'Weathering', 'correct': false},
        {'text': 'Deposition', 'correct': false},
        {'text': 'Abrasion', 'correct': false},
      ],
    },
    {
      'questionText': 'Which of the following is a greenhouse gas?',
      'answers': [
        {'text': 'Nitrogen', 'correct': false},
        {'text': 'Oxygen', 'correct': false},
        {'text': 'Carbon Dioxide', 'correct': true},
        {'text': 'Argon', 'correct': false},
      ],
    },
    {
      'questionText': 'Which mountain range is the longest in the world?',
      'answers': [
        {'text': 'Rocky Mountains', 'correct': false},
        {'text': 'Andes Mountains', 'correct': false},
        {'text': 'Himalayas', 'correct': false},
        {'text': 'Andes Mountains', 'correct': true},
      ],
    },
    {
      'questionText': 'What is the process by which soil is moved from one place to another?',
      'answers': [
        {'text': 'Weathering', 'correct': false},
        {'text': 'Erosion', 'correct': true},
        {'text': 'Deposition', 'correct': false},
        {'text': 'Transportation', 'correct': false},
      ],
    },
    {
      'questionText': 'Which of the following is not a type of volcano?',
      'answers': [
        {'text': 'Stratovolcano', 'correct': false},
        {'text': 'Shield Volcano', 'correct': false},
        {'text': 'Composite Volcano', 'correct': false},
        {'text': 'Tornado Volcano', 'correct': true},
      ],
    },
    {
      'questionText': 'Which layer of the atmosphere contains the ozone layer?',
      'answers': [
        {'text': 'Troposphere', 'correct': false},
        {'text': 'Stratosphere', 'correct': true},
        {'text': 'Mesosphere', 'correct': false},
        {'text': 'Thermosphere', 'correct': false},
      ],
    },
    {
      'questionText': 'What is the term for the process of water seeping into the ground?',
      'answers': [
        {'text': 'Infiltration', 'correct': true},
        {'text': 'Percolation', 'correct': false},
        {'text': 'Evaporation', 'correct': false},
        {'text': 'Condensation', 'correct': false},
      ],
    },
    {
      'questionText': 'Which of the following is not a type of climate?',
      'answers': [
        {'text': 'Desert', 'correct': false},
        {'text': 'Savanna', 'correct': false},
        {'text': 'Taiga', 'correct': false},
        {'text': 'Typhoon', 'correct': true},
      ],
    },
    {
      'questionText': 'What is the term for a sudden and violent shaking of the ground?',
      'answers': [
        {'text': 'Erosion', 'correct': false},
        {'text': 'Tsunami', 'correct': false},
        {'text': 'Hurricane', 'correct': false},
        {'text': 'Earthquake', 'correct': true},
      ],
    },
    {
      'questionText': 'Which of the following is not a type of glacier?',
      'answers': [
        {'text': 'Alpine Glacier', 'correct': false},
        {'text': 'Ice Sheet', 'correct': false},
        {'text': 'Cirque Glacier', 'correct': false},
        {'text': 'Sirocco Glacier', 'correct': true},
      ],
    },
    {
      'questionText': 'What is the term for the process by which water falls from the atmosphere to the Earth\'s surface?',
      'answers': [
        {'text': 'Evaporation', 'correct': false},
        {'text': 'Condensation', 'correct': false},
        {'text': 'Precipitation', 'correct': true},
        {'text': 'Sublimation', 'correct': false},
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
        title: Text('Physical Geography Quiz'),
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
  State<QuizPage> createState() => _QuizPageState();
}

class _QuizPageState extends State<QuizPage> {
  int _questionIndex = 0;
  int _totalScore = 0;

  void _answerQuestion(bool isCorrect) {
    setState(() {
      _totalScore += isCorrect ? 1 : 0;
      _questionIndex++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Physical Geography Quiz'),
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
