import 'package:commerce/core/functions/show_dialog.dart';
import 'package:commerce/core/routes/routes.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:google_sign_in/google_sign_in.dart';

Future<void> signInWithGoogle({required BuildContext context}) async {
  final GoogleSignIn _googleSignIn = GoogleSignIn();
  final FirebaseAuth _auth = FirebaseAuth.instance;
  try {
    final GoogleSignInAccount? googleUser = await _googleSignIn.signIn();
    if (googleUser == null) return;

    final GoogleSignInAuthentication googleAuth =
        await googleUser.authentication;

    final AuthCredential credential = GoogleAuthProvider.credential(
      accessToken: googleAuth.accessToken,
      idToken: googleAuth.idToken,
    );

    await _auth.signInWithCredential(credential);
    final User? user = _auth.currentUser;
    Navigator.pushNamedAndRemoveUntil(
        context, RoutesName.entryPoint, (Route<dynamic> route) => false);
    showCustomDialog(
        context: context, title: "Success", message: "Login Successfully");

    print('User signed in: ${user?.displayName}');
  } catch (e) {
    print('Error signing in with Google: $e');
  }
}
