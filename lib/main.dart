import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:login_signup/auth_state.dart';
import 'package:login_signup/firebase_options.dart';
import 'package:login_signup/login_view.dart';
import 'package:login_signup/main_ui.dart';
import 'package:login_signup/signup_view.dart';
import 'package:login_signup/splash_screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: const SplashScreen(),
    routes: {
      '/LoginView/': (context) => const LoginView(),
      '/SignupView/': (context) => const SignupView(),
      '/MainUI/': (context) => const MainUI(),
      '/AuthState/': (context) => const AuthState()
    },
  ));
}
