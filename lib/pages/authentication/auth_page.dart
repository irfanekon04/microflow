import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:microflow/pages/authentication/sign_in_page.dart';
import 'package:microflow/pages/bottom_nav_bar.dart';

class AuthPage extends StatelessWidget {
  const AuthPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: StreamBuilder<User?>(
        stream: FirebaseAuth.instance.authStateChanges(),
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            print("Logged in successfully");
            return BottomNavBar();
          } else {
            print("Error!!!");
            return SignInPage();
          }
        },
      ),
    );
  }
}
