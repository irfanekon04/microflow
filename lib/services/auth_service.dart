import 'package:firebase_auth/firebase_auth.dart';

class AuthService {
  final _auth = FirebaseAuth.instance;

  Stream<User?> authStateChanges() {
    return _auth.authStateChanges();
  }

  Future<void> signIn(String email, String pass) {
    return _auth.signInWithEmailAndPassword(email: email, password: pass);
  }

  Future<void> signUp(String email, String pass) {
    return _auth.createUserWithEmailAndPassword(email: email, password: pass);
  }

  Future<void> signOut() {
    return _auth.signOut();
  }
}
