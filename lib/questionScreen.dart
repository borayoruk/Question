import 'package:flutter/material.dart';

import 'data.dart';

void main() => runApp(const Question());

class Question extends StatelessWidget {
  const Question({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
        home: Scaffold(
            backgroundColor: Colors.blueGrey,
            body: SafeArea(
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 10.0),
                  child: QuestionPage(),
                )
            )
        )
    );
  }
}

class QuestionPage extends StatefulWidget {
  const QuestionPage({Key? key}) : super(key: key);

  @override
  _QuestionPage createState() => _QuestionPage();
}

class _QuestionPage extends State<QuestionPage> {
  List <Widget> choice=[];
  DataTest test_1 = DataTest();
  void functionOfButton (bool chosenButton) {
    if(test_1.TestChecker() == true)
    {
      showDialog(
        context: context,
        builder: (BuildContext context) {
          // return object of type Dialog
          return AlertDialog(
              title:  const Text("Congratulations you have fisihed the test"),
            //content: new Text("Alert Dialog body"),
            actions: <Widget>[
              // usually buttons at the bottom of the dialog
              TextButton(
                child: const Text("GO BACK"),
                onPressed: () {
                  Navigator.of(context).pop();
                  setState(() {
                    test_1.resetTest();
                    choice = [];
                  });
                },
              ),
            ],
          );
        },
      );
    }
    // alert dialog

    else {
      setState(() {
        //butona basılınca ekranın tekrar oluşması gerekiyo bu yüzden setstate içinde yazdım
        test_1.getQuestionanswers() == chosenButton
          ? choice.add(right)
          : choice.add(wrong);
      test_1.next();
    });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        Expanded(
          flex: 2,
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Center(
              child: Text(
                test_1.getQuestionText(),
                textAlign: TextAlign.center,
                style: const TextStyle(
                  fontSize: 25.0,
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ),
        Wrap(
          children: choice,
        ), // wrap taşmayı engelliyor
        Expanded(
          flex: 1,
          child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 6.0),
              child: Row(children: <Widget>[
                Expanded(
                    child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 6),
                        child: ElevatedButton(
                          child: const Padding(
                            padding: EdgeInsets.all(12),
                            child: Icon(
                              Icons.close,
                              size: 30.0,
                            ),
                          ),
                          onPressed: () {
                            functionOfButton(true);
                          },
                        )
                    )
                ),
                Expanded(
                    child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 6),
                        child: ElevatedButton(
                          child: const Padding(
                            padding: EdgeInsets.all(12),
                            child: Icon(
                              Icons.check,
                              size: 30.0,
                            ),
                          ),
                          onPressed: () {
                            functionOfButton(true);
                          },
                        )
                    )
                ),
              ])
          ),
        )
      ],
    );
  }
}

const Icon right= Icon(Icons.check, color: Colors.green,);
const Icon wrong= Icon(Icons.close,color: Colors.red,);