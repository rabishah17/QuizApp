import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: EnvironmentalScienceQuizPage(),
  ));
}

class EnvironmentalScienceQuizPage extends StatelessWidget {
  final List<Map<String, Object>> _questions = const [
    {
      'questionText': 'Which gas is primarily responsible for global warming?',
      'answers': [
        {'text': 'Carbon Dioxide', 'correct': true},
        {'text': 'Oxygen', 'correct': false},
        {'text': 'Nitrogen', 'correct': false},
        {'text': 'Methane', 'correct': false},
      ],
    },
    {
      'questionText': 'What is the main cause of ozone layer depletion?',
      'answers': [
        {'text': 'Chlorofluorocarbons (CFCs)', 'correct': true},
        {'text': 'Carbon Dioxide', 'correct': false},
        {'text': 'Nitrogen Oxides', 'correct': false},
        {'text': 'Sulfur Dioxide', 'correct': false},
      ],
    },
    {
      'questionText': 'Which of the following is a renewable energy source?',
      'answers': [
        {'text': 'Wind', 'correct': true},
        {'text': 'Coal', 'correct': false},
        {'text': 'Natural Gas', 'correct': false},
        {'text': 'Nuclear', 'correct': false},
      ],
    },
    {
      'questionText': 'What is the term for the process of converting waste materials into reusable materials?',
      'answers': [
        {'text': 'Recycling', 'correct': true},
        {'text': 'Incineration', 'correct': false},
        {'text': 'Landfilling', 'correct': false},
        {'text': 'Composting', 'correct': false},
      ],
    },
    {
      'questionText': 'Which greenhouse gas is produced by agricultural activities?',
      'answers': [
        {'text': 'Methane', 'correct': true},
        {'text': 'Carbon Dioxide', 'correct': false},
        {'text': 'Nitrous Oxide', 'correct': false},
        {'text': 'Ozone', 'correct': false},
      ],
    },
    {
      'questionText': 'What is the term for the loss of topsoil due to water or wind erosion?',
      'answers': [
        {'text': 'Desertification', 'correct': true},
        {'text': 'Deforestation', 'correct': false},
        {'text': 'Erosion', 'correct': false},
        {'text': 'Salinization', 'correct': false},
      ],
    },
    {
      'questionText': 'Which environmental law regulates the release of pollutants into the air?',
      'answers': [
        {'text': 'Clean Air Act', 'correct': true},
        {'text': 'Endangered Species Act', 'correct': false},
        {'text': 'Clean Water Act', 'correct': false},
        {'text': 'National Environmental Policy Act', 'correct': false},
      ],
    },
    {
      'questionText': 'What is the term for the increase in Earth\'s average temperature due to human activities?',
      'answers': [
        {'text': 'Global Warming', 'correct': true},
        {'text': 'Climate Change', 'correct': false},
        {'text': 'Ozone Depletion', 'correct': false},
        {'text': 'Greenhouse Effect', 'correct': false},
      ],
    },
    {
      'questionText': 'Which of the following is a non-point source of water pollution?',
      'answers': [
        {'text': 'Runoff from agricultural fields', 'correct': true},
        {'text': 'Wastewater treatment plants', 'correct': false},
        {'text': 'Industrial discharge pipes', 'correct': false},
        {'text': 'Oil spills', 'correct': false},
      ],
    },
    {
      'questionText': 'What is the term for the process of converting sunlight into electricity using solar panels?',
      'answers': [
        {'text': 'Photovoltaics', 'correct': true},
        {'text': 'Geothermal Energy', 'correct': false},
        {'text': 'Hydropower', 'correct': false},
        {'text': 'Biomass Energy', 'correct': false},
      ],
    },
    {
      'questionText': 'Which of the following is an example of a sustainable agricultural practice?',
      'answers': [
        {'text': 'Crop rotation', 'correct': true},
        {'text': 'Clear-cutting forests', 'correct': false},
        {'text': 'Overgrazing', 'correct': false},
        {'text': 'Monoculture farming', 'correct': false},
      ],
    },
    {
      'questionText': 'What is the term for the process of converting organic waste into fertilizer?',
      'answers': [
        {'text': 'Composting', 'correct': true},
        {'text': 'Incineration', 'correct': false},
        {'text': 'Landfilling', 'correct': false},
        {'text': 'Recycling', 'correct': false},
      ],
    },
    {
      'questionText': 'Which of the following is a primary source of indoor air pollution?',
      'answers': [
        {'text': 'Tobacco smoke', 'correct': true},
        {'text': 'Industrial emissions', 'correct': false},
        {'text': 'Vehicle exhaust', 'correct': false},
        {'text': 'Agricultural pesticides', 'correct': false},
      ],
    },
    {
      'questionText': 'What is the term for the intentional release of harmful organisms to control pests?',
      'answers': [
        {'text': 'Biological pest control', 'correct': true},
        {'text': 'Chemical pest control', 'correct': false},
        {'text': 'Integrated pest management', 'correct': false},
        {'text': 'Natural pest control', 'correct': false},
      ],
    },
    {
      'questionText': 'Which of the following is a consequence of deforestation?',
      'answers': [
        {'text': 'Loss of biodiversity', 'correct': true},
        {'text': 'Increase in wildlife habitat', 'correct': false},
        {'text': 'Reduction in greenhouse gases', 'correct': false},
        {'text': 'Improvement in soil fertility', 'correct': false},
      ],
    },
    {
      'questionText': 'What is the term for the gradual increase in the acidity of ocean water?',
      'answers': [
        {'text': 'Ocean Acidification', 'correct': true},
        {'text': 'Marine Pollution', 'correct': false},
        {'text': 'Coral Bleaching', 'correct': false},
        {'text': 'Eutrophication', 'correct': false},
      ],
    },
    {
      'questionText': 'Which of the following is an example of a renewable resource?',
      'answers': [
        {'text': 'Wind', 'correct': true},
        {'text': 'Coal', 'correct': false},
        {'text': 'Natural Gas', 'correct': false},
        {'text': 'Petroleum', 'correct': false},
      ],
    },
    {
      'questionText': 'What is the term for the introduction of harmful substances or products into the environment?',
      'answers': [
        {'text': 'Pollution', 'correct': true},
        {'text': 'Climate Change', 'correct': false},
        {'text': 'Erosion', 'correct': false},
        {'text': 'Recycling', 'correct': false},
      ],
    },
    {
      'questionText': 'Which of the following is a consequence of overfishing?',
      'answers': [
        {'text': 'Decline in fish populations', 'correct': true},
        {'text': 'Increase in marine biodiversity', 'correct': false},
        {'text': 'Improvement in ecosystem balance', 'correct': false},
        {'text': 'Enhanced coral reef health', 'correct': false},
      ],
    },
    {
      'questionText': 'What is the term for the preservation and sustainable use of natural resources?',
      'answers': [
        {'text': 'Conservation', 'correct': true},
        {'text': 'Deforestation', 'correct': false},
        {'text': 'Urbanization', 'correct': false},
        {'text': 'Erosion', 'correct': false},
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
        title: Text('Environmental Science Quiz'),
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
              child: Text('Back to Environmental Science'),
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
        title: Text('Environmental Science Quiz'),
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
