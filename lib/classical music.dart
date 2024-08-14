import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: ClassicalMusicQuizPage(),
  ));
}

class ClassicalMusicQuizPage extends StatelessWidget {
  final List<Map<String, Object>> _questions = const [
    {
      'questionText': 'Who composed the famous symphony "Symphony No. 9 in D minor, Op. 125"?',
      'answers': [
        {'text': 'Johannes Brahms', 'correct': false},
        {'text': 'Ludwig van Beethoven', 'correct': true},
        {'text': 'Wolfgang Amadeus Mozart', 'correct': false},
        {'text': 'Franz Schubert', 'correct': false},
      ],
    },
    {
      'questionText': 'Which composer wrote "The Four Seasons"?',
      'answers': [
        {'text': 'Antonio Vivaldi', 'correct': true},
        {'text': 'Johann Sebastian Bach', 'correct': false},
        {'text': 'George Frideric Handel', 'correct': false},
        {'text': 'Claudio Monteverdi', 'correct': false},
      ],
    },
    {
      'questionText': 'Which composer is known for "Moonlight Sonata"?',
      'answers': [
        {'text': 'Franz Liszt', 'correct': false},
        {'text': 'Felix Mendelssohn', 'correct': false},
        {'text': 'Ludwig van Beethoven', 'correct': true},
        {'text': 'Frederic Chopin', 'correct': false},
      ],
    },
    {
      'questionText': 'Who composed "The Marriage of Figaro"?',
      'answers': [
        {'text': 'Giuseppe Verdi', 'correct': false},
        {'text': 'Richard Wagner', 'correct': false},
        {'text': 'Wolfgang Amadeus Mozart', 'correct': true},
        {'text': 'Gioachino Rossini', 'correct': false},
      ],
    },
    {
      'questionText': 'Which composer wrote the "Messiah" oratorio?',
      'answers': [
        {'text': 'Anton Bruckner', 'correct': false},
        {'text': 'Gustav Mahler', 'correct': false},
        {'text': 'George Frideric Handel', 'correct': true},
        {'text': 'Antonín Dvořák', 'correct': false},
      ],
    },
    {
      'questionText': 'Who composed "The Magic Flute"?',
      'answers': [
        {'text': 'Ludwig van Beethoven', 'correct': false},
        {'text': 'Wolfgang Amadeus Mozart', 'correct': true},
        {'text': 'Gioachino Rossini', 'correct': false},
        {'text': 'Richard Wagner', 'correct': false},
      ],
    },
    {
      'questionText': 'Which composer is known for the "Brandenburg Concertos"?',
      'answers': [
        {'text': 'Antonio Vivaldi', 'correct': false},
        {'text': 'Johann Sebastian Bach', 'correct': true},
        {'text': 'George Frideric Handel', 'correct': false},
        {'text': 'Arcangelo Corelli', 'correct': false},
      ],
    },
    {
      'questionText': 'Who composed "Carmen"?',
      'answers': [
        {'text': 'Hector Berlioz', 'correct': false},
        {'text': 'Jacques Offenbach', 'correct': false},
        {'text': 'Georges Bizet', 'correct': true},
        {'text': 'Camille Saint-Saëns', 'correct': false},
      ],
    },
    {
      'questionText': 'Which composer wrote the "St. Matthew Passion"?',
      'answers': [
        {'text': 'Anton Bruckner', 'correct': false},
        {'text': 'Johann Sebastian Bach', 'correct': true},
        {'text': 'Georg Philipp Telemann', 'correct': false},
        {'text': 'Domenico Scarlatti', 'correct': false},
      ],
    },
    {
      'questionText': 'Who composed "The Nutcracker"?',
      'answers': [
        {'text': 'Pyotr Ilyich Tchaikovsky', 'correct': true},
        {'text': 'Igor Stravinsky', 'correct': false},
        {'text': 'Sergei Prokofiev', 'correct': false},
        {'text': 'Dmitri Shostakovich', 'correct': false},
      ],
    },
    {
      'questionText': 'Which composer is known for the opera "La Traviata"?',
      'answers': [
        {'text': 'Giuseppe Verdi', 'correct': true},
        {'text': 'Giacomo Puccini', 'correct': false},
        {'text': 'Gaetano Donizetti', 'correct': false},
        {'text': 'Gioachino Rossini', 'correct': false},
      ],
    },
    {
      'questionText': 'Who composed "Ride of the Valkyries"?',
      'answers': [
        {'text': 'Richard Strauss', 'correct': false},
        {'text': 'Richard Wagner', 'correct': true},
        {'text': 'Anton Bruckner', 'correct': false},
        {'text': 'Franz Liszt', 'correct': false},
      ],
    },
    {
      'questionText': 'Which composer is known for the "William Tell Overture"?',
      'answers': [
        {'text': 'Gioachino Rossini', 'correct': true},
        {'text': 'Giuseppe Verdi', 'correct': false},
        {'text': 'Jacques Offenbach', 'correct': false},
        {'text': 'Giacomo Puccini', 'correct': false},
      ],
    },
    {
      'questionText': 'Who composed "The Planets" suite?',
      'answers': [
        {'text': 'Gustav Holst', 'correct': true},
        {'text': 'Edward Elgar', 'correct': false},
        {'text': 'Benjamin Britten', 'correct': false},
        {'text': 'Ralph Vaughan Williams', 'correct': false},
      ],
    },
    {
      'questionText': 'Which composer wrote the "Symphony No. 5" in C minor, Op. 67?',
      'answers': [
        {'text': 'Ludwig van Beethoven', 'correct': true},
        {'text': 'Johannes Brahms', 'correct': false},
        {'text': 'Franz Schubert', 'correct': false},
        {'text': 'Franz Joseph Haydn', 'correct': false},
      ],
    },
    {
      'questionText': 'Who composed the opera "The Barber of Seville"?',
      'answers': [
        {'text': 'Giacomo Puccini', 'correct': false},
        {'text': 'Giuseppe Verdi', 'correct': false},
        {'text': 'Gioachino Rossini', 'correct': true},
        {'text': 'Vincenzo Bellini', 'correct': false},
      ],
    },
    {
      'questionText': 'Which composer is known for "Clair de Lune"?',
      'answers': [
        {'text': 'Erik Satie', 'correct': false},
        {'text': 'Claude Debussy', 'correct': true},
        {'text': 'Maurice Ravel', 'correct': false},
        {'text': 'Gabriel Fauré', 'correct': false},
      ],
    },
    {
      'questionText': 'Who composed "Symphony No. 6 in F major, Op. 68" ("Pastoral")?',
      'answers': [
        {'text': 'Franz Schubert', 'correct': false},
        {'text': 'Ludwig van Beethoven', 'correct': true},
        {'text': 'Johannes Brahms', 'correct': false},
        {'text': 'Antonín Dvořák', 'correct': false},
      ],
    },
    {
      'questionText': 'Which composer wrote "Canon in D"?',
      'answers': [
        {'text': 'Antonio Vivaldi', 'correct': false},
        {'text': 'Arcangelo Corelli', 'correct': false},
        {'text': 'Johann Pachelbel', 'correct': true},
        {'text': 'Tomaso Albinoni', 'correct': false},
      ],
    },
    {
      'questionText': 'Who composed "Symphony No. 9 in E minor, Op. 95" ("From the New World")?',
      'answers': [
        {'text': 'Antonín Dvořák', 'correct': true},
        {'text': 'Bedřich Smetana', 'correct': false},
        {'text': 'Leoš Janáček', 'correct': false},
        {'text': 'Pyotr Ilyich Tchaikovsky', 'correct': false},
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
        title: Text('Classical Music Quiz'),
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
        title: Text('Classical Music Quiz'),
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
