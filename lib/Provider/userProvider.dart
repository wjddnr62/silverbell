import 'package:cloud_firestore/cloud_firestore.dart';

class userProvider {
  Firestore _firestore = Firestore.instance;

  Future<int> getUser(String email, String pass) async {
    final QuerySnapshot result = await Firestore.instance
        .collection("users")
        .where('email', isEqualTo: email)
        .where('pass', isEqualTo: pass)
        .getDocuments();

    final List<DocumentSnapshot> docs = result.documents;

    if (docs.length == 0) {
      return 0;
    } else {
      if (docs[0].data["email"] == email && docs[0].data["pass"] == pass) {
        return 1;
      } else {
        return 2;
      }
    }
  }
}