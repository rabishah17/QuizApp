import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: StatisticsQuizPage(),
  ));
}

class StatisticsQuizPage extends StatelessWidget {
  final List<Map<String, Object>> _questions = const [
    {
      'questionText': 'What is the mean of the data set: 2, 4, 6, 8?',
      'answers': [
        {'text': '5', 'correct': true},
        {'text': '6', 'correct': false},
        {'text': '4', 'correct': false},
        {'text': '7', 'correct': false},
      ],
    },
    {
      'questionText': 'Which measure of central tendency is most affected by outliers?',
      'answers': [
        {'text': 'Mean', 'correct': true},
        {'text': 'Median', 'correct': false},
        {'text': 'Mode', 'correct': false},
        {'text': 'Range', 'correct': false},
      ],
    },
    {
      'questionText': 'What does the standard deviation measure?',
      'answers': [
        {'text': 'Dispersion', 'correct': true},
        {'text': 'Central tendency', 'correct': false},
        {'text': 'Skewness', 'correct': false},
        {'text': 'Shape of the distribution', 'correct': false},
      ],
    },
    {
      'questionText': 'What is the probability of rolling a 6 on a fair six-sided die?',
      'answers': [
        {'text': '1/6', 'correct': true},
        {'text': '1/5', 'correct': false},
        {'text': '1/4', 'correct': false},
        {'text': '1/3', 'correct': false},
      ],
    },
    {
      'questionText': 'Which type of data is categorical?',
      'answers': [
        {'text': 'Gender', 'correct': true},
        {'text': 'Height', 'correct': false},
        {'text': 'Weight', 'correct': false},
        {'text': 'Age', 'correct': false},
      ],
    },
    {
      'questionText': 'In a normal distribution, what percentage of data lies within one standard deviation of the mean?',
      'answers': [
        {'text': '68%', 'correct': true},
        {'text': '95%', 'correct': false},
        {'text': '99%', 'correct': false},
        {'text': '50%', 'correct': false},
      ],
    },
    {
      'questionText': 'What is the formula for the variance of a population?',
      'answers': [
        {'text': 'σ² = Σ(x - μ)² / N', 'correct': true},
        {'text': 'σ = √Σ(x - μ)² / N', 'correct': false},
        {'text': 'σ = Σ(x - μ) / N', 'correct': false},
        {'text': 'σ² = √Σ(x - μ)² / N', 'correct': false},
      ],
    },
    {
      'questionText': 'What does a box plot display?',
      'answers': [
        {'text': 'Five-number summary', 'correct': true},
        {'text': 'Mean and standard deviation', 'correct': false},
        {'text': 'Frequency distribution', 'correct': false},
        {'text': 'Histogram', 'correct': false},
      ],
    },
    {
      'questionText': 'What is the mode of the data set: 3, 4, 5, 3, 6, 5, 3?',
      'answers': [
        {'text': '3', 'correct': true},
        {'text': '4', 'correct': false},
        {'text': '5', 'correct': false},
        {'text': '6', 'correct': false},
      ],
    },
    {
      'questionText': 'What is the probability of drawing a red card from a standard deck of cards?',
      'answers': [
        {'text': '1/2', 'correct': true},
        {'text': '1/3', 'correct': false},
        {'text': '1/4', 'correct': false},
        {'text': '1/5', 'correct': false},
      ],
    },
    {
      'questionText': 'What is the formula for the coefficient of variation?',
      'answers': [
        {'text': 'CV = (σ / μ) * 100%', 'correct': true},
        {'text': 'CV = σ / μ', 'correct': false},
        {'text': 'CV = σ * μ', 'correct': false},
        {'text': 'CV = μ / σ', 'correct': false},
      ],
    },
    {
      'questionText': 'What is the formula for the standard error of the mean?',
      'answers': [
        {'text': 'SEM = σ / √N', 'correct': true},
        {'text': 'SEM = √σ / N', 'correct': false},
        {'text': 'SEM = σ / N', 'correct': false},
        {'text': 'SEM = √σ / √N', 'correct': false},
      ],
    },
    {
      'questionText': 'What does correlation measure?',
      'answers': [
        {'text': 'Relationship between variables', 'correct': true},
        {'text': 'Dispersion', 'correct': false},
        {'text': 'Central tendency', 'correct': false},
        {'text': 'Skewness', 'correct': false},
      ],
    },
    {
      'questionText': 'What is the formula for the coefficient of determination (R²)?',
      'answers': [
        {'text': 'R² = r²', 'correct': true},
        {'text': 'R² = 1 - r²', 'correct': false},
        {'text': 'R² = √r', 'correct': false},
        {'text': 'R² = r', 'correct': false},
      ],
    },
    {
      'questionText': 'Which test is used to determine if there is a significant difference between the means of two groups?',
      'answers': [
        {'text': 't-test', 'correct': true},
        {'text': 'Chi-square test', 'correct': false},
        {'text': 'ANOVA', 'correct': false},
        {'text': 'Z-test', 'correct': false},
      ],
    },
    {
      'questionText': 'In hypothesis testing, what does the p-value represent?',
      'answers': [
        {'text': 'Probability of observing the data given that the null hypothesis is true', 'correct': true},
        {'text': 'Probability of rejecting the null hypothesis when it is actually true', 'correct': false},
        {'text': 'Probability of failing to reject the null hypothesis when it is actually false', 'correct': false},
        {'text': 'Probability of observing the data given that the alternative hypothesis is true', 'correct': false},
      ],
    },
    {
      'questionText': 'What is the formula for the standard normal distribution?',
      'answers': [
        {'text': 'Z = (X - μ) / σ', 'correct': true},
        {'text': 'Z = (X - σ) / μ', 'correct': false},
        {'text': 'Z = (X + μ) / σ', 'correct': false},
        {'text': 'Z = (X + σ) / μ', 'correct': false},
      ],
    },
    {
      'questionText': 'What type of sampling method involves selecting every kth member of the population?',
      'answers': [
        {'text': 'Systematic sampling', 'correct': true},
        {'text': 'Stratified sampling', 'correct': false},
        {'text': 'Cluster sampling', 'correct': false},
        {'text': 'Convenience sampling', 'correct': false},
      ],
    },
    {
      'questionText': 'Which distribution is used to model the number of successes in a fixed number of trials?',
      'answers': [
        {'text': 'Binomial distribution', 'correct': true},
        {'text': 'Poisson distribution', 'correct': false},
        {'text': 'Normal distribution', 'correct': false},
        {'text': 'Exponential distribution', 'correct': false},
      ],
    },
    {
      'questionText': 'What is the formula for the coefficient of skewness?',
      'answers': [
        {'text': 'Skewness = (3 * (Mean - Median)) / Standard Deviation', 'correct': true},
        {'text': 'Skewness = (Mean - Median) / Standard Deviation', 'correct': false},
        {'text': 'Skewness = 3 * (Mean - Median) / Standard Deviation', 'correct': false},
        {'text': 'Skewness = (Mean - 3 * Median) / Standard Deviation', 'correct': false},
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
        title: Text('Statistics Quiz'),
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
        title: Text('Statistics Quiz'),
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
      width: double.infinity,
      margin: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
      child: ElevatedButton(
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all(Colors.blue),
          textStyle: MaterialStateProperty.all(
            TextStyle(fontSize: 16),
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
