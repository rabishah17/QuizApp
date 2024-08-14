import 'dart:async';
import 'package:flutter/material.dart';

class QuizPage extends StatefulWidget {
  final List<Map<String, Object>> questions;

  QuizPage(this.questions);

  @override
  _QuizPageState createState() => _QuizPageState();
}

class _QuizPageState extends State<QuizPage> {
  int _questionIndex = 0;
  int _totalScore = 0;
  Timer? _timer;
  int _timerDuration = 10; // Timer duration in seconds

  @override
  void initState() {
    super.initState();
    _startTimer();
  }

  @override
  void dispose() {
    _timer?.cancel();
    super.dispose();
  }

  void _startTimer() {
    _timer = Timer.periodic(Duration(seconds: 1), (timer) {
      setState(() {
        if (_timerDuration > 0) {
          _timerDuration--;
        } else {
          // Move to the next question when timer runs out
          _nextQuestion();
        }
      });
    });
  }

  void _answerQuestion(bool correct) {
    setState(() {
      _totalScore += correct ? 1 : 0;
      _timer?.cancel(); // Cancel the timer when an answer is selected
      _timerDuration = 10; // Reset timer duration for the next question
      Timer(Duration(seconds: 1), _nextQuestion); // Delay and move to the next question
    });
  }

  void _nextQuestion() {
    setState(() {
      if (_questionIndex < widget.questions.length - 1) {
        _questionIndex++;
        _startTimer(); // Start timer for the next question
      } else {
        // Navigate to the result screen if no more questions
        Navigator.of(context).pushReplacement(MaterialPageRoute(
          builder: (context) => Result(_totalScore, widget.questions.length),
        ));
      }
    });
  }

  void _goBack(BuildContext context) {
    Navigator.pop(context);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Drama Movies Quiz'),
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () => _goBack(context),
        ),
      ),
      body: _questionIndex < widget.questions.length
          ? Quiz(
        question: widget.questions[_questionIndex],
        answerQuestion: _answerQuestion,
        timerDuration: _timerDuration,
      )
          : Result(_totalScore, widget.questions.length),
    );
  }
}

class Quiz extends StatelessWidget {
  final Map<String, Object> question;
  final Function(bool) answerQuestion;
  final int timerDuration;

  Quiz({
    required this.question,
    required this.answerQuestion,
    required this.timerDuration,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Question(
          question['questionText'] as String,
        ),
        ...(question['answers'] as List<Map<String, Object>>).map((answer) {
          return Answer(
                () => answerQuestion(answer['correct'] as bool),
            answer['text'] as String,
          );
        }).toList(),
        SizedBox(height: 10),
        Text('Time left: $timerDuration seconds'),
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
      margin: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
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

void main() {
  runApp(MaterialApp(
    home: DramaMoviesQuizPage(),
  ));
}

class DramaMoviesQuizPage extends StatelessWidget {
  final List<Map<String, Object>> _questions = const [
    {
      'questionText': 'Who starred as the lead in the film "Forrest Gump"?',
      'answers': [
        {'text': 'Tom Hanks', 'correct': true},
        {'text': 'Robert De Niro', 'correct': false},
        {'text': 'Leonardo DiCaprio', 'correct': false},
        {'text': 'Brad Pitt', 'correct': false},
      ],
    },
    {
      'questionText': 'Which film features the famous quote, "Here\'s looking at you, kid"?',
      'answers': [
        {'text': 'Casablanca', 'correct': true},
        {'text': 'Gone with the Wind', 'correct': false},
        {'text': 'The Godfather', 'correct': false},
        {'text': 'Schindler\'s List', 'correct': false},
      ],
    },
    {
      'questionText': 'What film won the Best Picture Oscar in 1994?',
      'answers': [
        {'text': 'Forrest Gump', 'correct': true},
        {'text': 'Pulp Fiction', 'correct': false},
        {'text': 'The Shawshank Redemption', 'correct': false},
        {'text': 'The Lion King', 'correct': false},
      ],
    },
    {
      'questionText': 'Who directed the movie "The Shawshank Redemption"?',
      'answers': [
        {'text': 'Frank Darabont', 'correct': true},
        {'text': 'Steven Spielberg', 'correct': false},
        {'text': 'Martin Scorsese', 'correct': false},
        {'text': 'Quentin Tarantino', 'correct': false},
      ],
    },
    // Add more questions as needed
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
        title: Text('Drama Movies Quiz'),
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
              child: Text('Back to Movies'),
            ),
          ],
        ),
      ),
    );
  }
}
