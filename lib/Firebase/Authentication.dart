import 'package:bmi_analyzer/Model/User.dart';
import 'package:firebase_auth/firebase_auth.dart' as auth;


class Authentication {
  final auth.FirebaseAuth _firebaseAuth = auth.FirebaseAuth.instance;

  User? _userFromFirebase(auth.User? user) {
    if (user == null) {
      return null;
    }
    return User(user.uid, user.email);
  }

  Stream<User?>? get user {
    return _firebaseAuth.authStateChanges().map(_userFromFirebase);
  }

  Future<User?>? loginWithEmail(String email, String password) async {
    final data = await _firebaseAuth.signInWithEmailAndPassword(
        email: email, password: password);
    return _userFromFirebase(data.user);
  }

  Future<User?>? signupWithEmail(String email, String password) async {
    final data = await _firebaseAuth.createUserWithEmailAndPassword(
        email: email, password: password);
    return _userFromFirebase(data.user);
  }

  Future<void> logout() async {
    return await _firebaseAuth.signOut();
  }
}
