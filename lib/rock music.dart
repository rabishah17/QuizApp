import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: RockMusicQuizPage(),
  ));
}

class RockMusicQuizPage extends StatelessWidget {
  final List<Map<String, Object>> _questions = const [
    {
      'questionText': 'Which band released the album "The Dark Side of the Moon"?',
      'answers': [
        {'text': 'Pink Floyd', 'correct': true},
        {'text': 'Led Zeppelin', 'correct': false},
        {'text': 'The Beatles', 'correct': false},
        {'text': 'Queen', 'correct': false},
      ],
    },
    {
      'questionText': 'Who is the lead singer of The Rolling Stones?',
      'answers': [
        {'text': 'Mick Jagger', 'correct': true},
        {'text': 'Robert Plant', 'correct': false},
        {'text': 'Roger Daltrey', 'correct': false},
        {'text': 'Freddie Mercury', 'correct': false},
      ],
    },
    {
      'questionText': 'Which band released the song "Stairway to Heaven"?',
      'answers': [
        {'text': 'Led Zeppelin', 'correct': true},
        {'text': 'The Who', 'correct': false},
        {'text': 'Pink Floyd', 'correct': false},
        {'text': 'The Doors', 'correct': false},
      ],
    },
    {
      'questionText': 'Who was the guitarist for the band Nirvana?',
      'answers': [
        {'text': 'Kurt Cobain', 'correct': false},
        {'text': 'Krist Novoselic', 'correct': false},
        {'text': 'Pat Smear', 'correct': false},
        {'text': 'Dave Grohl', 'correct': true},
      ],
    },
    {
      'questionText': 'Which band sang "Bohemian Rhapsody"?',
      'answers': [
        {'text': 'Queen', 'correct': true},
        {'text': 'The Beatles', 'correct': false},
        {'text': 'Led Zeppelin', 'correct': false},
        {'text': 'Pink Floyd', 'correct': false},
      ],
    },
    {
      'questionText': 'Who was the lead guitarist for the band Guns N\' Roses?',
      'answers': [
        {'text': 'Slash', 'correct': true},
        {'text': 'Joe Perry', 'correct': false},
        {'text': 'Jimmy Page', 'correct': false},
        {'text': 'Keith Richards', 'correct': false},
      ],
    },
    {
      'questionText': 'Which band released the album "Back in Black"?',
      'answers': [
        {'text': 'AC/DC', 'correct': true},
        {'text': 'Metallica', 'correct': false},
        {'text': 'Iron Maiden', 'correct': false},
        {'text': 'Def Leppard', 'correct': false},
      ],
    },
    {
      'questionText': 'Who sang the song "Smells Like Teen Spirit"?',
      'answers': [
        {'text': 'Nirvana', 'correct': true},
        {'text': 'Pearl Jam', 'correct': false},
        {'text': 'Soundgarden', 'correct': false},
        {'text': 'Alice in Chains', 'correct': false},
      ],
    },
    {
      'questionText': 'Which band released the album "Rumours"?',
      'answers': [
        {'text': 'Fleetwood Mac', 'correct': true},
        {'text': 'The Eagles', 'correct': false},
        {'text': 'The Rolling Stones', 'correct': false},
        {'text': 'The Beach Boys', 'correct': false},
      ],
    },
    {
      'questionText': 'Who is the lead singer of Aerosmith?',
      'answers': [
        {'text': 'Steven Tyler', 'correct': true},
        {'text': 'Bon Scott', 'correct': false},
        {'text': 'Rob Halford', 'correct': false},
        {'text': 'David Lee Roth', 'correct': false},
      ],
    },
    {
      'questionText': 'Which band released the song "Sweet Child O\' Mine"?',
      'answers': [
        {'text': 'Guns N\' Roses', 'correct': true},
        {'text': 'Motley Crue', 'correct': false},
        {'text': 'Van Halen', 'correct': false},
        {'text': 'Whitesnake', 'correct': false},
      ],
    },
    {
      'questionText': 'Who was the lead vocalist of the band The Doors?',
      'answers': [
        {'text': 'Jim Morrison', 'correct': true},
        {'text': 'Roger Waters', 'correct': false},
        {'text': 'John Lennon', 'correct': false},
        {'text': 'Mick Jagger', 'correct': false},
      ],
    },
    {
      'questionText': 'Which band released the album "Abbey Road"?',
      'answers': [
        {'text': 'The Beatles', 'correct': true},
        {'text': 'The Rolling Stones', 'correct': false},
        {'text': 'Led Zeppelin', 'correct': false},
        {'text': 'The Who', 'correct': false},
      ],
    },
    {
      'questionText': 'Who was the guitarist for the band Pink Floyd?',
      'answers': [
        {'text': 'David Gilmour', 'correct': true},
        {'text': 'Roger Waters', 'correct': false},
        {'text': 'Jimmy Page', 'correct': false},
        {'text': 'Brian May', 'correct': false},
      ],
    },
    {
      'questionText': 'Which band released the song "Hotel California"?',
      'answers': [
        {'text': 'The Eagles', 'correct': true},
        {'text': 'Fleetwood Mac', 'correct': false},
        {'text': 'The Beach Boys', 'correct': false},
        {'text': 'Lynyrd Skynyrd', 'correct': false},
      ],
    },
    {
      'questionText': 'Who was the drummer for the band The Who?',
      'answers': [
        {'text': 'Keith Moon', 'correct': true},
        {'text': 'John Bonham', 'correct': false},
        {'text': 'Ringo Starr', 'correct': false},
        {'text': 'Charlie Watts', 'correct': false},
      ],
    },
    {
      'questionText': 'Which band released the album "Nevermind"?',
      'answers': [
        {'text': 'Nirvana', 'correct': true},
        {'text': 'Pearl Jam', 'correct': false},
        {'text': 'Soundgarden', 'correct': false},
        {'text': 'Alice in Chains', 'correct': false},
      ],
    },
    {
      'questionText': 'Who is the lead vocalist of Queen?',
      'answers': [
        {'text': 'Freddie Mercury', 'correct': true},
        {'text': 'David Bowie', 'correct': false},
        {'text': 'Brian May', 'correct': false},
        {'text': 'Robert Plant', 'correct': false},
      ],
    },
    {
      'questionText': 'Which band released the song "Thunderstruck"?',
      'answers': [
        {'text': 'AC/DC', 'correct': true},
        {'text': 'Guns N\' Roses', 'correct': false},
        {'text': 'Metallica', 'correct': false},
        {'text': 'Def Leppard', 'correct': false},
      ],
    },
    {
      'questionText': 'Who was the bassist for the band Led Zeppelin?',
      'answers': [
        {'text': 'John Paul Jones', 'correct': true},
        {'text': 'Roger Waters', 'correct': false},
        {'text': 'John Entwistle', 'correct': false},
        {'text': 'Geddy Lee', 'correct': false},
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
        title: Text('Rock Music Quiz'),
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
        title: Text('Rock Music Quiz'),
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
