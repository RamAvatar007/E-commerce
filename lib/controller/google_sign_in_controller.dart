import 'dart:developer';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:e_cart/models/user_model.dart';
import 'package:e_cart/screens/auth_screens/splash_screen.dart';
import 'package:e_cart/screens/screen/main_screen/main_screen.dart';
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:get/get.dart';
import 'package:google_sign_in/google_sign_in.dart';

class GoogleSignInController extends GetxController {
  final GoogleSignIn googleSignIn = GoogleSignIn();
  static final FirebaseAuth auth = FirebaseAuth.instance;
  static FirebaseFirestore firestore = FirebaseFirestore.instance;

  handleGoogleBtnClick(BuildContext context) {
    EasyLoading.show(status: 'Please wait....');
    _signInWithGoogle().then((userData) async {

   // Get.offAll(() => const MainScreen());
      log("\n user : ${userData.user.toString()}");
      log("\n user additionalUserInfo : ${userData.additionalUserInfo.toString()}");
      log("\n user credential : ${userData.credential.toString()}");
      Get.offAll(()=> const MainScreen());
    EasyLoading.dismiss();
    });
  }

  static Future<UserCredential> _signInWithGoogle() async {
    // Trigger the authentication flow
    final GoogleSignInAccount? googleUser = await GoogleSignIn().signIn();

    // Obtain the auth details from the request
    final GoogleSignInAuthentication? googleAuth =
        await googleUser?.authentication;

    // Create a new credential
    final credential = GoogleAuthProvider.credential(
      accessToken: googleAuth?.accessToken,
      idToken: googleAuth?.idToken,
    );

    final UserCredential userCredential =
        await auth.signInWithCredential(credential);
    final User? user = userCredential.user;
    if (user != null) {
      UserModel userModel = UserModel(
          uId: user.uid,
          username: user.displayName.toString(),
          userImg: user.photoURL.toString(),
          email: user.email.toString(),
          phone: '',
          street: '',
          city: '',
          isActive: true,
          isAdmin: false,
          createdOn: DateTime.now(),
          userAddress: '',
          country: '',
          userDeviceToken: '');

      await firestore.collection('users').doc(user.uid).set(userModel.toJson());
    }

    // Once signed in, return the UserCredential
    return await FirebaseAuth.instance.signInWithCredential(credential);
  }

   Future<void> logOut() async{
    GoogleSignIn googleSignIn = GoogleSignIn();
    await googleSignIn.signOut();
    Get.offAll(() => const SplashScreen());
  }
}
