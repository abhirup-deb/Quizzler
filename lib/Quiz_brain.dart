import 'Question.dart';

class Quiz_brain{
  int _qno = 0;

  List<Question> _QuestionBank = [
    Question('You can lead a cow down stairs but not up stairs.', false),
    Question('Approximately one quarter of human bones are in the feet.', true),
    Question('A slug\'s blood is green.', true),
  ];

  void Nextq() {
    if(_qno < _QuestionBank.length-1) {
      ++_qno;
    }
    print(_qno);
    print(_QuestionBank.length);
  }

  String getQText(){
    return _QuestionBank[_qno].QText;
  }

  bool getQAns(){
    return _QuestionBank[_qno].QAns;
  }

}