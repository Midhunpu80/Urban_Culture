// ignore_for_file: non_constant_identifier_names, camel_case_types, unused_local_variable

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:urban_culture/view/screens/authscreen/login.dart';
import 'package:urban_culture/view/screens/bottonnavscreen/bottomnav_screen.dart';

class authentication_service extends GetxController {
  FirebaseAuth auth = FirebaseAuth.instance;

  Future signup_user(
      {required var email, required var password, required var name}) async {
    try {
      UserCredential credential = await auth.createUserWithEmailAndPassword(
          email: email, password: password);
      await FirebaseFirestore.instance
          .collection('users')
          .doc(credential.user?.uid.toString())
          .set({
        "uid": credential.user?.uid.toString(),
        "Name": name,
        "email": email,
        "password": password,
       
      }).then((value) => Get.to(()=>loginscreen()));
    } on FirebaseAuthException catch (e) {
      if (e.code == "weak-password") {
        print("the password provided to week");
      }
      if (e.code == "email-already-in-use") {
        print("The account already exists for that email");
      }
      // ignore: avoid_print
      print(e.toString());
    } catch (e) {
      // ignore: avoid_print
      print(e.toString());
    }
  }

  var isLoading = true.obs;

  Future Login_user({required email, required password}) async {
    try {
      // isLoading(true);

      UserCredential credential = await auth.signInWithEmailAndPassword(
          email: email, password: password);
      User? user = auth.currentUser;

      if (user != null) {
        Get.offAll(() => bottomnavscreen());
    
     
      } else {
        // ignore: avoid_print
        print("failed");
        isLoading(false);
      }
    } on FirebaseAuthException catch (e) {
      if (e.code.toString() == 'user-not-found') {
        // ignore: avoid_print
        print('No user found for that email.');
      } else if (e.code.toString() == 'wrong-password') {
        // ignore: avoid_print
        print('Wrong password provided for that user.');
      }
    } catch (e) {
      // ignore: avoid_print
      print(e.toString());
    } finally {
      isLoading(false);
    }
  }

  logout() async {
    await FirebaseAuth.instance
        .signOut()
        .then((value) => Get.offAll(() => loginscreen()));
  }

  
  
}
