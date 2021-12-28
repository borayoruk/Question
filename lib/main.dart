import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.blueGrey,
      ),
      home: InputFields().build(context),
    );
  }
}

// logo ekleyebiliriz

class InputFields {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            child: const Padding(
              padding:
              EdgeInsetsDirectional.fromSTEB( 55,270,55,0 ),
              child: TextField(
                style: TextStyle(fontSize: 18),
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration(
                    hintText: 'Enter your email here'
                ),
              ),
            )
          ),
          Container(
            child: const Padding(
              padding:
              EdgeInsetsDirectional.fromSTEB( 55,70,55,0 ),
              child: TextField(
                style: TextStyle(fontSize: 18),
                keyboardType: TextInputType.number,
                obscureText: true,
                decoration: InputDecoration(
                    hintText: 'Enter your number password'
                ),
              ),
            )
          ),
        ],
      )
    );
  }
}
