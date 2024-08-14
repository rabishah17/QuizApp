import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: ComedyMoviesQuizPage(),
  ));
}

class ComedyMoviesQuizPage extends StatelessWidget {
  final List<Map<String, Object>> _questions = const [
    {
      'questionText': 'Who directed the comedy film "Anchorman: The Legend of Ron Burgundy"?',
      'answers': [
        {'text': 'Judd Apatow', 'correct': false},
        {'text': 'Adam McKay', 'correct': true},
        {'text': 'Paul Feig', 'correct': false},
        {'text': 'Seth Rogen', 'correct': false},
      ],
    },
    {
      'questionText': 'Which actor starred as "Ace Ventura: Pet Detective" in the comedy film series?',
      'answers': [
        {'text': 'Adam Sandler', 'correct': false},
        {'text': 'Jim Carrey', 'correct': true},
        {'text': 'Mike Myers', 'correct': false},
        {'text': 'Ben Stiller', 'correct': false},
      ],
    },
    {
      'questionText': 'In the movie "Superbad," which actor played the character Seth?',
      'answers': [
        {'text': 'Michael Cera', 'correct': true},
        {'text': 'Jonah Hill', 'correct': false},
        {'text': 'Seth Rogen', 'correct': false},
        {'text': 'James Franco', 'correct': false},
      ],
    },
    {
      'questionText': 'Who directed the comedy film "The Hangover"?',
      'answers': [
        {'text': 'Todd Phillips', 'correct': true},
        {'text': 'Seth MacFarlane', 'correct': false},
        {'text': 'Judd Apatow', 'correct': false},
        {'text': 'Ben Stiller', 'correct': false},
      ],
    },
    {
      'questionText': 'Which comedy film features the character "Lloyd Christmas"?',
      'answers': [
        {'text': 'Dumb and Dumber', 'correct': true},
        {'text': 'The Cable Guy', 'correct': false},
        {'text': 'Liar Liar', 'correct': false},
        {'text': 'Ace Ventura: When Nature Calls', 'correct': false},
      ],
    },
    {
      'questionText': 'Who played the character "Nacho Libre" in the comedy film of the same name?',
      'answers': [
        {'text': 'Seth Rogen', 'correct': false},
        {'text': 'Jack Black', 'correct': true},
        {'text': 'Ben Stiller', 'correct': false},
        {'text': 'Will Ferrell', 'correct': false},
      ],
    },
    {
      'questionText': 'Which comedy film features the character "Dewey Finn" as a substitute teacher?',
      'answers': [
        {'text': 'School of Rock', 'correct': true},
        {'text': 'Bad Teacher', 'correct': false},
        {'text': 'Sister Act 2: Back in the Habit', 'correct': false},
        {'text': 'Dead Poets Society', 'correct': false},
      ],
    },
    {
      'questionText': 'Who directed the comedy film "Bridesmaids"?',
      'answers': [
        {'text': 'Paul Feig', 'correct': true},
        {'text': 'Judd Apatow', 'correct': false},
        {'text': 'Adam McKay', 'correct': false},
        {'text': 'Todd Phillips', 'correct': false},
      ],
    },
    {
      'questionText': 'Which actor starred in the comedy film "The Mask" as Stanley Ipkiss?',
      'answers': [
        {'text': 'Jim Carrey', 'correct': true},
        {'text': 'Mike Myers', 'correct': false},
        {'text': 'Eddie Murphy', 'correct': false},
        {'text': 'Ben Stiller', 'correct': false},
      ],
    },
    {
      'questionText': 'In the comedy film "Step Brothers," who played the character Brennan?',
      'answers': [
        {'text': 'Seth Rogen', 'correct': false},
        {'text': 'Will Ferrell', 'correct': true},
        {'text': 'Jonah Hill', 'correct': false},
        {'text': 'Steve Carell', 'correct': false},
      ],
    },
    {
      'questionText': 'Who starred as "Austin Powers" in the comedy film series?',
      'answers': [
        {'text': 'Will Ferrell', 'correct': false},
        {'text': 'Mike Myers', 'correct': true},
        {'text': 'Jim Carrey', 'correct': false},
        {'text': 'Ben Stiller', 'correct': false},
      ],
    },
    {
      'questionText': 'Which comedy film features the character "Ron Burgundy" as a news anchor?',
      'answers': [
        {'text': 'Bruce Almighty', 'correct': false},
        {'text': 'Anchorman: The Legend of Ron Burgundy', 'correct': true},
        {'text': 'The 40-Year-Old Virgin', 'correct': false},
        {'text': 'Talladega Nights: The Ballad of Ricky Bobby', 'correct': false},
      ],
    },
    {
      'questionText': 'Who directed the comedy film "Zoolander"?',
      'answers': [
        {'text': 'Adam McKay', 'correct': false},
        {'text': 'Judd Apatow', 'correct': false},
        {'text': 'Ben Stiller', 'correct': false},
        {'text': 'Ben Stiller', 'correct': true},
      ],
    },
    {
      'questionText': 'Which comedy film features the character "Borat Sagdiyev"?',
      'answers': [
        {'text': 'Bruno', 'correct': false},
        {'text': 'Anchorman: The Legend of Ron Burgundy', 'correct': false},
        {'text': 'Borat: Cultural Learnings of America for Make Benefit Glorious Nation of Kazakhstan', 'correct': true},
        {'text': 'This Is Spinal Tap', 'correct': false},
      ],
    },
    {
      'questionText': 'Who played the character "Happy Gilmore" in the comedy film of the same name?',
      'answers': [
        {'text': 'Adam Sandler', 'correct': true},
        {'text': 'Jim Carrey', 'correct': false},
        {'text': 'Ben Stiller', 'correct': false},
        {'text': 'Will Ferrell', 'correct': false},
      ],
    },
    {
      'questionText': 'Which comedy film features the characters "Harold Lee" and "Kumar Patel"?',
      'answers': [
        {'text': 'Dude, Where\'s My Car?', 'correct': false},
        {'text': 'Superbad', 'correct': false},
        {'text': 'Harold & Kumar Go to White Castle', 'correct': true},
        {'text': 'Pineapple Express', 'correct': false},
      ],
    },
    {
      'questionText': 'Who directed the comedy film "Dumb and Dumber"?',
      'answers': [
        {'text': 'Adam McKay', 'correct': false},
        {'text': 'Bobby Farrelly and Peter Farrelly', 'correct': true},
        {'text': 'Judd Apatow', 'correct': false},
        {'text': 'David Zucker', 'correct': false},
      ],
    },
    {
      'questionText': 'Which actor starred as "Billy Madison" in the comedy film of the same name?',
      'answers': [
        {'text': 'Adam Sandler', 'correct': true},
        {'text': 'Jim Carrey', 'correct': false},
        {'text': 'Will Ferrell', 'correct': false},
        {'text': 'Mike Myers', 'correct': false},
      ],
    },
    {
      'questionText': 'Who played the character "Ricky Bobby" in the comedy film "Talladega Nights: The Ballad of Ricky Bobby"?',
      'answers': [
        {'text': 'Jim Carrey', 'correct': false},
        {'text': 'Adam Sandler', 'correct': false},
        {'text': 'Will Ferrell', 'correct': true},
        {'text': 'Ben Stiller', 'correct': false},
      ],
    },
    {
      'questionText': 'Which comedy film features the characters "Wayne Campbell" and "Garth Algar"?',
      'answers': [
        {'text': 'Tommy Boy', 'correct': false},
        {'text': 'Airplane!', 'correct': false},
        {'text': 'Wayne\'s World', 'correct': true},
        {'text': 'Planes, Trains & Automobiles', 'correct': false},
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
        title: Text('Comedy Movies Quiz'),
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
        title: Text('Comedy Movies Quiz'),
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
