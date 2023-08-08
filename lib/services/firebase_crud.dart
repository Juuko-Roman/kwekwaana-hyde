import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class FirebaseCrudServices {
  FirebaseAuth _auth = FirebaseAuth.instance;
  final FirebaseFirestore firestore = FirebaseFirestore.instance;
  late CollectionReference usersCollection;

  // Create operation
  Future<void> createUser(String name, String email) async {
    usersCollection = firestore.collection('users');
    try {
      await usersCollection.add({
        'name': 'Scarlet',
        'name': 'Scarlet Adams',
        'email': 'scarlet@gmail.com',
        'imageUrl': 'images/pic2.jpeg',
        'age': 26,
        'job': 'Bussiness woman',
        'location': 'Ntinda Kampala',
        'distanceAway': '7',
      });
      print('User created successfully!');
    } catch (e) {
      print('Failed to create user: $e');
    }
  }

  // Read operation
  Stream<QuerySnapshot> getUsers() {
    usersCollection = firestore.collection('users');
    return usersCollection.snapshots();
  }

  // Update operation
  Future<void> updateUser(String userId, String fname, String lname) async {
    usersCollection = firestore.collection('users');
    try {
      await usersCollection.doc(userId).update({
        'first_name': fname,
        'last_name': lname,
      });
      print('User updated successfully!');
    } catch (e) {
      print('Failed to update user: $e');
    }
  }

  // Delete operation
  Future<void> deleteUser(String userId) async {
    usersCollection = firestore.collection('users');
    try {
      await usersCollection.doc(userId).delete();
      print('User deleted successfully!');
    } catch (e) {
      print('Failed to delete user: $e');
    }
  }
}
