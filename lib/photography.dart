import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: PhotographyQuizPage(),
  ));
}

class PhotographyQuizPage extends StatelessWidget {
  final List<Map<String, Object>> _questions = const [
    {
      'questionText': 'Who invented the first practical photographic process?',
      'answers': [
        {'text': 'Louis Daguerre', 'correct': true},
        {'text': 'George Eastman', 'correct': false},
        {'text': 'Ansel Adams', 'correct': false},
        {'text': 'Alfred Stieglitz', 'correct': false},
      ],
    },
    {
      'questionText': 'Which camera brand introduced the first digital camera?',
      'answers': [
        {'text': 'Kodak', 'correct': false},
        {'text': 'Canon', 'correct': false},
        {'text': 'Nikon', 'correct': false},
        {'text': 'Fujifilm', 'correct': true},
      ],
    },
    {
      'questionText': 'Which photographer is known for his iconic "Afghan Girl" portrait?',
      'answers': [
        {'text': 'Steve McCurry', 'correct': true},
        {'text': 'Richard Avedon', 'correct': false},
        {'text': 'Henri Cartier-Bresson', 'correct': false},
        {'text': 'Annie Leibovitz', 'correct': false},
      ],
    },
    {
      'questionText': 'What does the term "aperture" refer to in photography?',
      'answers': [
        {'text': 'Lens focus distance', 'correct': false},
        {'text': 'Shutter speed', 'correct': false},
        {'text': 'Lens opening size', 'correct': true},
        {'text': 'ISO sensitivity', 'correct': false},
      ],
    },
    {
      'questionText': 'Which of these is not a photography composition rule?',
      'answers': [
        {'text': 'Rule of Thirds', 'correct': false},
        {'text': 'Golden Ratio', 'correct': false},
        {'text': 'Light and Shadow', 'correct': true},
        {'text': 'Leading Lines', 'correct': false},
      ],
    },
    {
      'questionText': 'What does the abbreviation DSLR stand for?',
      'answers': [
        {'text': 'Digital Single Lens Reflex', 'correct': true},
        {'text': 'Digital Sensor for Lens Reflection', 'correct': false},
        {'text': 'Dual Shutter Lens Reflection', 'correct': false},
        {'text': 'Direct Sensor Light Rendering', 'correct': false},
      ],
    },
    {
      'questionText': 'Which type of lens would be best for capturing distant subjects?',
      'answers': [
        {'text': 'Macro Lens', 'correct': false},
        {'text': 'Wide-angle Lens', 'correct': false},
        {'text': 'Telephoto Lens', 'correct': true},
        {'text': 'Prime Lens', 'correct': false},
      ],
    },
    {
      'questionText': 'Which photographer is known for his surrealistic photographic artworks?',
      'answers': [
        {'text': 'Man Ray', 'correct': true},
        {'text': 'Dorothea Lange', 'correct': false},
        {'text': 'Sebastião Salgado', 'correct': false},
        {'text': 'Robert Capa', 'correct': false},
      ],
    },
    {
      'questionText': 'What does the term "bokeh" refer to in photography?',
      'answers': [
        {'text': 'Lens distortion', 'correct': false},
        {'text': 'Depth of field', 'correct': false},
        {'text': 'Blurry background', 'correct': true},
        {'text': 'Long exposure effect', 'correct': false},
      ],
    },
    {
      'questionText': 'Which camera setting controls the duration of light entering the camera?',
      'answers': [
        {'text': 'ISO', 'correct': false},
        {'text': 'Aperture', 'correct': false},
        {'text': 'Shutter Speed', 'correct': true},
        {'text': 'White Balance', 'correct': false},
      ],
    },
    {
      'questionText': 'Who is known as the father of modern photojournalism?',
      'answers': [
        {'text': 'Henri Cartier-Bresson', 'correct': true},
        {'text': 'Ansel Adams', 'correct': false},
        {'text': 'Diane Arbus', 'correct': false},
        {'text': 'Helmut Newton', 'correct': false},
      ],
    },
    {
      'questionText': 'What is the purpose of a polarizing filter in photography?',
      'answers': [
        {'text': 'Reduce noise', 'correct': false},
        {'text': 'Increase sharpness', 'correct': false},
        {'text': 'Enhance colors and contrast', 'correct': true},
        {'text': 'Add vignetting', 'correct': false},
      ],
    },
    {
      'questionText': 'Which photographer is known for his black and white portraits of celebrities?',
      'answers': [
        {'text': 'Richard Avedon', 'correct': true},
        {'text': 'Irving Penn', 'correct': false},
        {'text': 'Annie Leibovitz', 'correct': false},
        {'text': 'Cindy Sherman', 'correct': false},
      ],
    },
    {
      'questionText': 'What is the term for the technique of combining multiple images with different exposures?',
      'answers': [
        {'text': 'Panorama', 'correct': false},
        {'text': 'Bracketing', 'correct': true},
        {'text': 'HDR', 'correct': false},
        {'text': 'Bokeh', 'correct': false},
      ],
    },
    {
      'questionText': 'Which camera mode allows full control over aperture, shutter speed, and ISO?',
      'answers': [
        {'text': 'Auto Mode', 'correct': false},
        {'text': 'Program Mode', 'correct': false},
        {'text': 'Manual Mode', 'correct': true},
        {'text': 'Shutter Priority Mode', 'correct': false},
      ],
    },
    {
      'questionText': 'Who is known for his series of photographs capturing New York City street scenes?',
      'answers': [
        {'text': 'Garry Winogrand', 'correct': true},
        {'text': 'Annie Leibovitz', 'correct': false},
        {'text': 'Sebastião Salgado', 'correct': false},
        {'text': 'Robert Capa', 'correct': false},
      ],
    },
    {
      'questionText': 'Which camera feature allows adjusting the sensitivity to light?',
      'answers': [
        {'text': 'Aperture', 'correct': false},
        {'text': 'Shutter Speed', 'correct': false},
        {'text': 'ISO', 'correct': true},
        {'text': 'White Balance', 'correct': false},
      ],
    },
    {
      'questionText': 'Which lens type is preferred for portraits due to its flattering perspective?',
      'answers': [
        {'text': 'Wide-angle Lens', 'correct': false},
        {'text': 'Telephoto Lens', 'correct': false},
        {'text': 'Prime Lens', 'correct': true},
        {'text': 'Macro Lens', 'correct': false},
      ],
    },
    {
      'questionText': 'What is the term for the phenomenon where small points of light become star-shaped in photographs?',
      'answers': [
        {'text': 'Bokeh', 'correct': false},
        {'text': 'Vignetting', 'correct': false},
        {'text': 'Flare', 'correct': false},
        {'text': 'Diffraction', 'correct': true},
      ],
    },
    {
      'questionText': 'Which photographer is known for his series "The Americans"?',
      'answers': [
        {'text': 'Robert Frank', 'correct': true},
        {'text': 'Diane Arbus', 'correct': false},
        {'text': 'Lee Friedlander', 'correct': false},
        {'text': 'Henri Cartier-Bresson', 'correct': false},
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
        title: Text('Photography Quiz'),
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
