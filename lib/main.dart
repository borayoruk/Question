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
  final inputPassword = Padding(
    padding: EdgeInsets.only(bottom: 20),
    child: TextField(
      keyboardType: TextInputType.text,
      obscureText: true,
      decoration: InputDecoration(
          hintText: 'Password',
          contentPadding: EdgeInsets.symmetric(horizontal: 25, vertical: 20),
          border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(50.0)
          )
      ),
    ),
  );
}
