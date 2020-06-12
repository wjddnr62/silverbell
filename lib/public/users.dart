import 'dart:async';

import 'package:cloud_firestore/cloud_firestore.dart';

class Users {
  Future<int> addUsers(userData) async {
    Firestore.instance.collection('users').add(userData).catchError((e) {
      return e;
    });
    return 0;
  }
  
  Future<int> loginUser(String email, String pass) async {
    print(Firestore.instance
        .collection("users")
        .snapshots());
    Firestore.instance
        .collection("users")
        .where('email', isEqualTo: email)
    .where('pass', isEqualTo: pass)
    .snapshots()
    .listen((data) {
      if(data.documents.length == 1) {
        final List<DocumentSnapshot> docs = data.documents;
        print(docs[0].data.toString());
        return 0;
      } else {
        return 1;
      }
    });
  }
}

