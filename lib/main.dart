import 'package:flutter/material.dart';
import 'Quiz_brain.dart';

Quiz_brain quiz_brain = Quiz_brain();

void main() => runApp(Quizzler());

class Quizzler extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.grey.shade900,
        body: SafeArea(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 10.0),
            child: QuizPage(),
          ),
        ),
      ),
    );
  }
}

class QuizPage extends StatefulWidget {


  @override
  _QuizPageState createState() => _QuizPageState();
}

class _QuizPageState extends State<QuizPage> {

  List<Icon> Scorekeeper = [
    Icon(
      Icons.check,
      color: Colors.green,
    ),
    Icon(
      Icons.close,
      color:Colors.red,
    ),
    Icon(
      Icons.close,
      color:Colors.red,
    ),
    Icon(
      Icons.close,
      color:Colors.red,
    ),
  ];


   int qno = 0;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        Expanded(
          flex: 5,
          child: Padding(
            padding: EdgeInsets.all(10.0),
            child: Center(
              child: Text(
                quiz_brain.QuestionBank[qno].QText,
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 25.0,
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ),
        Expanded(
          child: Padding(
            padding: EdgeInsets.all(15.0),
            child: FlatButton(
              textColor: Colors.white,
              color: Colors.green,
              child: Text(
                'True',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20.0,
                ),
              ),
              onPressed: () {
                if(quiz_brain.QuestionBank[qno].QAns == true)
                  print('Correct');
                else
                  print('Wrong');

                setState(() {
                  qno++;
                  Scorekeeper.add(
                  Icon(Icons.check,color: Colors.green,),
                  );
                });
                //The user picked true.
              },
            ),
          ),
        ),
        Expanded(
          child: Padding(
            padding: EdgeInsets.all(15.0),
            child: FlatButton(
              color: Colors.red,
              child: Text(
                'False',
                style: TextStyle(
                  fontSize: 20.0,
                  color: Colors.white,
                ),
              ),
              onPressed: () {

                if(Quiz_brain.QuestionBank[qno].QAns == false)
                  print('Correct');
                else
                  print('Wrong');

                setState(() {
                  qno++;
                  Scorekeeper.add(
                    Icon(Icons.close,color: Colors.red),
                  );
                });
                //The user picked false.
              },
            ),
          ),
        ),
        Row(
          children: Scorekeeper,
        )
      ],
    );
  }
}

/*
question1: 'You can lead a cow down stairs but not up stairs.', false,
question2: 'Approximately one quarter of human bones are in the feet.', true,
question3: 'A slug\'s blood is green.', true,
*/
