import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: PoetryQuizPage(),
  ));
}

class PoetryQuizPage extends StatelessWidget {
  final List<Map<String, Object>> _questions = const [
    {
      'questionText': 'What is a haiku?',
      'answers': [
        {'text': 'A traditional Japanese poem with 3 lines and 17 syllables', 'correct': true},
        {'text': 'A long narrative poem about heroic deeds', 'correct': false},
        {'text': 'A form of poetry that rhymes at the end of lines', 'correct': false},
        {'text': 'A poem with a fixed structure and meter', 'correct': false},
      ],
    },
    {
      'questionText': 'Who wrote "The Waste Land," a landmark in modernist poetry?',
      'answers': [
        {'text': 'T.S. Eliot', 'correct': true},
        {'text': 'William Wordsworth', 'correct': false},
        {'text': 'Emily Dickinson', 'correct': false},
        {'text': 'Pablo Neruda', 'correct': false},
      ],
    },
    {
      'questionText': 'Which poet wrote the line "Shall I compare thee to a summer\'s day?"',
      'answers': [
        {'text': 'William Shakespeare', 'correct': true},
        {'text': 'John Keats', 'correct': false},
        {'text': 'Walt Whitman', 'correct': false},
        {'text': 'Robert Frost', 'correct': false},
      ],
    },
    {
      'questionText': 'What is the term for a poem that mourns the loss of someone who has died?',
      'answers': [
        {'text': 'Elegy', 'correct': true},
        {'text': 'Sonnet', 'correct': false},
        {'text': 'Limerick', 'correct': false},
        {'text': 'Ode', 'correct': false},
      ],
    },
    {
      'questionText': 'Who wrote "The Raven," a famous narrative poem about a mysterious visitor?',
      'answers': [
        {'text': 'Edgar Allan Poe', 'correct': true},
        {'text': 'Sylvia Plath', 'correct': false},
        {'text': 'Robert Browning', 'correct': false},
        {'text': 'Langston Hughes', 'correct': false},
      ],
    },
    {
      'questionText': 'Which poet is associated with the term "Metaphysical Poets"?',
      'answers': [
        {'text': 'John Donne', 'correct': true},
        {'text': 'Percy Bysshe Shelley', 'correct': false},
        {'text': 'Lord Byron', 'correct': false},
        {'text': 'Samuel Taylor Coleridge', 'correct': false},
      ],
    },
    {
      'questionText': 'What does the term "free verse" mean in poetry?',
      'answers': [
        {'text': 'Poetry without a fixed pattern of meter or rhyme', 'correct': true},
        {'text': 'A type of poetry that is easy to understand', 'correct': false},
        {'text': 'A form of poetry with strict rules and structure', 'correct': false},
        {'text': 'Poetry that uses free association techniques', 'correct': false},
      ],
    },
    {
      'questionText': 'Who wrote "Howl," a poem that became a manifesto for the Beat Generation?',
      'answers': [
        {'text': 'Allen Ginsberg', 'correct': true},
        {'text': 'E.E. Cummings', 'correct': false},
        {'text': 'Sylvia Plath', 'correct': false},
        {'text': 'Langston Hughes', 'correct': false},
      ],
    },
    {
      'questionText': 'Which poet wrote "Do not go gentle into that good night"?',
      'answers': [
        {'text': 'Dylan Thomas', 'correct': true},
        {'text': 'Pablo Neruda', 'correct': false},
        {'text': 'Walt Whitman', 'correct': false},
        {'text': 'Robert Frost', 'correct': false},
      ],
    },
    {
      'questionText': 'What is a common theme in the poetry of Emily Dickinson?',
      'answers': [
        {'text': 'Death and immortality', 'correct': true},
        {'text': 'Nature and beauty', 'correct': false},
        {'text': 'Love and relationships', 'correct': false},
        {'text': 'Social justice and equality', 'correct': false},
      ],
    },
    {
      'questionText': 'Which poet is known for his work "Leaves of Grass"?',
      'answers': [
        {'text': 'Walt Whitman', 'correct': true},
        {'text': 'Robert Frost', 'correct': false},
        {'text': 'T.S. Eliot', 'correct': false},
        {'text': 'William Wordsworth', 'correct': false},
      ],
    },
    {
      'questionText': 'What is a common characteristic of Romantic poetry?',
      'answers': [
        {'text': 'Emphasis on imagination and emotion', 'correct': true},
        {'text': 'Strict adherence to traditional forms', 'correct': false},
        {'text': 'Use of irony and satire', 'correct': false},
        {'text': 'Focus on urban life and society', 'correct': false},
      ],
    },
    {
      'questionText': 'Who is credited with writing the epic poem "Paradise Lost"?',
      'answers': [
        {'text': 'John Milton', 'correct': true},
        {'text': 'Alexander Pope', 'correct': false},
        {'text': 'John Keats', 'correct': false},
        {'text': 'William Blake', 'correct': false},
      ],
    },
    {
      'questionText': 'What is the meter of a sonnet?',
      'answers': [
        {'text': '14 lines of iambic pentameter', 'correct': true},
        {'text': '10 lines of free verse', 'correct': false},
        {'text': '12 lines of trochaic tetrameter', 'correct': false},
        {'text': '16 lines of dactylic hexameter', 'correct': false},
      ],
    },
    {
      'questionText': 'Which poet is associated with the term "confessional poetry"?',
      'answers': [
        {'text': 'Sylvia Plath', 'correct': true},
        {'text': 'William Wordsworth', 'correct': false},
        {'text': 'Emily Dickinson', 'correct': false},
        {'text': 'Langston Hughes', 'correct': false},
      ],
    },
    {
      'questionText': 'Who wrote "Ode to a Nightingale," a famous ode exploring the themes of mortality and escape from the mundane?',
      'answers': [
        {'text': 'John Keats', 'correct': true},
        {'text': 'Percy Bysshe Shelley', 'correct': false},
        {'text': 'Lord Byron', 'correct': false},
        {'text': 'Samuel Taylor Coleridge', 'correct': false},
      ],
    },
    {
      'questionText': 'Which poet is known for his work "The Divine Comedy"?',
      'answers': [
        {'text': 'Dante Alighieri', 'correct': true},
        {'text': 'Geoffrey Chaucer', 'correct': false},
        {'text': 'Matsuo Bashō', 'correct': false},
        {'text': 'Homer', 'correct': false},
      ],
    },
    {
      'questionText': 'What is the term for a humorous poem with five lines and a specific rhyme scheme?',
      'answers': [
        {'text': 'Limerick', 'correct': true},
        {'text': 'Sonnet', 'correct': false},
        {'text': 'Haiku', 'correct': false},
        {'text': 'Elegy', 'correct': false},
      ],
    },
    {
      'questionText': 'Who wrote "The Love Song of J. Alfred Prufrock," a modernist poem about the ennui and alienation of modern life?',
      'answers': [
        {'text': 'T.S. Eliot', 'correct': true},
        {'text': 'William Shakespeare', 'correct': false},
        {'text': 'John Keats', 'correct': false},
        {'text': 'Emily Dickinson', 'correct': false},
      ],
    },
    {
      'questionText': 'Which poet is known for his collection "Songs of Innocence and Experience"?',
      'answers': [
        {'text': 'William Blake', 'correct': true},
        {'text': 'Walt Whitman', 'correct': false},
        {'text': 'John Milton', 'correct': false},
        {'text': 'Robert Frost', 'correct': false},
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
        title: Text('Poetry Quiz'),
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
              child: Text('Back to Poetry'),
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
        title: Text('Poetry Quiz'),
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
