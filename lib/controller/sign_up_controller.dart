import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:e_cart/models/user_model.dart';
import 'package:e_cart/utils/r_constant/r_color.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SignUpController extends GetxController {
  FirebaseAuth auth = FirebaseAuth.instance;
  FirebaseFirestore firestore = FirebaseFirestore.instance;

  // for password visibility
  var isPasswordVisible = false.obs;

  Future<UserCredential?> signUpMethod(
    String userName,
    String userEmail,
    String userPhone,
    String userCity,
    String userPassword,
    String userDeviceToken,
  ) async {
    try {
      UserCredential userCredential = await auth.createUserWithEmailAndPassword(email: userEmail,
          password: userPassword);

    await userCredential.user?.sendEmailVerification();

    UserModel userModel = UserModel(
      uId: userCredential.user?.uid,
      username: userName,
      email: userEmail,
      phone: userPhone,
      userImg: '',
      userDeviceToken: userDeviceToken,
      country: '',
      userAddress: '',
      city: userCity,
      street: '',
      isAdmin: false,
      isActive: true,
      createdOn: DateTime.now()
    );

    } on FirebaseAuthException catch (e) {
      Get.snackbar("Error", "$e",
          snackPosition: SnackPosition.BOTTOM,
          backgroundColor: Colors.blueAccent,
          colorText: RColor.appTextColor);
    }
  }
}
