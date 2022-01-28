import 'package:flutter/material.dart';
import 'package:question/questionScreen.dart';
import 'package:question/service/auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:question/service/googleSignIn.dart';

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
      home: Login(),
    );
  }
}


class Login extends StatefulWidget {
  @override
  InputFields createState() => InputFields();
}

class InputFields extends State<Login>{
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  AuthService authService = AuthService();

  @override
  Widget build (BuildContext context) {
    return Scaffold(
        body: Column(
          children: [

            Padding(
              padding: const EdgeInsetsDirectional.fromSTEB( 0,62,0,40 ),
              child: Image.asset(
                'assets/questionMarkLogo.png',
                width: 150,
                height: 150,
              ),
            ),

            Padding(
              padding:
              const EdgeInsetsDirectional.fromSTEB( 55,0,55,0 ),
              child: TextField(
                controller: emailController,
                style: const TextStyle(fontSize: 18),
                keyboardType: TextInputType.emailAddress,
                decoration: const InputDecoration(
                    hintText: 'Enter your email here'
                ),
              ),
            ),

          Padding(
            padding:
            const EdgeInsetsDirectional.fromSTEB( 55,45,55,5 ),
            child: TextField(
              controller: passwordController,
              style: const TextStyle(fontSize: 18),
              keyboardType: TextInputType.number,
              obscureText: true,
              decoration: const InputDecoration(
                  hintText: 'Enter your number password'
              ),
            ),
          ),

          Expanded(
            child: Padding(
              padding:
              const EdgeInsetsDirectional.fromSTEB( 55,75,55,80 ),
              child: ElevatedButton(
                onPressed: () async { // this piece of code is got from external help
                  await authService.signIn(emailController.text, passwordController.text).then((value)
                  {
                    return Navigator.push(context, MaterialPageRoute(
                        builder: (context) => const Question()));
                  });
                },
                child:
                ButtonTheme(
                  child: const Text('Login'),
                ),
              ),
            ),
          ),

            Expanded(
              child: Padding(
                padding:
                const EdgeInsetsDirectional.fromSTEB( 80,0,80,150 ),
                child: ElevatedButton.icon(
                  icon: const FaIcon(FontAwesomeIcons.google),
                  label: const Text('Signup with Google'),
                  onPressed: () {
                    null; // not implemented
                  },
                ),
              ),
            )
        ],
      )
    );
  }
}
