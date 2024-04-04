import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:login_signup/login_view.dart';
import 'package:login_signup/main_ui.dart';

class AuthState extends StatelessWidget {
  const AuthState({super.key});
  @override
  Widget build(BuildContext context) {
    return StreamBuilder<User?>(
      stream: FirebaseAuth.instance.authStateChanges(),
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return const CircularProgressIndicator();
        } else if (snapshot.hasData) {
          return const MainUI();
        } else {
          return const LoginView();
        }
      },
    );
  }
}
