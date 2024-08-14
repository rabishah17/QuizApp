import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: MedievalHistoryQuizPage(),
  ));
}

class MedievalHistoryQuizPage extends StatelessWidget {
  final List<Map<String, Object>> _questions = const [
    {
      'questionText': 'Who was the first Holy Roman Emperor?',
      'answers': [
        {'text': 'Charlemagne', 'correct': true},
        {'text': 'Otto the Great', 'correct': false},
        {'text': 'Julius Caesar', 'correct': false},
        {'text': 'Constantine', 'correct': false},
      ],
    },
    {
      'questionText': 'Which battle in 1066 had a profound impact on English history?',
      'answers': [
        {'text': 'Battle of Hastings', 'correct': true},
        {'text': 'Battle of Agincourt', 'correct': false},
        {'text': 'Battle of Tours', 'correct': false},
        {'text': 'Battle of Bannockburn', 'correct': false},
      ],
    },
    {
      'questionText': 'Who wrote "The Divine Comedy"?',
      'answers': [
        {'text': 'Dante Alighieri', 'correct': true},
        {'text': 'Geoffrey Chaucer', 'correct': false},
        {'text': 'Giovanni Boccaccio', 'correct': false},
        {'text': 'Francesco Petrarch', 'correct': false},
      ],
    },
    {
      'questionText': 'Which medieval English king signed the Magna Carta in 1215?',
      'answers': [
        {'text': 'King John', 'correct': true},
        {'text': 'Edward I', 'correct': false},
        {'text': 'Richard the Lionheart', 'correct': false},
        {'text': 'Henry II', 'correct': false},
      ],
    },
    {
      'questionText': 'Who led the Norman invasion of England in 1066?',
      'answers': [
        {'text': 'William the Conqueror', 'correct': true},
        {'text': 'Harald Hardrada', 'correct': false},
        {'text': 'Edward the Confessor', 'correct': false},
        {'text': 'Godwinson', 'correct': false},
      ],
    },
    {
      'questionText': 'Which medieval European city was known as "Constantinople"?',
      'answers': [
        {'text': 'Istanbul', 'correct': true},
        {'text': 'Athens', 'correct': false},
        {'text': 'Rome', 'correct': false},
        {'text': 'Venice', 'correct': false},
      ],
    },
    {
      'questionText': 'Who founded the Carolingian Empire?',
      'answers': [
        {'text': 'Charlemagne', 'correct': true},
        {'text': 'Clovis I', 'correct': false},
        {'text': 'Louis the Pious', 'correct': false},
        {'text': 'Pepin the Short', 'correct': false},
      ],
    },
    {
      'questionText': 'Which medieval military order was founded after the First Crusade?',
      'answers': [
        {'text': 'Knights Templar', 'correct': true},
        {'text': 'Teutonic Knights', 'correct': false},
        {'text': 'Hospitallers', 'correct': false},
        {'text': 'Knights of Malta', 'correct': false},
      ],
    },
    {
      'questionText': 'Who was the author of "The Prince", a political treatise on ruling and power?',
      'answers': [
        {'text': 'Niccolò Machiavelli', 'correct': true},
        {'text': 'Thomas Aquinas', 'correct': false},
        {'text': 'Francis Bacon', 'correct': false},
        {'text': 'John Locke', 'correct': false},
      ],
    },
    {
      'questionText': 'Which English king fought in the Third Crusade?',
      'answers': [
        {'text': 'Richard the Lionheart', 'correct': true},
        {'text': 'Henry II', 'correct': false},
        {'text': 'Edward I', 'correct': false},
        {'text': 'John Lackland', 'correct': false},
      ],
    },
    {
      'questionText': 'Who was the last ruler of the Western Roman Empire?',
      'answers': [
        {'text': 'Romulus Augustulus', 'correct': true},
        {'text': 'Constantine XI', 'correct': false},
        {'text': 'Julius Nepos', 'correct': false},
        {'text': 'Odoacer', 'correct': false},
      ],
    },
    {
      'questionText': 'Who was the founder of the Mongol Empire?',
      'answers': [
        {'text': 'Genghis Khan', 'correct': true},
        {'text': 'Kublai Khan', 'correct': false},
        {'text': 'Timur', 'correct': false},
        {'text': 'Attila the Hun', 'correct': false},
      ],
    },
    {
      'questionText': 'Which city was the capital of the Byzantine Empire?',
      'answers': [
        {'text': 'Constantinople', 'correct': true},
        {'text': 'Rome', 'correct': false},
        {'text': 'Athens', 'correct': false},
        {'text': 'Venice', 'correct': false},
      ],
    },
    {
      'questionText': 'Who was the first ruler of the Holy Roman Empire?',
      'answers': [
        {'text': 'Charlemagne', 'correct': true},
        {'text': 'Otto the Great', 'correct': false},
        {'text': 'Frederick Barbarossa', 'correct': false},
        {'text': 'Charles V', 'correct': false},
      ],
    },
    {
      'questionText': 'Which medieval English king was known as "The Lionheart"?',
      'answers': [
        {'text': 'Richard I', 'correct': true},
        {'text': 'Edward I', 'correct': false},
        {'text': 'Henry II', 'correct': false},
        {'text': 'John', 'correct': false},
      ],
    },
    {
      'questionText': 'Who was the architect of the Great Schism?',
      'answers': [
        {'text': 'Pope Urban II', 'correct': true},
        {'text': 'Pope Gregory VII', 'correct': false},
        {'text': 'Pope Innocent III', 'correct': false},
        {'text': 'Pope Clement V', 'correct': false},
      ],
    },
    {
      'questionText': 'Which English queen was executed for treason during the Tudor period?',
      'answers': [
        {'text': 'Anne Boleyn', 'correct': true},
        {'text': 'Catherine of Aragon', 'correct': false},
        {'text': 'Jane Seymour', 'correct': false},
        {'text': 'Mary I', 'correct': false},
      ],
    },
    {
      'questionText': 'Who was the leader of the Peasants\' Revolt in England in 1381?',
      'answers': [
        {'text': 'Wat Tyler', 'correct': true},
        {'text': 'Jack Cade', 'correct': false},
        {'text': 'John Ball', 'correct': false},
        {'text': 'Richard II', 'correct': false},
      ],
    },
    {
      'questionText': 'Which city was the center of the Italian Renaissance?',
      'answers': [
        {'text': 'Florence', 'correct': true},
        {'text': 'Rome', 'correct': false},
        {'text': 'Venice', 'correct': false},
        {'text': 'Milan', 'correct': false},
      ],
    },
    {
      'questionText': 'Which medieval philosopher is known for his Summa Theologica?',
      'answers': [
        {'text': 'Thomas Aquinas', 'correct': true},
        {'text': 'Peter Abelard', 'correct': false},
        {'text': 'William of Ockham', 'correct': false},
        {'text': 'Roger Bacon', 'correct': false},
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
        title: Text('Medieval History Quiz'),
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
              child: Text('Back to Medieval History'),
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
        title: Text('Medieval History Quiz'),
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
