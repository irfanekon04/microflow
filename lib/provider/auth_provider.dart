import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:microflow/services/auth_service.dart';

class ProviderAuth extends ChangeNotifier {
  final AuthService _authService;

  User? _user;
  User? get user => _user;

  ProviderAuth(this._authService) {
    _authService.authStateChanges().listen((user) {
      _user = user;
      notifyListeners();
    });
  }

  bool get isLoggedIn => _user != null;

  Future<void> signIn(String email, String pass) {
    return _authService.signIn(email, pass);
  }

  Future<void> signUp(String email, String pass) {
    return _authService.signUp(email, pass);
  }

  Future<void> signOut() {
    return _authService.signOut();
  }
}
