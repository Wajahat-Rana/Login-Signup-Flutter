import 'package:google_sign_in/google_sign_in.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart'; // Make sure to import material package for Flutter

Future<dynamic> signInWithGoogle(BuildContext context) async {
  try {
    final GoogleSignInAccount? googleUser = await GoogleSignIn().signIn();

    if (googleUser == null) {
      return null;
    }

    final GoogleSignInAuthentication googleAuth =
        await googleUser.authentication;

    final credential = GoogleAuthProvider.credential(
      accessToken: googleAuth.accessToken,
      idToken: googleAuth.idToken,
    );

    return await FirebaseAuth.instance.signInWithCredential(credential);
  } on FirebaseAuthException catch (e) {
    print('FirebaseAuthException: $e');
    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
      content: Text('Failed to sign in with Google: ${e.message}'),
    ));
    return null;
  } catch (e) {
    print('Error during sign in with Google: $e');
    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
      content: Text('An unexpected error occurred: $e'),
    ));
    return null;
  }
}

Future<bool> signOutFromGoogle(BuildContext context) async {
  try {
    await FirebaseAuth.instance.signOut();
    return true;
  } catch (e) {
    print('Error during sign out from Google: $e');
    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
      content: Text('Failed to sign out: $e'),
    ));
    return false;
  }
}
