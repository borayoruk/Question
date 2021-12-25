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
      home: InputEmail().build(context),
    );
  }
}

// logo ekleyebiliriz

class InputEmail {

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Padding(
          padding:
          EdgeInsetsDirectional.fromSTEB(
            54,45,54,80
          ),
            child: TextField(
              style: TextStyle(fontSize: 18),
            keyboardType: TextInputType.emailAddress,
          ),
        ),
      ),
    );

  }
}
