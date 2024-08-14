import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: ComputingQuizPage(),
  ));
}

class ComputingQuizPage extends StatelessWidget {
  final List<Map<String, Object>> _questions = const [
    {
      'questionText': 'What does HTML stand for?',
      'answers': [
        {'text': 'Hyper Text Markup Language', 'correct': true},
        {'text': 'Hyperlinks and Text Markup Language', 'correct': false},
        {'text': 'Home Tool Markup Language', 'correct': false},
        {'text': 'Hyper Tool Markup Language', 'correct': false},
      ],
    },
    {
      'questionText': 'Which programming language is known as a "low-level" language?',
      'answers': [
        {'text': 'Assembly', 'correct': true},
        {'text': 'Python', 'correct': false},
        {'text': 'Java', 'correct': false},
        {'text': 'C#', 'correct': false},
      ],
    },
    {
      'questionText': 'What is the primary function of a firewall in computing?',
      'answers': [
        {'text': 'To protect a network from unauthorized access', 'correct': true},
        {'text': 'To store large amounts of data', 'correct': false},
        {'text': 'To speed up internet connection', 'correct': false},
        {'text': 'To encrypt files', 'correct': false},
      ],
    },
    {
      'questionText': 'What does CPU stand for?',
      'answers': [
        {'text': 'Central Processing Unit', 'correct': true},
        {'text': 'Computer Personal Unit', 'correct': false},
        {'text': 'Central Personal Unit', 'correct': false},
        {'text': 'Computer Processing Unit', 'correct': false},
      ],
    },
    {
      'questionText': 'Which of the following is NOT a programming language?',
      'answers': [
        {'text': 'Adobe Photoshop', 'correct': true},
        {'text': 'Java', 'correct': false},
        {'text': 'C++', 'correct': false},
        {'text': 'Ruby', 'correct': false},
      ],
    },
    {
      'questionText': 'What is the process of finding errors and fixing them in a program?',
      'answers': [
        {'text': 'Debugging', 'correct': true},
        {'text': 'Compiling', 'correct': false},
        {'text': 'Executing', 'correct': false},
        {'text': 'Syntax Checking', 'correct': false},
      ],
    },
    {
      'questionText': 'Which company developed the Python programming language?',
      'answers': [
        {'text': 'Guido van Rossum', 'correct': true},
        {'text': 'Microsoft', 'correct': false},
        {'text': 'Apple', 'correct': false},
        {'text': 'Google', 'correct': false},
      ],
    },
    {
      'questionText': 'What does SQL stand for?',
      'answers': [
        {'text': 'Structured Query Language', 'correct': true},
        {'text': 'Simple Query Language', 'correct': false},
        {'text': 'Standardized Query Language', 'correct': false},
        {'text': 'Sequential Query Language', 'correct': false},
      ],
    },
    {
      'questionText': 'Which data structure operates on a "Last In, First Out" principle?',
      'answers': [
        {'text': 'Stack', 'correct': true},
        {'text': 'Queue', 'correct': false},
        {'text': 'Linked List', 'correct': false},
        {'text': 'Tree', 'correct': false},
      ],
    },
    {
      'questionText': 'What does HTTP stand for?',
      'answers': [
        {'text': 'Hypertext Transfer Protocol', 'correct': true},
        {'text': 'Hypertext Transmission Protocol', 'correct': false},
        {'text': 'Hypertext Transfer Process', 'correct': false},
        {'text': 'Hypertext Transmission Process', 'correct': false},
      ],
    },
    {
      'questionText': 'Which data structure stores elements in key-value pairs?',
      'answers': [
        {'text': 'Dictionary', 'correct': true},
        {'text': 'Array', 'correct': false},
        {'text': 'Set', 'correct': false},
        {'text': 'Queue', 'correct': false},
      ],
    },
    {
      'questionText': 'What is a LAN?',
      'answers': [
        {'text': 'Local Area Network', 'correct': true},
        {'text': 'Long Area Network', 'correct': false},
        {'text': 'Large Array Network', 'correct': false},
        {'text': 'Local Access Network', 'correct': false},
      ],
    },
    {
      'questionText': 'Which company developed the Java programming language?',
      'answers': [
        {'text': 'Sun Microsystems', 'correct': true},
        {'text': 'Microsoft', 'correct': false},
        {'text': 'Apple', 'correct': false},
        {'text': 'Google', 'correct': false},
      ],
    },
    {
      'questionText': 'What is the function of an operating system?',
      'answers': [
        {'text': 'To manage hardware and software resources', 'correct': true},
        {'text': 'To create graphical user interfaces', 'correct': false},
        {'text': 'To compile programming code', 'correct': false},
        {'text': 'To encrypt data', 'correct': false},
      ],
    },
    {
      'questionText': 'Which programming language is primarily used for statistical computing and graphics?',
      'answers': [
        {'text': 'R', 'correct': true},
        {'text': 'Swift', 'correct': false},
        {'text': 'Objective-C', 'correct': false},
        {'text': 'Perl', 'correct': false},
      ],
    },
    {
      'questionText': 'What is the name of the protocol used for sending and receiving emails?',
      'answers': [
        {'text': 'SMTP', 'correct': true},
        {'text': 'HTTP', 'correct': false},
        {'text': 'FTP', 'correct': false},
        {'text': 'TCP', 'correct': false},
      ],
    },
    {
      'questionText': 'Which programming language is used for building Android apps?',
      'answers': [
        {'text': 'Java', 'correct': true},
        {'text': 'Python', 'correct': false},
        {'text': 'Swift', 'correct': false},
        {'text': 'C++', 'correct': false},
      ],
    },
    {
      'questionText': 'What does VPN stand for?',
      'answers': [
        {'text': 'Virtual Private Network', 'correct': true},
        {'text': 'Very Personal Network', 'correct': false},
        {'text': 'Virtual Personal Network', 'correct': false},
        {'text': 'Verified Private Network', 'correct': false},
      ],
    },
    {
      'questionText': 'Which of the following is NOT a web browser?',
      'answers': [
        {'text': 'Linux', 'correct': true},
        {'text': 'Google Chrome', 'correct': false},
        {'text': 'Mozilla Firefox', 'correct': false},
        {'text': 'Microsoft Edge', 'correct': false},
      ],
    },
    {
      'questionText': 'What does GUI stand for?',
      'answers': [
        {'text': 'Graphical User Interface', 'correct': true},
        {'text': 'General User Interface', 'correct': false},
        {'text': 'Graphical Unit Interface', 'correct': false},
        {'text': 'General Unit Interface', 'correct': false},
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
        title: Text('Computing Quiz'),
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
              child: Text('Back to Computing'),
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
        title: Text('Computing Quiz'),
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
