import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: ShortStoryQuizPage(),
  ));
}

class ShortStoryQuizPage extends StatelessWidget {
  final List<Map<String, Object>> _questions = const [
    {
      'questionText': 'Who wrote the short story "The Tell-Tale Heart"?',
      'answers': [
        {'text': 'Edgar Allan Poe', 'correct': true},
        {'text': 'Nathaniel Hawthorne', 'correct': false},
        {'text': 'Herman Melville', 'correct': false},
        {'text': 'Mark Twain', 'correct': false},
      ],
    },
    {
      'questionText': 'Which short story by Guy de Maupassant features a surprise ending involving a necklace?',
      'answers': [
        {'text': 'The Necklace', 'correct': true},
        {'text': 'The Gift of the Magi', 'correct': false},
        {'text': 'The Lottery', 'correct': false},
        {'text': 'The Lady with the Dog', 'correct': false},
      ],
    },
    {
      'questionText': 'Who wrote the short story "The Lottery," which depicts a chilling tradition in a small town?',
      'answers': [
        {'text': 'Shirley Jackson', 'correct': true},
        {'text': 'Flannery O\'Connor', 'correct': false},
        {'text': 'Ray Bradbury', 'correct': false},
        {'text': 'Ernest Hemingway', 'correct': false},
      ],
    },
    {
      'questionText': 'Which short story by O. Henry tells the tale of a young couple\'s sacrificial gifts?',
      'answers': [
        {'text': 'The Gift of the Magi', 'correct': true},
        {'text': 'The Ransom of Red Chief', 'correct': false},
        {'text': 'The Cask of Amontillado', 'correct': false},
        {'text': 'The Scarlet Ibis', 'correct': false},
      ],
    },
    {
      'questionText': 'Who wrote the short story "The Yellow Wallpaper," which explores the mental deterioration of a woman confined to a room?',
      'answers': [
        {'text': 'Charlotte Perkins Gilman', 'correct': true},
        {'text': 'Kate Chopin', 'correct': false},
        {'text': 'Louisa May Alcott', 'correct': false},
        {'text': 'Virginia Woolf', 'correct': false},
      ],
    },
    {
      'questionText': 'Which short story by Ernest Hemingway involves a man and a marlin in a battle of endurance?',
      'answers': [
        {'text': 'The Old Man and the Sea', 'correct': true},
        {'text': 'Hills Like White Elephants', 'correct': false},
        {'text': 'A Clean, Well-Lighted Place', 'correct': false},
        {'text': 'The Snows of Kilimanjaro', 'correct': false},
      ],
    },
    {
      'questionText': 'Who wrote the short story "The Gift of the Magi," where a couple each sacrifices their most prized possession for the other?',
      'answers': [
        {'text': 'O. Henry', 'correct': true},
        {'text': 'Kate Chopin', 'correct': false},
        {'text': 'Anton Chekhov', 'correct': false},
        {'text': 'Leo Tolstoy', 'correct': false},
      ],
    },
    {
      'questionText': 'Which short story by Kate Chopin explores the awakening of a woman\'s desires and independence?',
      'answers': [
        {'text': 'The Story of an Hour', 'correct': true},
        {'text': 'Desiree\'s Baby', 'correct': false},
        {'text': 'The Awakening', 'correct': false},
        {'text': 'A Pair of Silk Stockings', 'correct': false},
      ],
    },
    {
      'questionText': 'Who wrote the short story "The Most Dangerous Game," where a man is hunted by a deranged hunter on a remote island?',
      'answers': [
        {'text': 'Richard Connell', 'correct': true},
        {'text': 'Jack London', 'correct': false},
        {'text': 'H.P. Lovecraft', 'correct': false},
        {'text': 'Ambrose Bierce', 'correct': false},
      ],
    },
    {
      'questionText': 'Which short story by Gabriel García Márquez tells the tale of a village plagued by insomnia for over a century?',
      'answers': [
        {'text': 'One Hundred Years of Solitude', 'correct': false},
        {'text': 'A Very Old Man with Enormous Wings', 'correct': false},
        {'text': 'The Handsomest Drowned Man in the World', 'correct': false},
        {'text': 'The Last Voyage of the Ghost Ship', 'correct': true},
      ],
    },
    {
      'questionText': 'Who wrote the short story "A Good Man is Hard to Find," where a family encounters a notorious criminal known as The Misfit?',
      'answers': [
        {'text': 'Flannery O\'Connor', 'correct': true},
        {'text': 'William Faulkner', 'correct': false},
        {'text': 'Eudora Welty', 'correct': false},
        {'text': 'Carson McCullers', 'correct': false},
      ],
    },
    {
      'questionText': 'Which short story by Anton Chekhov explores the theme of unrequited love and societal expectations?',
      'answers': [
        {'text': 'The Lady with the Dog', 'correct': true},
        {'text': 'Ward No. 6', 'correct': false},
        {'text': 'The Darling', 'correct': false},
        {'text': 'The Bet', 'correct': false},
      ],
    },
    {
      'questionText': 'Who wrote the short story "The Lady or the Tiger?" which ends with a dilemma faced by the protagonist in an arena?',
      'answers': [
        {'text': 'Frank R. Stockton', 'correct': true},
        {'text': 'Washington Irving', 'correct': false},
        {'text': 'Edgar Allan Poe', 'correct': false},
        {'text': 'Ambrose Bierce', 'correct': false},
      ],
    },
    {
      'questionText': 'Which short story by Edgar Allan Poe features a narrator obsessed with a cat that he ultimately hangs?',
      'answers': [
        {'text': 'The Black Cat', 'correct': true},
        {'text': 'The Tell-Tale Heart', 'correct': false},
        {'text': 'The Cask of Amontillado', 'correct': false},
        {'text': 'The Fall of the House of Usher', 'correct': false},
      ],
    },
    {
      'questionText': 'Who wrote the short story "The Ransom of Red Chief," where two men kidnap a boy who proves to be more trouble than expected?',
      'answers': [
        {'text': 'O. Henry', 'correct': false},
        {'text': 'Mark Twain', 'correct': false},
        {'text': 'Jack London', 'correct': false},
        {'text': 'William Sydney Porter (O. Henry)', 'correct': true},
      ],
    },
    {
      'questionText': 'Which short story by Rudyard Kipling involves a man who faces the challenges of colonial India and a vengeful leopard?',
      'answers': [
        {'text': 'The Jungle Book', 'correct': false},
        {'text': 'Rikki-Tikki-Tavi', 'correct': false},
        {'text': 'The Man Who Would Be King', 'correct': false},
        {'text': 'The Phantom \'Rickshaw', 'correct': true},
      ],
    },
    {
      'questionText': 'Which short story by Saki (H.H. Munro) features a mischievous girl who wreaks havoc on a garden party?',
      'answers': [
        {'text': 'The Lumber-Room', 'correct': false},
        {'text': 'The Open Window', 'correct': false},
        {'text': 'Tobermory', 'correct': true},
        {'text': 'The Storyteller', 'correct': false},
      ],
    },
    {
      'questionText': 'Who wrote the short story "The Pit and the Pendulum," where a prisoner faces gruesome trials in the dungeons of the Spanish Inquisition?',
      'answers': [
        {'text': 'Edgar Allan Poe', 'correct': true},
        {'text': 'H.P. Lovecraft', 'correct': false},
        {'text': 'Nathaniel Hawthorne', 'correct': false},
        {'text': 'Mary Shelley', 'correct': false},
      ],
    },
    {
      'questionText': 'Which short story by Roald Dahl involves a man with a taste for revenge who crafts a perfect murder?',
      'answers': [
        {'text': 'Lamb to the Slaughter', 'correct': true},
        {'text': 'The Landlady', 'correct': false},
        {'text': 'The BFG', 'correct': false},
        {'text': 'Charlie and the Chocolate Factory', 'correct': false},
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
        title: Text('Short Story Quiz'),
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
              onPressed: () => Navigator.pop(context),
              child: Text('Back to Short Stories'),
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
        title: Text('Short Story Quiz'),
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
