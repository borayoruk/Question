import 'Questions.dart';

class DataTest {
  int _index =0;
  final List <Questions> _QuestionPool =
  [
    Questions(QuestionText:"The capital city of Turkey is Istanbul ?", Questionanswers: false),
    Questions(QuestionText:"The international dialing code of Turkey is +90. ?", Questionanswers: true ),
    Questions(QuestionText:"Piri Reis drew the world map for the first time. ?", Questionanswers:  true),
    Questions(QuestionText:"Atatürk'ün yurt gezilerinde (1935-1938) yılları arasında kullandığı trenin adı Karadumandır.", Questionanswers: false ),
    Questions(QuestionText:"Türkiye'de e-devlet uygulaması 2010 tarihinde yürürlüğe girmiştir ?", Questionanswers: false  )
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