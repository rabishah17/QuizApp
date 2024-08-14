import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: NovelQuizPage(),
  ));
}

class NovelQuizPage extends StatelessWidget {
  final List<Map<String, Object>> _questions = const [
    {
      'questionText': 'Who wrote the novel "Pride and Prejudice"?',
      'answers': [
        {'text': 'Jane Austen', 'correct': true},
        {'text': 'Charles Dickens', 'correct': false},
        {'text': 'Leo Tolstoy', 'correct': false},
        {'text': 'Emily Brontë', 'correct': false},
      ],
    },
    {
      'questionText': 'Which novel is set during the Russian Revolution and portrays the struggles of the working class?',
      'answers': [
        {'text': 'Animal Farm', 'correct': false},
        {'text': 'War and Peace', 'correct': false},
        {'text': 'Anna Karenina', 'correct': false},
        {'text': 'Doctor Zhivago', 'correct': true},
      ],
    },
    {
      'questionText': 'Who wrote the novel "1984," which depicts a dystopian society under totalitarian rule?',
      'answers': [
        {'text': 'George Orwell', 'correct': true},
        {'text': 'Aldous Huxley', 'correct': false},
        {'text': 'Ray Bradbury', 'correct': false},
        {'text': 'Kurt Vonnegut', 'correct': false},
      ],
    },
    {
      'questionText': 'Which novel tells the story of a shipwrecked sailor stranded on a desert island?',
      'answers': [
        {'text': 'Robinson Crusoe', 'correct': true},
        {'text': 'Treasure Island', 'correct': false},
        {'text': 'Moby-Dick', 'correct': false},
        {'text': 'Lord of the Flies', 'correct': false},
      ],
    },
    {
      'questionText': 'Who wrote the novel "To Kill a Mockingbird," addressing racial injustice in the American South?',
      'answers': [
        {'text': 'Harper Lee', 'correct': true},
        {'text': 'Mark Twain', 'correct': false},
        {'text': 'F. Scott Fitzgerald', 'correct': false},
        {'text': 'John Steinbeck', 'correct': false},
      ],
    },
    {
      'questionText': 'Which novel explores the life of a young orphaned boy in Victorian London?',
      'answers': [
        {'text': 'Oliver Twist', 'correct': true},
        {'text': 'Great Expectations', 'correct': false},
        {'text': 'David Copperfield', 'correct': false},
        {'text': 'A Tale of Two Cities', 'correct': false},
      ],
    },
    {
      'questionText': 'Who wrote the novel "The Great Gatsby," capturing the decadence and moral decay of the Jazz Age?',
      'answers': [
        {'text': 'F. Scott Fitzgerald', 'correct': true},
        {'text': 'Ernest Hemingway', 'correct': false},
        {'text': 'John Steinbeck', 'correct': false},
        {'text': 'T.S. Eliot', 'correct': false},
      ],
    },
    {
      'questionText': 'Which novel explores the journey of a young girl trapped in an underground world with fantastic creatures?',
      'answers': [
        {'text': 'Alice\'s Adventures in Wonderland', 'correct': true},
        {'text': 'The Hobbit', 'correct': false},
        {'text': 'The Chronicles of Narnia', 'correct': false},
        {'text': 'Harry Potter and the Philosopher\'s Stone', 'correct': false},
      ],
    },
    {
      'questionText': 'Who wrote the novel "Crime and Punishment," examining the moral dilemmas of a young student in St. Petersburg?',
      'answers': [
        {'text': 'Fyodor Dostoevsky', 'correct': true},
        {'text': 'Leo Tolstoy', 'correct': false},
        {'text': 'Anton Chekhov', 'correct': false},
        {'text': 'Ivan Turgenev', 'correct': false},
      ],
    },
    {
      'questionText': 'Which novel follows the life of an African American man who struggles with identity and racial discrimination in early 20th-century America?',
      'answers': [
        {'text': 'Invisible Man', 'correct': true},
        {'text': 'Native Son', 'correct': false},
        {'text': 'Beloved', 'correct': false},
        {'text': 'Go Tell It on the Mountain', 'correct': false},
      ],
    },
    {
      'questionText': 'Who wrote the novel "Moby-Dick," which tells the story of Captain Ahab\'s obsessive quest for a white whale?',
      'answers': [
        {'text': 'Herman Melville', 'correct': true},
        {'text': 'Nathaniel Hawthorne', 'correct': false},
        {'text': 'Edgar Allan Poe', 'correct': false},
        {'text': 'Henry David Thoreau', 'correct': false},
      ],
    },
    {
      'questionText': 'Which novel tells the story of a young woman who falls in love with a wealthy man but faces opposition from his social circle?',
      'answers': [
        {'text': 'Jane Eyre', 'correct': true},
        {'text': 'Wuthering Heights', 'correct': false},
        {'text': 'Tess of the d\'Urbervilles', 'correct': false},
        {'text': 'Middlemarch', 'correct': false},
      ],
    },
    {
      'questionText': 'Who wrote the novel "One Hundred Years of Solitude," which chronicles the history of the Buendía family in the fictional town of Macondo?',
      'answers': [
        {'text': 'Gabriel García Márquez', 'correct': true},
        {'text': 'Jorge Luis Borges', 'correct': false},
        {'text': 'Pablo Neruda', 'correct': false},
        {'text': 'Isabel Allende', 'correct': false},
      ],
    },
    {
      'questionText': 'Which novel is set during the Civil War and follows the lives of the March sisters as they grow up?',
      'answers': [
        {'text': 'Little Women', 'correct': true},
        {'text': 'Gone with the Wind', 'correct': false},
        {'text': 'Pride and Prejudice', 'correct': false},
        {'text': 'The Scarlet Letter', 'correct': false},
      ],
    },
    {
      'questionText': 'Who wrote the novel "Frankenstein," a story about a scientist who creates a grotesque creature in an unorthodox scientific experiment?',
      'answers': [
        {'text': 'Mary Shelley', 'correct': true},
        {'text': 'Bram Stoker', 'correct': false},
        {'text': 'H.P. Lovecraft', 'correct': false},
        {'text': 'Edgar Allan Poe', 'correct': false},
      ],
    },
    {
      'questionText': 'Which novel explores the adventures of a young girl who travels to a magical land through a wardrobe?',
      'answers': [
        {'text': 'The Lion, the Witch and the Wardrobe', 'correct': true},
        {'text': 'Alice\'s Adventures in Wonderland', 'correct': false},
        {'text': 'Peter Pan', 'correct': false},
        {'text': 'Harry Potter and the Philosopher\'s Stone', 'correct': false},
      ],
    },
    {
      'questionText': 'Who wrote the novel "Don Quixote," which follows the adventures of a delusional knight and his loyal squire?',
      'answers': [
        {'text': 'Miguel de Cervantes', 'correct': true},
        {'text': 'Jorge Luis Borges', 'correct': false},
        {'text': 'Gabriel García Márquez', 'correct': false},
        {'text': 'Fyodor Dostoevsky', 'correct': false},
      ],
    },
    {
      'questionText': 'Which novel tells the story of a dystopian society where books are outlawed and "firemen" burn any that are found?',
      'answers': [
        {'text': 'Fahrenheit 451', 'correct': true},
        {'text': 'Brave New World', 'correct': false},
        {'text': 'The Handmaid\'s Tale', 'correct': false},
        {'text': 'Nineteen Eighty-Four', 'correct': false},
      ],
    },
    {
      'questionText': 'Who wrote the novel "The Catcher in the Rye," which explores the disillusionment of a teenager with the adult world?',
      'answers': [
        {'text': 'J.D. Salinger', 'correct': true},
        {'text': 'Jack Kerouac', 'correct': false},
        {'text': 'Ernest Hemingway', 'correct': false},
        {'text': 'Sylvia Plath', 'correct': false},
      ],
    },
    {
      'questionText': 'Which novel is set in a future society where people are genetically engineered and assigned roles in a rigid caste system?',
      'answers': [
        {'text': 'Brave New World', 'correct': true},
        {'text': '1984', 'correct': false},
        {'text': 'Fahrenheit 451', 'correct': false},
        {'text': 'The Handmaid\'s Tale', 'correct': false},
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
        title: Text('Novel Quiz'),
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
              child: Text('Back to Novels'),
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
        title: Text('Novel Quiz'),
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
