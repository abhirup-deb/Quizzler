import 'Question.dart';

class Quiz_brain{
  int qno = 0;
  int f=0;

  List<Question> _QuestionBank = [
    Question('You can lead a cow down stairs but not up stairs.', false),
    Question('Approximately one quarter of human bones are in the feet.', true),
    Question('A slug\'s blood is green.', true),
  ];

  void Nextq() {
    if(qno < _QuestionBank.length-1) {
      ++qno;
    }
    else
        f=1;
  }


  String getQText(){
    return _QuestionBank[qno].QText;
  }

  bool getQAns(){
    return _QuestionBank[qno].QAns;
  }

}