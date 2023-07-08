import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:kwekwana/screens/signingUpProcess/verification_code.dart';

import '../screens/bottom_nav_bar_screens.dart';

class FirebaseAuthService {
  FirebaseAuth _auth = FirebaseAuth.instance;

  static String verification_id = '';

  // Sign in with email and password
  Future<UserCredential?> signInWithEmailAndPassword(String email, String password) async {
    try {
      UserCredential userCredential = await _auth.signInWithEmailAndPassword(email: email, password: password);
      return userCredential;
    } catch (e) {
      print('Error logging in with email and password: $e');
      return null;
    }
  }

  // Sign in with email and password
  Future<bool> signInWithPhone(String phone, BuildContext context) async {
    try {
      await _auth.verifyPhoneNumber(
        phoneNumber: phone,
        verificationCompleted: (PhoneAuthCredential credential) {
          print('PhoneAuthCredential is $PhoneAuthCredential');
        },
        verificationFailed: (FirebaseAuthException e) {
          print('verificationFailed is $e');
        },
        codeSent: (String verificationid, int? resendToken) {
          Navigator.push(context, MaterialPageRoute(builder: (context) => VerificationCode()));
          verification_id = verificationid;
        },
        codeAutoRetrievalTimeout: (String verificationId) {},
      );
      return true;
    } catch (e) {
      print('Error logging in with email and password: $e');
      return false;
    }
  }

  // Sign up with email and password
  Future<UserCredential?> signUpWithEmailAndPassword(String email, String password) async {
    try {
      UserCredential userCredential = await _auth.createUserWithEmailAndPassword(email: email, password: password);
      return userCredential;
    } catch (e) {
      print('Error signing up with email and password: $e');
      return null;
    }
  }

  // Sign out the current user
  Future<void> signOut() async {
    try {
      await _auth.signOut();
    } catch (e) {
      print('Error signing out: $e');
    }
  }

  // Check if a user is currently signed in
  bool isSignedIn() {
    return _auth.currentUser != null;
  }

  // Get the current user
  User? getCurrentUser() {
    return _auth.currentUser;
  }

  Future<bool> verifyCode(String code) async {
    try {
      PhoneAuthCredential credential = PhoneAuthProvider.credential(
        verificationId: verification_id,
        smsCode: code,
      );
      await _auth.signInWithCredential(credential);
      return true;
      // Verification successful, proceed with your logic
    } catch (e) {
      // Verification failed, handle the error
      print('Verification failed: $e');
      return false;
    }
  }
}
