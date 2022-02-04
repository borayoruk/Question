import 'Questions.dart';

class DataTest {
  int _index =0;
  final List <Questions> _QuestionPool =
  [
    Questions(QuestionText:"The capital city of Turkey is Istanbul ?", Questionanswers: false),
    Questions(QuestionText:"The international dialing code of Turkey is +90. ?", Questionanswers: true ),
    Questions(QuestionText:"Piri Reis drew the world map for the first time. ?", Questionanswers:  true),
    Questions(QuestionText:"The name of the train that Atatürk used during her country tours (1935-1938) is Beyaz Tren", Questionanswers: false ),
    Questions(QuestionText:"The E-Devlet application in Turkey entered into force in 2010", Questionanswers: false  )
  ];


  String getQuestionText(){
    return _QuestionPool[_index].QuestionText;
  }

  bool getQuestionanswers(){
    return _QuestionPool[_index].Questionanswers;
  }
  void next(){
    if(_index+1<_QuestionPool.length)
    {
      _index++;
    }

  }
  bool TestChecker () {
    if( _index+1>=_QuestionPool.length){
      return true;
    }
    else
    {
      return false;
    }
  }

  void resetTest()
  {
    _index=0;
  }
}