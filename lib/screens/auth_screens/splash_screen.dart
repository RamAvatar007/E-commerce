import 'package:e_cart/controller/google_sign_in_controller.dart';
import 'package:e_cart/utils/r_constant/r_color.dart';
import 'package:e_cart/utils/r_constant/r_size.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'sign_in_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  final GoogleSignInController googleSignInController =
      Get.put(GoogleSignInController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Welcome to my app"),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 330,
              color: RColor.primaryColor,
              child: Center(
                child: SizedBox(
                    height: 120,
                    width: 120,
                    child: Image.asset(
                      "assets/images/shopping.png",
                      color: RColor.appTextColor,
                    )),
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            Text(
              "Happy Shopping",
              style: TextStyle(fontWeight: RSize.fBold, fontSize: RSize.fo16),
            ),
            const SizedBox(
              height: 70,
            ),
            ElevatedButton.icon(
              onPressed: () {
                googleSignInController.handleGoogleBtnClick(context);
              },
              style: ElevatedButton.styleFrom(
                  side: const BorderSide(color: RColor.borderColor),
                  backgroundColor: RColor.primaryColor,
                  fixedSize: const Size(270, 47)),
              icon: SizedBox(
                  width: 28,
                  height: 28,
                  child: Image.asset("assets/images/google.png")),
              label: Text(
                " Sign In with Google",
                style: TextStyle(
                    color: RColor.appTextColor, fontWeight: RSize.f400),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            ElevatedButton.icon(
              onPressed: () {
                Get.to(()=>const SignInScreen());
              },
              style: ElevatedButton.styleFrom(
                  backgroundColor: RColor.primaryColor,
                  side: const BorderSide(color: RColor.borderColor),
                  fixedSize: const Size(270, 47)),
              icon: SizedBox(
                  width: 28,
                  height: 28,
                  child: Image.asset(
                    "assets/images/mail.png",
                    color: RColor.appTextColor,
                  )),
              label: Text(
                " Sign In with email",
                style: TextStyle(
                    color: RColor.appTextColor, fontWeight: RSize.f400),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
