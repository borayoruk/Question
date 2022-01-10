import 'package:flutter/material.dart';
import 'package:question/contact.dart';
import 'package:question/main.dart';
import 'package:question/questionScreen.dart';
import 'package:question/service/auth.dart';
import 'package:firebase_core/firebase_core.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
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

class Login extends StatefulWidget {
  @override
  InputFields createState() => InputFields();
}

class InputFields extends State<Login>{
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

 // final My_app main = My_app();

  AuthService authService = AuthService();


  @override
  Widget build (BuildContext context) {
    return Scaffold(
        body: Column(
          children: [
          Container( // email
            child: const Padding(
              padding:
              EdgeInsetsDirectional.fromSTEB( 55,220,55,70 ),
              child: TextField(
                style: TextStyle(fontSize: 18),
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration(
                    hintText: 'Enter your email here'
                ),
              ),
            )
          ),
          Container( // password
            child: const Padding(
              padding:
              EdgeInsetsDirectional.fromSTEB( 55,0,55,40 ),
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
          Container( // login buton
              child: Padding(
                padding:
                EdgeInsetsDirectional.fromSTEB( 55,0,55,0 ),
                child: ElevatedButton(
                  onPressed: () async {
                    await authService.signIn(emailController.text, passwordController.text)
                        .then((value)
                    {
                      authService.signIn(emailController.text, passwordController.text).then((value) {
                        return Navigator.push(context, MaterialPageRoute(
                          builder: (context) => QuestionScreen())); // sign in olunca question screen e gidiyo
                        });
                    });
                  },
                  child:
                  ButtonTheme(
                    minWidth: 250,
                    height: 250,
                    child: Text('Login'),
                  ),
                ),
              )
          ),
        ],
      )
    );
  }
}
