import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';

final FirebaseAuth _auth = FirebaseAuth.instance;

Future<void> signInAsGuest(BuildContext context) async {
  try {
    await _auth.signInAnonymously();
    Navigator.of(context).pushNamed('/MainUI/');
  } catch (e) {
    print("Failed to sign in as guest: $e");
  }
}
