import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: ModernHistoryQuizPage(),
  ));
}

class ModernHistoryQuizPage extends StatelessWidget {
  final List<Map<String, Object>> _questions = const [
    {
      'questionText': 'Who is considered the "Father of Modern Physics"?',
      'answers': [
        {'text': 'Albert Einstein', 'correct': true},
        {'text': 'Isaac Newton', 'correct': false},
        {'text': 'Niels Bohr', 'correct': false},
        {'text': 'Max Planck', 'correct': false},
      ],
    },
    {
      'questionText': 'Which event marked the beginning of World War I?',
      'answers': [
        {'text': 'Assassination of Archduke Franz Ferdinand', 'correct': true},
        {'text': 'Invasion of Poland', 'correct': false},
        {'text': 'Treaty of Versailles', 'correct': false},
        {'text': 'Battle of the Somme', 'correct': false},
      ],
    },
    {
      'questionText': 'Who was the leader of the Bolshevik Revolution in Russia?',
      'answers': [
        {'text': 'Vladimir Lenin', 'correct': true},
        {'text': 'Joseph Stalin', 'correct': false},
        {'text': 'Leon Trotsky', 'correct': false},
        {'text': 'Tsar Nicholas II', 'correct': false},
      ],
    },
    {
      'questionText': 'Which treaty formally ended World War I?',
      'answers': [
        {'text': 'Treaty of Versailles', 'correct': true},
        {'text': 'Treaty of Brest-Litovsk', 'correct': false},
        {'text': 'Treaty of Trianon', 'correct': false},
        {'text': 'Treaty of Saint-Germain-en-Laye', 'correct': false},
      ],
    },
    {
      'questionText': 'Who was the leader of Nazi Germany during World War II?',
      'answers': [
        {'text': 'Adolf Hitler', 'correct': true},
        {'text': 'Benito Mussolini', 'correct': false},
        {'text': 'Hirohito', 'correct': false},
        {'text': 'Joseph Stalin', 'correct': false},
      ],
    },
    {
      'questionText': 'Which event marked the beginning of World War II in Europe?',
      'answers': [
        {'text': 'Invasion of Poland', 'correct': true},
        {'text': 'Invasion of France', 'correct': false},
        {'text': 'Invasion of Czechoslovakia', 'correct': false},
        {'text': 'Invasion of Belgium', 'correct': false},
      ],
    },
    {
      'questionText': 'Who was the first President of the United States?',
      'answers': [
        {'text': 'George Washington', 'correct': true},
        {'text': 'Thomas Jefferson', 'correct': false},
        {'text': 'Abraham Lincoln', 'correct': false},
        {'text': 'John Adams', 'correct': false},
      ],
    },
    {
      'questionText': 'Which country was the first to launch a satellite into space?',
      'answers': [
        {'text': 'Soviet Union', 'correct': true},
        {'text': 'United States', 'correct': false},
        {'text': 'China', 'correct': false},
        {'text': 'Germany', 'correct': false},
      ],
    },
    {
      'questionText': 'Who was the first person to orbit the Earth?',
      'answers': [
        {'text': 'Yuri Gagarin', 'correct': true},
        {'text': 'Alan Shepard', 'correct': false},
        {'text': 'John Glenn', 'correct': false},
        {'text': 'Neil Armstrong', 'correct': false},
      ],
    },
    {
      'questionText': 'Which country built the Berlin Wall in 1961?',
      'answers': [
        {'text': 'East Germany', 'correct': true},
        {'text': 'West Germany', 'correct': false},
        {'text': 'Soviet Union', 'correct': false},
        {'text': 'United States', 'correct': false},
      ],
    },
    {
      'questionText': 'Who was the first woman to win a Nobel Prize?',
      'answers': [
        {'text': 'Marie Curie', 'correct': true},
        {'text': 'Rosalind Franklin', 'correct': false},
        {'text': 'Dorothy Hodgkin', 'correct': false},
        {'text': 'Gerty Cori', 'correct': false},
      ],
    },
    {
      'questionText': 'Which U.S. president signed the Civil Rights Act of 1964?',
      'answers': [
        {'text': 'Lyndon B. Johnson', 'correct': true},
        {'text': 'John F. Kennedy', 'correct': false},
        {'text': 'Richard Nixon', 'correct': false},
        {'text': 'Dwight D. Eisenhower', 'correct': false},
      ],
    },
    {
      'questionText': 'Who led the Chinese Communist Party to victory in the Chinese Civil War?',
      'answers': [
        {'text': 'Mao Zedong', 'correct': true},
        {'text': 'Chiang Kai-shek', 'correct': false},
        {'text': 'Sun Yat-sen', 'correct': false},
        {'text': 'Deng Xiaoping', 'correct': false},
      ],
    },
    {
      'questionText': 'Which U.S. president implemented the New Deal during the Great Depression?',
      'answers': [
        {'text': 'Franklin D. Roosevelt', 'correct': true},
        {'text': 'Herbert Hoover', 'correct': false},
        {'text': 'Woodrow Wilson', 'correct': false},
        {'text': 'Calvin Coolidge', 'correct': false},
      ],
    },
    {
      'questionText': 'Which country launched the first human mission to the Moon?',
      'answers': [
        {'text': 'United States', 'correct': true},
        {'text': 'Soviet Union', 'correct': false},
        {'text': 'China', 'correct': false},
        {'text': 'Japan', 'correct': false},
      ],
    },
    {
      'questionText': 'Who was the first woman to serve as Prime Minister of the United Kingdom?',
      'answers': [
        {'text': 'Margaret Thatcher', 'correct': true},
        {'text': 'Theresa May', 'correct': false},
        {'text': 'Angela Merkel', 'correct': false},
        {'text': 'Indira Gandhi', 'correct': false},
      ],
    },
    {
      'questionText': 'Which city hosted the 1988 Summer Olympics?',
      'answers': [
        {'text': 'Seoul', 'correct': true},
        {'text': 'Tokyo', 'correct': false},
        {'text': 'Los Angeles', 'correct': false},
        {'text': 'Moscow', 'correct': false},
      ],
    },
    {
      'questionText': 'Who was the leader of the Soviet Union during much of the Cold War?',
      'answers': [
        {'text': 'Joseph Stalin', 'correct': false},
        {'text': 'Nikita Khrushchev', 'correct': false},
        {'text': 'Leonid Brezhnev', 'correct': false},
        {'text': 'Mikhail Gorbachev', 'correct': true},
      ],
    },
    {
      'questionText': 'Who was the first African American President of the United States?',
      'answers': [
        {'text': 'Barack Obama', 'correct': true},
        {'text': 'Colin Powell', 'correct': false},
        {'text': 'Jesse Jackson', 'correct': false},
        {'text': 'Kamala Harris', 'correct': false},
      ],
    },
    {
      'questionText': 'Which conflict is often considered the first major proxy war of the Cold War era?',
      'answers': [
        {'text': 'Korean War', 'correct': true},
        {'text': 'Vietnam War', 'correct': false},
        {'text': 'Cuban Missile Crisis', 'correct': false},
        {'text': 'Bay of Pigs Invasion', 'correct': false},
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
        title: Text('Modern History Quiz'),
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
              child: Text('Back to Modern History'),
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
        title: Text('Modern History Quiz'),
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
