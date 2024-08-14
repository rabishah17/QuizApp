import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: CybersecurityQuizPage(),
  ));
}

class CybersecurityQuizPage extends StatelessWidget {
  final List<Map<String, Object>> _questions = const [
    {
      'questionText': 'What does "VPN" stand for in the context of cybersecurity?',
      'answers': [
        {'text': 'Virtual Private Network', 'correct': true},
        {'text': 'Very Private Network', 'correct': false},
        {'text': 'Visual Private Network', 'correct': false},
        {'text': 'Virtual Personal Network', 'correct': false},
      ],
    },
    {
      'questionText': 'Which of the following is NOT considered a strong password practice?',
      'answers': [
        {'text': 'Using a combination of uppercase, lowercase, numbers, and special characters', 'correct': false},
        {'text': 'Using easily guessable information like your birthdate or name', 'correct': true},
        {'text': 'Changing passwords regularly', 'correct': false},
        {'text': 'Using a password manager', 'correct': false},
      ],
    },
    {
      'questionText': 'What is phishing?',
      'answers': [
        {'text': 'An attempt to deceive individuals into revealing sensitive information', 'correct': true},
        {'text': 'A type of malware that encrypts data until a ransom is paid', 'correct': false},
        {'text': 'A method to hide your IP address', 'correct': false},
        {'text': 'A protocol for secure data transmission', 'correct': false},
      ],
    },
    {
      'questionText': 'What does "HTTPS" stand for?',
      'answers': [
        {'text': 'Hypertext Transfer Protocol Secure', 'correct': true},
        {'text': 'Hypertext Transmission Protocol Secure', 'correct': false},
        {'text': 'Hypertext Transfer Privacy System', 'correct': false},
        {'text': 'Hypertext Transmission Privacy System', 'correct': false},
      ],
    },
    {
      'questionText': 'Which of the following is NOT a type of malware?',
      'answers': [
        {'text': 'Phishing', 'correct': true},
        {'text': 'Ransomware', 'correct': false},
        {'text': 'Trojan Horse', 'correct': false},
        {'text': 'Spyware', 'correct': false},
      ],
    },
    {
      'questionText': 'What is two-factor authentication (2FA)?',
      'answers': [
        {'text': 'A security process that requires two forms of identification to access an account', 'correct': true},
        {'text': 'A method of encrypting data using two different algorithms', 'correct': false},
        {'text': 'A protocol for secure file sharing', 'correct': false},
        {'text': 'A method for secure email communication', 'correct': false},
      ],
    },
    {
      'questionText': 'What is a firewall?',
      'answers': [
        {'text': 'A network security device that monitors and controls incoming and outgoing network traffic', 'correct': true},
        {'text': 'A software tool for scanning and removing viruses', 'correct': false},
        {'text': 'A type of malware that spreads through email attachments', 'correct': false},
        {'text': 'A secure method for transferring files between computers', 'correct': false},
      ],
    },
    {
      'questionText': 'What is the primary purpose of encryption?',
      'answers': [
        {'text': 'To secure data by converting it into a code that can only be deciphered by authorized users', 'correct': true},
        {'text': 'To anonymize internet traffic', 'correct': false},
        {'text': 'To identify and remove malicious software', 'correct': false},
        {'text': 'To block unauthorized access to a network', 'correct': false},
      ],
    },
    {
      'questionText': 'What does "DDoS" stand for?',
      'answers': [
        {'text': 'Distributed Denial of Service', 'correct': true},
        {'text': 'Dedicated Denial of Service', 'correct': false},
        {'text': 'Direct Denial of Service', 'correct': false},
        {'text': 'Dynamic Denial of Service', 'correct': false},
      ],
    },
    {
      'questionText': 'What is a vulnerability assessment?',
      'answers': [
        {'text': 'A process that identifies and prioritizes weaknesses in a system', 'correct': true},
        {'text': 'A method for encrypting sensitive data', 'correct': false},
        {'text': 'A technique for tracing malicious activities', 'correct': false},
        {'text': 'A protocol for secure data transmission', 'correct': false},
      ],
    },
    {
      'questionText': 'Which type of attack involves intercepting and altering communication between two parties who believe they are directly communicating with each other?',
      'answers': [
        {'text': 'Man-in-the-Middle (MitM) attack', 'correct': true},
        {'text': 'Phishing attack', 'correct': false},
        {'text': 'Ransomware attack', 'correct': false},
        {'text': 'DDoS attack', 'correct': false},
      ],
    },
    {
      'questionText': 'What is the practice of tricking users into clicking on malicious links or attachments called?',
      'answers': [
        {'text': 'Social Engineering', 'correct': true},
        {'text': 'Phishing', 'correct': false},
        {'text': 'Malware', 'correct': false},
        {'text': 'Hacking', 'correct': false},
      ],
    },
    {
      'questionText': 'What is the purpose of a penetration test (pen test)?',
      'answers': [
        {'text': 'To simulate an attack on a system to identify vulnerabilities', 'correct': true},
        {'text': 'To scan for viruses on a computer', 'correct': false},
        {'text': 'To encrypt sensitive data', 'correct': false},
        {'text': 'To block unauthorized access to a network', 'correct': false},
      ],
    },
    {
      'questionText': 'What does "IoT" stand for?',
      'answers': [
        {'text': 'Internet of Things', 'correct': true},
        {'text': 'Internet of Threats', 'correct': false},
        {'text': 'Intranet of Things', 'correct': false},
        {'text': 'Innovation of Things', 'correct': false},
      ],
    },
    {
      'questionText': 'Which of the following is an example of a physical security measure?',
      'answers': [
        {'text': 'Biometric authentication', 'correct': true},
        {'text': 'Firewall', 'correct': false},
        {'text': 'Encryption', 'correct': false},
        {'text': 'Antivirus software', 'correct': false},
      ],
    },
    {
      'questionText': 'What is ransomware?',
      'answers': [
        {'text': 'Malware that encrypts data and demands payment for decryption', 'correct': true},
        {'text': 'Malware that steals sensitive information', 'correct': false},
        {'text': 'A type of phishing attack', 'correct': false},
        {'text': 'A method of securing wireless networks', 'correct': false},
      ],
    },
    {
      'questionText': 'What does a brute force attack involve?',
      'answers': [
        {'text': 'Attempting to guess passwords or encryption keys through trial and error', 'correct': true},
        {'text': 'Sending a large volume of traffic to overwhelm a network', 'correct': false},
        {'text': 'Impersonating a trusted entity to trick users into revealing sensitive information', 'correct': false},
        {'text': 'Tricking users into installing malicious software', 'correct': false},
      ],
    },
    {
      'questionText': 'What is the purpose of a firewall?',
      'answers': [
        {'text': 'To monitor and control incoming and outgoing network traffic', 'correct': true},
        {'text': 'To protect against unauthorized physical access', 'correct': false},
        {'text': 'To encrypt sensitive data', 'correct': false},
        {'text': 'To block malicious websites', 'correct': false},
      ],
    },
    {
      'questionText': 'What is the best practice for securing public Wi-Fi connections?',
      'answers': [
        {'text': 'Using a VPN', 'correct': true},
        {'text': 'Disabling Wi-Fi encryption', 'correct': false},
        {'text': 'Sharing personal information freely', 'correct': false},
        {'text': 'Using default passwords', 'correct': false},
      ],
    },
    {
      'questionText': 'What is the first line of defense against malware and other online threats?',
      'answers': [
        {'text': 'Antivirus software', 'correct': true},
        {'text': 'Firewall', 'correct': false},
        {'text': 'Encryption', 'correct': false},
        {'text': 'Two-factor authentication', 'correct': false},
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
        title: Text('Cybersecurity Quiz'),
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
              child: Text('Back to Cybersecurity'),
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
        title: Text('Cybersecurity Quiz'),
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
