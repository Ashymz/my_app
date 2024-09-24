import 'package:firebase_auth/firebase_auth.dart';

class FirebaseAuthService {
  FirebaseAuth _auth = FirebaseAuth.instance;

  Future<User?> signupwithemailandpassowrd(
      String email, String password) async {
    try {
      UserCredential credential = await _auth.createUserWithEmailAndPassword(
          email: email, password: password);
      return credential.user;
    } catch (e) {
      print('this is what caused the error: $e');
    }
    return null;
  }

  Future<User?> signinwithemailandpassowrd(
      String email, String password) async {
    try {
      UserCredential credential = await _auth.signInWithEmailAndPassword(
          email: email, password: password);
      return credential.user;
    } catch (e) {
      print('error occured $e');
    }
    return null;
  }
}
