import 'package:silverbell/Provider/userProvider.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class Repository {
  final _firestoreProvider = userProvider();

  Future<int> getUser(String email, String pass) {
    return _firestoreProvider.getUser(email, pass);
  }}