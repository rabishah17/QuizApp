import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: BiologyQuizPage(),
  ));
}

class BiologyQuizPage extends StatelessWidget {
  final List<Map<String, Object>> _questions = const [
    {
      'questionText': 'What is the powerhouse of the cell?',
      'answers': [
        {'text': 'Mitochondria', 'correct': true},
        {'text': 'Nucleus', 'correct': false},
        {'text': 'Ribosome', 'correct': false},
        {'text': 'Endoplasmic Reticulum', 'correct': false},
      ],
    },
    {
      'questionText': 'What is the process of converting glucose into energy?',
      'answers': [
        {'text': 'Cellular Respiration', 'correct': true},
        {'text': 'Photosynthesis', 'correct': false},
        {'text': 'Fermentation', 'correct': false},
        {'text': 'Glycolysis', 'correct': false},
      ],
    },
    {
      'questionText': 'Which organelle is responsible for photosynthesis?',
      'answers': [
        {'text': 'Chloroplast', 'correct': true},
        {'text': 'Mitochondria', 'correct': false},
        {'text': 'Nucleus', 'correct': false},
        {'text': 'Ribosome', 'correct': false},
      ],
    },
    {
      'questionText': 'What is the basic unit of life?',
      'answers': [
        {'text': 'Cell', 'correct': true},
        {'text': 'Atom', 'correct': false},
        {'text': 'Molecule', 'correct': false},
        {'text': 'Organ', 'correct': false},
      ],
    },
    {
      'questionText': 'What is the genetic material in cells?',
      'answers': [
        {'text': 'DNA', 'correct': true},
        {'text': 'RNA', 'correct': false},
        {'text': 'Protein', 'correct': false},
        {'text': 'Lipid', 'correct': false},
      ],
    },
    {
      'questionText': 'What is the process by which plants make their own food?',
      'answers': [
        {'text': 'Photosynthesis', 'correct': true},
        {'text': 'Respiration', 'correct': false},
        {'text': 'Fermentation', 'correct': false},
        {'text': 'Digestion', 'correct': false},
      ],
    },
    {
      'questionText': 'Which gas do plants take in during photosynthesis?',
      'answers': [
        {'text': 'Carbon Dioxide', 'correct': true},
        {'text': 'Oxygen', 'correct': false},
        {'text': 'Nitrogen', 'correct': false},
        {'text': 'Hydrogen', 'correct': false},
      ],
    },
    {
      'questionText': 'What is the process of cell division in which two identical cells are formed?',
      'answers': [
        {'text': 'Mitosis', 'correct': true},
        {'text': 'Meiosis', 'correct': false},
        {'text': 'Fission', 'correct': false},
        {'text': 'Budding', 'correct': false},
      ],
    },
    {
      'questionText': 'Which molecule carries instructions for making proteins?',
      'answers': [
        {'text': 'RNA', 'correct': true},
        {'text': 'DNA', 'correct': false},
        {'text': 'Lipid', 'correct': false},
        {'text': 'Carbohydrate', 'correct': false},
      ],
    },
    {
      'questionText': 'What is the powerhouse of the animal cell?',
      'answers': [
        {'text': 'Mitochondria', 'correct': true},
        {'text': 'Nucleus', 'correct': false},
        {'text': 'Ribosome', 'correct': false},
        {'text': 'Endoplasmic Reticulum', 'correct': false},
      ],
    },
    {
      'questionText': 'Which scientist proposed the theory of evolution by natural selection?',
      'answers': [
        {'text': 'Charles Darwin', 'correct': true},
        {'text': 'Gregor Mendel', 'correct': false},
        {'text': 'Louis Pasteur', 'correct': false},
        {'text': 'Antonie van Leeuwenhoek', 'correct': false},
      ],
    },
    {
      'questionText': 'Which organ in the human body is responsible for pumping blood?',
      'answers': [
        {'text': 'Heart', 'correct': true},
        {'text': 'Brain', 'correct': false},
        {'text': 'Lung', 'correct': false},
        {'text': 'Liver', 'correct': false},
      ],
    },
    {
      'questionText': 'What is the process by which plants lose water through their leaves?',
      'answers': [
        {'text': 'Transpiration', 'correct': true},
        {'text': 'Respiration', 'correct': false},
        {'text': 'Photosynthesis', 'correct': false},
        {'text': 'Excretion', 'correct': false},
      ],
    },
    {
      'questionText': 'Which type of tissue connects muscles to bones in vertebrate animals?',
      'answers': [
        {'text': 'Tendon', 'correct': true},
        {'text': 'Ligament', 'correct': false},
        {'text': 'Cartilage', 'correct': false},
        {'text': 'Epithelial tissue', 'correct': false},
      ],
    },
    {
      'questionText': 'What is the largest organ of the human body?',
      'answers': [
        {'text': 'Skin', 'correct': true},
        {'text': 'Liver', 'correct': false},
        {'text': 'Heart', 'correct': false},
        {'text': 'Brain', 'correct': false},
      ],
    },
    {
      'questionText': 'Which part of the flower produces pollen?',
      'answers': [
        {'text': 'Anther', 'correct': true},
        {'text': 'Stigma', 'correct': false},
        {'text': 'Petal', 'correct': false},
        {'text': 'Sepal', 'correct': false},
      ],
    },
    {
      'questionText': 'What is the process by which organisms maintain a stable internal environment?',
      'answers': [
        {'text': 'Homeostasis', 'correct': true},
        {'text': 'Metabolism', 'correct': false},
        {'text': 'Osmosis', 'correct': false},
        {'text': 'Adaptation', 'correct': false},
      ],
    },
    {
      'questionText': 'Which type of cell division produces gametes?',
      'answers': [
        {'text': 'Meiosis', 'correct': true},
        {'text': 'Mitosis', 'correct': false},
        {'text': 'Binary fission', 'correct': false},
        {'text': 'Budding', 'correct': false},
      ],
    },
    {
      'questionText': 'What is the longest bone in the human body?',
      'answers': [
        {'text': 'Femur', 'correct': true},
        {'text': 'Tibia', 'correct': false},
        {'text': 'Humerus', 'correct': false},
        {'text': 'Radius', 'correct': false},
      ],
    },
    {
      'questionText': 'Which gas do humans inhale and use in cellular respiration?',
      'answers': [
        {'text': 'Oxygen', 'correct': true},
        {'text': 'Carbon Dioxide', 'correct': false},
        {'text': 'Nitrogen', 'correct': false},
        {'text': 'Hydrogen', 'correct': false},
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
        title: Text('Biology Quiz'),
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
              child: Text('Back to Biology'),
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
        title: Text('Biology Quiz'),
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
