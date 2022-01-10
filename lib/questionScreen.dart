import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const QuestionScreen());
}
class QuestionScreen extends StatefulWidget {
  const QuestionScreen({Key? key}) : super(key: key);

  @override
  _QuestionScreenState createState() => _QuestionScreenState();
}

class _QuestionScreenState extends State<QuestionScreen> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: Text('Question'),
            centerTitle: true,
            leading: Icon(Icons.menu),

          ),
          body: Column(
            children: [
              const Expanded(flex: 3,
                child: Center(child: Text('Soru Metni'),
                ),
              ),
              Expanded( flex: 1,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: ElevatedButton(onPressed: () {

                        }, child: Text('A şıkkı')),
                      ),
                    ),
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: ElevatedButton(onPressed: () {

                        }, child: Text('B şıkkı'),),
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(flex: 1,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: ElevatedButton(onPressed: () {

                        }, child: Text('C şıkkı')),
                      ),
                    ),
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: ElevatedButton(onPressed: () {

                        }, child: Text('D şıkkı'),),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          )
      ),
    );
  }
}