import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: MobileTechQuizPage(),
  ));
}

class MobileTechQuizPage extends StatelessWidget {
  final List<Map<String, Object>> _questions = const [
    {
      'questionText': 'Which company developed the Android operating system?',
      'answers': [
        {'text': 'Google', 'correct': true},
        {'text': 'Apple', 'correct': false},
        {'text': 'Samsung', 'correct': false},
        {'text': 'Microsoft', 'correct': false},
      ],
    },
    {
      'questionText': 'What is the name of Apple\'s mobile operating system?',
      'answers': [
        {'text': 'iOS', 'correct': true},
        {'text': 'MacOS', 'correct': false},
        {'text': 'iSystem', 'correct': false},
        {'text': 'iPhone OS', 'correct': false},
      ],
    },
    {
      'questionText': 'Which wireless technology allows mobile devices to exchange data over short distances?',
      'answers': [
        {'text': 'Bluetooth', 'correct': true},
        {'text': 'NFC', 'correct': false},
        {'text': 'Wi-Fi', 'correct': false},
        {'text': '4G', 'correct': false},
      ],
    },
    {
      'questionText': 'What does LTE stand for in the context of mobile networks?',
      'answers': [
        {'text': 'Long Term Evolution', 'correct': true},
        {'text': 'Low Transmission Energy', 'correct': false},
        {'text': 'Large Throughput Environment', 'correct': false},
        {'text': 'Local Telecommunication Equipment', 'correct': false},
      ],
    },
    {
      'questionText': 'Which company developed the first iPhone?',
      'answers': [
        {'text': 'Apple', 'correct': true},
        {'text': 'Samsung', 'correct': false},
        {'text': 'Motorola', 'correct': false},
        {'text': 'Sony', 'correct': false},
      ],
    },
    {
      'questionText': 'What is the name of the virtual assistant developed by Apple for iOS devices?',
      'answers': [
        {'text': 'Siri', 'correct': true},
        {'text': 'Alexa', 'correct': false},
        {'text': 'Google Assistant', 'correct': false},
        {'text': 'Cortana', 'correct': false},
      ],
    },
    {
      'questionText': 'Which mobile technology standard is used for making payments using mobile devices?',
      'answers': [
        {'text': 'NFC', 'correct': true},
        {'text': 'Bluetooth', 'correct': false},
        {'text': 'Wi-Fi', 'correct': false},
        {'text': '4G', 'correct': false},
      ],
    },
    {
      'questionText': 'Which mobile phone company was the first to introduce a camera in their phones?',
      'answers': [
        {'text': 'Sharp', 'correct': true},
        {'text': 'Nokia', 'correct': false},
        {'text': 'Motorola', 'correct': false},
        {'text': 'Samsung', 'correct': false},
      ],
    },
    {
      'questionText': 'What is the name of Google\'s wireless service that operates on a combination of Wi-Fi and cellular networks?',
      'answers': [
        {'text': 'Google Fi', 'correct': true},
        {'text': 'Google Wireless', 'correct': false},
        {'text': 'Google Mobile', 'correct': false},
        {'text': 'Google Connect', 'correct': false},
      ],
    },
    {
      'questionText': 'Which mobile OS is based on the Linux kernel and is primarily used in Samsung devices?',
      'answers': [
        {'text': 'Tizen', 'correct': true},
        {'text': 'Windows Phone', 'correct': false},
        {'text': 'BlackBerry OS', 'correct': false},
        {'text': 'Firefox OS', 'correct': false},
      ],
    },
    {
      'questionText': 'What is the maximum number of SIM cards a dual SIM phone can support?',
      'answers': [
        {'text': 'Two', 'correct': true},
        {'text': 'Three', 'correct': false},
        {'text': 'Four', 'correct': false},
        {'text': 'Five', 'correct': false},
      ],
    },
    {
      'questionText': 'Which company introduced the first mobile phone?',
      'answers': [
        {'text': 'Motorola', 'correct': true},
        {'text': 'Nokia', 'correct': false},
        {'text': 'Samsung', 'correct': false},
        {'text': 'Sony', 'correct': false},
      ],
    },
    {
      'questionText': 'What is the name of the wireless technology that allows devices to be charged without a physical connection?',
      'answers': [
        {'text': 'Qi', 'correct': true},
        {'text': 'NFC', 'correct': false},
        {'text': 'Bluetooth', 'correct': false},
        {'text': 'Wi-Fi', 'correct': false},
      ],
    },
    {
      'questionText': 'Which company developed the first commercially available smartphone?',
      'answers': [
        {'text': 'IBM', 'correct': true},
        {'text': 'Apple', 'correct': false},
        {'text': 'BlackBerry', 'correct': false},
        {'text': 'Nokia', 'correct': false},
      ],
    },
    {
      'questionText': 'What is the primary function of the IMEI number on a mobile device?',
      'answers': [
        {'text': 'To uniquely identify the device', 'correct': true},
        {'text': 'To access the internet', 'correct': false},
        {'text': 'To store contacts', 'correct': false},
        {'text': 'To connect to Bluetooth devices', 'correct': false},
      ],
    },
    {
      'questionText': 'Which mobile technology standard preceded 3G?',
      'answers': [
        {'text': '2G', 'correct': true},
        {'text': '4G', 'correct': false},
        {'text': '1G', 'correct': false},
        {'text': '5G', 'correct': false},
      ],
    },
    {
      'questionText': 'What is the name of Apple\'s proprietary video calling service?',
      'answers': [
        {'text': 'FaceTime', 'correct': true},
        {'text': 'Skype', 'correct': false},
        {'text': 'Hangouts', 'correct': false},
        {'text': 'Zoom', 'correct': false},
      ],
    },
    {
      'questionText': 'Which mobile technology allows devices to transfer data at speeds up to 10 Gbps?',
      'answers': [
        {'text': '5G', 'correct': true},
        {'text': '4G', 'correct': false},
        {'text': '3G', 'correct': false},
        {'text': 'Wi-Fi 6', 'correct': false},
      ],
    },
    {
      'questionText': 'Which mobile OS is known for its customization options and is based on the Android Open Source Project?',
      'answers': [
        {'text': 'LineageOS', 'correct': true},
        {'text': 'OxygenOS', 'correct': false},
        {'text': 'ColorOS', 'correct': false},
        {'text': 'EMUI', 'correct': false},
      ],
    },
    {
      'questionText': 'What is the name of the high-speed data transfer technology introduced with Bluetooth 5.0?',
      'answers': [
        {'text': 'Bluetooth Low Energy', 'correct': true},
        {'text': 'Bluetooth Smart', 'correct': false},
        {'text': 'Bluetooth Fast Connect', 'correct': false},
        {'text': 'Bluetooth Turbo', 'correct': false},
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
        title: Text('Mobile Technology Quiz'),
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
              child: Text('Back to Mobile Technology'),
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
        title: Text('Mobile Technology Quiz'),
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
