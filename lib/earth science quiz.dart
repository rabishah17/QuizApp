import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: EarthScienceQuizPage(),
  ));
}

class EarthScienceQuizPage extends StatelessWidget {
  final List<Map<String, Object>> _questions = const [
    {
      'questionText': 'What is the hardest mineral on the Mohs scale?',
      'answers': [
        {'text': 'Diamond', 'correct': true},
        {'text': 'Quartz', 'correct': false},
        {'text': 'Feldspar', 'correct': false},
        {'text': 'Talc', 'correct': false},
      ],
    },
    {
      'questionText': 'Which layer of the Earth is liquid iron and nickel?',
      'answers': [
        {'text': 'Outer Core', 'correct': true},
        {'text': 'Mantle', 'correct': false},
        {'text': 'Inner Core', 'correct': false},
        {'text': 'Crust', 'correct': false},
      ],
    },
    {
      'questionText': 'What type of rock is formed from cooling magma or lava?',
      'answers': [
        {'text': 'Igneous', 'correct': true},
        {'text': 'Sedimentary', 'correct': false},
        {'text': 'Metamorphic', 'correct': false},
        {'text': 'Volcanic', 'correct': false},
      ],
    },
    {
      'questionText': 'Which gas makes up the majority of the Earth\'s atmosphere?',
      'answers': [
        {'text': 'Nitrogen', 'correct': true},
        {'text': 'Oxygen', 'correct': false},
        {'text': 'Carbon Dioxide', 'correct': false},
        {'text': 'Argon', 'correct': false},
      ],
    },
    {
      'questionText': 'What is the process by which rocks are broken down into smaller particles?',
      'answers': [
        {'text': 'Weathering', 'correct': true},
        {'text': 'Erosion', 'correct': false},
        {'text': 'Deposition', 'correct': false},
        {'text': 'Sedimentation', 'correct': false},
      ],
    },
    {
      'questionText': 'Which layer of the atmosphere contains the ozone layer?',
      'answers': [
        {'text': 'Stratosphere', 'correct': true},
        {'text': 'Troposphere', 'correct': false},
        {'text': 'Mesosphere', 'correct': false},
        {'text': 'Thermosphere', 'correct': false},
      ],
    },
    {
      'questionText': 'What type of cloud is thin and wispy, found at high altitudes?',
      'answers': [
        {'text': 'Cirrus', 'correct': true},
        {'text': 'Cumulus', 'correct': false},
        {'text': 'Stratus', 'correct': false},
        {'text': 'Nimbostratus', 'correct': false},
      ],
    },
    {
      'questionText': 'Which layer of the Earth\'s atmosphere is closest to the surface?',
      'answers': [
        {'text': 'Troposphere', 'correct': true},
        {'text': 'Stratosphere', 'correct': false},
        {'text': 'Mesosphere', 'correct': false},
        {'text': 'Thermosphere', 'correct': false},
      ],
    },
    {
      'questionText': 'What is the name for the theory that suggests continents were once connected and drifted apart?',
      'answers': [
        {'text': 'Continental Drift', 'correct': true},
        {'text': 'Plate Tectonics', 'correct': false},
        {'text': 'Seafloor Spreading', 'correct': false},
        {'text': 'Earthquakes', 'correct': false},
      ],
    },
    {
      'questionText': 'Which type of rock is formed from the remains of plants and animals?',
      'answers': [
        {'text': 'Sedimentary', 'correct': true},
        {'text': 'Igneous', 'correct': false},
        {'text': 'Metamorphic', 'correct': false},
        {'text': 'Volcanic', 'correct': false},
      ],
    },
    {
      'questionText': 'What is the layer of soil that contains the most organic matter?',
      'answers': [
        {'text': 'Topsoil', 'correct': true},
        {'text': 'Subsoil', 'correct': false},
        {'text': 'Bedrock', 'correct': false},
        {'text': 'Clay', 'correct': false},
      ],
    },
    {
      'questionText': 'Which type of rock is formed from the alteration of existing rocks by heat and pressure?',
      'answers': [
        {'text': 'Metamorphic', 'correct': true},
        {'text': 'Igneous', 'correct': false},
        {'text': 'Sedimentary', 'correct': false},
        {'text': 'Volcanic', 'correct': false},
      ],
    },
    {
      'questionText': 'What is the boundary between two tectonic plates called?',
      'answers': [
        {'text': 'Fault', 'correct': true},
        {'text': 'Rift', 'correct': false},
        {'text': 'Subduction Zone', 'correct': false},
        {'text': 'Ridge', 'correct': false},
      ],
    },
    {
      'questionText': 'Which type of volcano is characterized by its broad, gently sloping sides?',
      'answers': [
        {'text': 'Shield', 'correct': true},
        {'text': 'Composite', 'correct': false},
        {'text': 'Cinder Cone', 'correct': false},
        {'text': 'Dome', 'correct': false},
      ],
    },
    {
      'questionText': 'What is the name for a large, bowl-shaped depression formed by the collapse of a volcano?',
      'answers': [
        {'text': 'Caldera', 'correct': true},
        {'text': 'Crater', 'correct': false},
        {'text': 'Lava Tube', 'correct': false},
        {'text': 'Pyroclastic Flow', 'correct': false},
      ],
    },
    {
      'questionText': 'Which layer of the Earth\'s atmosphere contains the ionosphere?',
      'answers': [
        {'text': 'Thermosphere', 'correct': true},
        {'text': 'Stratosphere', 'correct': false},
        {'text': 'Mesosphere', 'correct': false},
        {'text': 'Troposphere', 'correct': false},
      ],
    },
    {
      'questionText': 'What is the process of soil particles being carried away by wind, water, or ice?',
      'answers': [
        {'text': 'Erosion', 'correct': true},
        {'text': 'Weathering', 'correct': false},
        {'text': 'Deposition', 'correct': false},
        {'text': 'Sedimentation', 'correct': false},
      ],
    },
    {
      'questionText': 'Which type of glacier forms in mountainous areas and moves downward through valleys?',
      'answers': [
        {'text': 'Valley Glacier', 'correct': true},
        {'text': 'Continental Glacier', 'correct': false},
        {'text': 'Ice Cap', 'correct': false},
        {'text': 'Ice Sheet', 'correct': false},
      ],
    },
    {
      'questionText': 'What type of cloud is typically associated with thunderstorms?',
      'answers': [
        {'text': 'Cumulonimbus', 'correct': true},
        {'text': 'Cirrus', 'correct': false},
        {'text': 'Stratus', 'correct': false},
        {'text': 'Nimbostratus', 'correct': false},
      ],
    },
    {
      'questionText': 'What is the process by which water changes from vapor to liquid?',
      'answers': [
        {'text': 'Condensation', 'correct': true},
        {'text': 'Evaporation', 'correct': false},
        {'text': 'Precipitation', 'correct': false},
        {'text': 'Transpiration', 'correct': false},
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
        title: Text('Earth Science Quiz'),
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
              child: Text('Back to Earth Science'),
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
        title: Text('Earth Science Quiz'),
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
