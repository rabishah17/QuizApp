import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: CartographyQuizPage(),
  ));
}

class CartographyQuizPage extends StatelessWidget {
  final List<Map<String, Object>> _questions = const [
    {
      'questionText': 'What is the study and practice of making maps called?',
      'answers': [
        {'text': 'Geography', 'correct': false},
        {'text': 'Geology', 'correct': false},
        {'text': 'Cartography', 'correct': true},
        {'text': 'Topography', 'correct': false},
      ],
    },
    {
      'questionText': 'Which ancient civilization is known for creating some of the earliest known maps?',
      'answers': [
        {'text': 'Mesopotamians', 'correct': false},
        {'text': 'Egyptians', 'correct': false},
        {'text': 'Greeks', 'correct': false},
        {'text': 'Babylonians', 'correct': true},
      ],
    },
    {
      'questionText': 'Who is often considered the "Father of Modern Cartography"?',
      'answers': [
        {'text': 'Ptolemy', 'correct': true},
        {'text': 'Eratosthenes', 'correct': false},
        {'text': 'Hipparchus', 'correct': false},
        {'text': 'Herodotus', 'correct': false},
      ],
    },
    {
      'questionText': 'Which of these is NOT a type of map projection?',
      'answers': [
        {'text': 'Mercator', 'correct': false},
        {'text': 'Robinson', 'correct': false},
        {'text': 'Koch', 'correct': false},
        {'text': 'Newton', 'correct': true},
      ],
    },
    {
      'questionText': 'Which map projection is famous for minimizing distortion of area but distorting shapes?',
      'answers': [
        {'text': 'Mercator', 'correct': false},
        {'text': 'Robinson', 'correct': false},
        {'text': 'Gall-Peters', 'correct': true},
        {'text': 'Azimuthal Equidistant', 'correct': false},
      ],
    },
    {
      'questionText': 'What does GIS stand for in relation to cartography?',
      'answers': [
        {'text': 'Global Information System', 'correct': false},
        {'text': 'Geographic Information System', 'correct': true},
        {'text': 'General Information Survey', 'correct': false},
        {'text': 'Geospatial Intelligence System', 'correct': false},
      ],
    },
    {
      'questionText': 'Which map feature shows elevation levels through contour lines?',
      'answers': [
        {'text': 'Topographic Map', 'correct': true},
        {'text': 'Political Map', 'correct': false},
        {'text': 'Climate Map', 'correct': false},
        {'text': 'Thematic Map', 'correct': false},
      ],
    },
    {
      'questionText': 'What is the term for a map that uses dots or symbols to represent a quantity or value of something?',
      'answers': [
        {'text': 'Dot Map', 'correct': false},
        {'text': 'Thematic Map', 'correct': true},
        {'text': 'Cartogram', 'correct': false},
        {'text': 'Choropleth Map', 'correct': false},
      ],
    },
    {
      'questionText': 'Which famous map depicts the known world at the time of its creation in the 2nd century AD?',
      'answers': [
        {'text': 'The Tabula Rogeriana', 'correct': false},
        {'text': 'The Mappa Mundi', 'correct': true},
        {'text': 'The Piri Reis Map', 'correct': false},
        {'text': 'The Waldseemüller Map', 'correct': false},
      ],
    },
    {
      'questionText': 'Which map projection is often used for world maps in classrooms despite distorting the sizes of continents?',
      'answers': [
        {'text': 'Robinson', 'correct': true},
        {'text': 'Mercator', 'correct': false},
        {'text': 'Azimuthal Equidistant', 'correct': false},
        {'text': 'Goode\'s Homolosine', 'correct': false},
      ],
    },
    {
      'questionText': 'Who created the first detailed and accurate maps of much of Europe and the Mediterranean?',
      'answers': [
        {'text': 'Ptolemy', 'correct': false},
        {'text': 'Gerardus Mercator', 'correct': false},
        {'text': 'Ortelius', 'correct': true},
        {'text': 'Waldseemüller', 'correct': false},
      ],
    },
    {
      'questionText': 'What does GPS stand for in the context of navigation and mapping?',
      'answers': [
        {'text': 'Global Positioning System', 'correct': true},
        {'text': 'Geographic Positioning System', 'correct': false},
        {'text': 'Global Positional Satellite', 'correct': false},
        {'text': 'Geographic Positioning Satellite', 'correct': false},
      ],
    },
    {
      'questionText': 'Which map projection is often used for navigation because it maintains accurate compass bearings?',
      'answers': [
        {'text': 'Mercator', 'correct': true},
        {'text': 'Robinson', 'correct': false},
        {'text': 'Gall-Peters', 'correct': false},
        {'text': 'Azimuthal Equidistant', 'correct': false},
      ],
    },
    {
      'questionText': 'Which map type uses shading and colors to represent different categories or quantities of data?',
      'answers': [
        {'text': 'Choropleth Map', 'correct': true},
        {'text': 'Dot Distribution Map', 'correct': false},
        {'text': 'Isoline Map', 'correct': false},
        {'text': 'Cartogram', 'correct': false},
      ],
    },
    {
      'questionText': 'What is the term for the scientific measurement of the Earth\'s shape, size, and gravitational field?',
      'answers': [
        {'text': 'Geodesy', 'correct': true},
        {'text': 'Cartometry', 'correct': false},
        {'text': 'Geography', 'correct': false},
        {'text': 'Topography', 'correct': false},
      ],
    },
    {
      'questionText': 'Which map projection is useful for showing flight paths between continents?',
      'answers': [
        {'text': 'Gall-Peters', 'correct': false},
        {'text': 'Winkel Tripel', 'correct': false},
        {'text': 'Azimuthal Equidistant', 'correct': true},
        {'text': 'Mollweide', 'correct': false},
      ],
    },
    {
      'questionText': 'Who is credited with creating the first modern atlas in 1570?',
      'answers': [
        {'text': 'Abraham Ortelius', 'correct': true},
        {'text': 'Ptolemy', 'correct': false},
        {'text': 'Mercator', 'correct': false},
        {'text': 'Waldseemüller', 'correct': false},
      ],
    },
    {
      'questionText': 'Which map projection is often used to display the world\'s continents without distortion in shape or size?',
      'answers': [
        {'text': 'Gall-Peters', 'correct': false},
        {'text': 'Robinson', 'correct': false},
        {'text': 'Equirectangular', 'correct': true},
        {'text': 'Azimuthal Equidistant', 'correct': false},
      ],
    },
    {
      'questionText': 'Which type of map focuses on representing the spatial distribution of phenomena across a region?',
      'answers': [
        {'text': 'Thematic Map', 'correct': true},
        {'text': 'Topographic Map', 'correct': false},
        {'text': 'Cadastral Map', 'correct': false},
        {'text': 'Political Map', 'correct': false},
      ],
    },
    {
      'questionText': 'Which famous map created in 1569 became the standard map projection for nautical purposes?',
      'answers': [
        {'text': 'Mercator', 'correct': true},
        {'text': 'Robinson', 'correct': false},
        {'text': 'Goode\'s Homolosine', 'correct': false},
        {'text': 'Azimuthal Equidistant', 'correct': false},
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
        title: Text('Cartography Quiz'),
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
        title: Text('Cartography Quiz'),
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
