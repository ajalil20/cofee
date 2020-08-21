import 'package:coffee/models/user.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';

class Authservice {
  final FirebaseAuth _auth = FirebaseAuth.instance;

  //created user object based on FirebaseUser

  Users _userFromFirebaseUser(User user) {
    //Firebase.initializeApp();
    return user != null ? Users(uid: user.uid) : null;
  }

  //sign in anonomously

  Future signInAnon() async {
    await Firebase.initializeApp();
    try {
      UserCredential result = await _auth.signInAnonymously();
      User user = result.user;
      return _userFromFirebaseUser(user);
    } catch (e) {
      print(e.toString());
      return null;
    }
  }

  //sign in with email and pwd
  //register with email and pwd
  // signout
}
