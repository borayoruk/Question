import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';


class AuthService{
  final FirebaseAuth auth = FirebaseAuth.instance;
  final FirebaseFirestore firestore = FirebaseFirestore.instance;
  
  Future<User?> signIn(String email, String password) async{
    var user = await auth.signInWithEmailAndPassword(email: email, password: password);
    return user.user;
  }
  signOut() async{
    return await auth.signOut();
  }

  Future<User?> createPerson(String name, String email, String password) async{
    var user = await auth.createUserWithEmailAndPassword(email: email, password: password);
    await firestore
        .collection("Person")
        .doc(user.user?.uid)
        .set({
          'userName' : name,
          'email' : email
        });
    return user.user;
  }

}