import 'question.dart';
class QuizBrain {

  int _questionNumber = 0;


  List<Question> _questionBank=[
    Question(q: '1 + 1 = 3', a: false),
    Question(q: 'น้ำเงิน+เขียว = ส้ม', a: false),
    Question(q: 'ทองเป็นโลหะ', a: true),
    Question(q: 'ไก่บินได้เกิน 1 ชั่วโมง', a: false),
    Question(q: 'ประเทศไทยใช้กระแสไฟฟ้า 220V', a: true),
  ];

  void nextQuestion() {
    if (_questionNumber < _questionBank.length-1) {
      _questionNumber++;
    }
  }

  String? getQuestionText() {
    return _questionBank[_questionNumber].questionText;
  }

  bool? getQuestionAnswer() {
    return _questionBank[_questionNumber].questionAnswer;
  }

  bool isFinished() {
    if (_questionNumber >= _questionBank.length - 1) {
      return true;
    } else {
      return false;
    }
  }

  void reset() {
    _questionNumber = 0;
  }

}