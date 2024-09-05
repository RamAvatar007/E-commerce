import 'package:e_cart/utils/r_constant/r_color.dart';
import 'package:e_cart/utils/r_constant/r_size.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'sign_in_screen.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  bool _isVisible = true;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(
        appBar: AppBar(
          iconTheme: const IconThemeData(color: RColor.appTextColor),
          title: const Text("Sign Up"),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(
                height: 60,
              ),
              Text(
                "Welcome to my app 🙏",
                style: TextStyle(
                    fontWeight: RSize.fBold,
                    fontSize: RSize.fo18,
                    color: RColor.primaryColor),
              ),
              const SizedBox(
                height: 80,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15.0),
                child: Column(
                  children: [
                    TextFormField(
                      cursorColor: RColor.primaryColor,
                      decoration: InputDecoration(
                          prefixIcon: const Icon(
                            Icons.email,
                            color: Colors.grey,
                          ),
                          hintText: 'Email',
                          labelText: 'Email',
                          labelStyle: const TextStyle(color: RColor.primaryColor),
                          focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(12),
                              borderSide: const BorderSide(
                                color: RColor.primaryColor,
                              )),
                          contentPadding:
                              const EdgeInsets.only(top: 2, left: 5),
                          hintStyle: TextStyle(
                              color: Colors.grey, fontSize: RSize.fo16),
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(12),
                              borderSide: const BorderSide(
                                color: Colors.grey,
                              ))),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    TextFormField(
                      cursorColor: RColor.primaryColor,
                      decoration: InputDecoration(
                          prefixIcon: const Icon(
                            Icons.person,
                            color: Colors.grey,
                          ),
                          hintText: 'UserName',
                          labelText: 'UserName',
                          contentPadding:
                              const EdgeInsets.only(top: 2, left: 5),
                          hintStyle: TextStyle(
                              color: Colors.grey, fontSize: RSize.fo16),
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(12),
                              borderSide: const BorderSide(
                                color: Colors.grey,
                              )),
                        labelStyle: const TextStyle(color: RColor.primaryColor),
                      focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12),
                          borderSide: const BorderSide(
                            color: RColor.primaryColor,
                          )),
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    TextFormField(
                      cursorColor: RColor.primaryColor,
                      decoration: InputDecoration(
                          prefixIcon: const Icon(
                            Icons.phone,
                            color: Colors.grey,
                          ),
                          hintText: 'Phone',
                          labelText: 'Phone',
                          contentPadding:
                              const EdgeInsets.only(top: 2, left: 5),
                          hintStyle: TextStyle(
                              color: Colors.grey, fontSize: RSize.fo16),
                          labelStyle: const TextStyle(color: RColor.primaryColor),
                          focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(12),
                              borderSide: const BorderSide(
                                color: RColor.primaryColor,
                              )),
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(12),
                              borderSide: const BorderSide(
                                color: Colors.grey,
                              ))),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    TextFormField(
                      cursorColor: RColor.primaryColor,
                      decoration: InputDecoration(
                          prefixIcon: const Icon(
                            Icons.location_on,
                            color: Colors.grey,
                          ),
                          hintText: 'City',
                          labelText: 'City',
                          contentPadding:
                              const EdgeInsets.only(top: 2, left: 5),
                          hintStyle: TextStyle(
                              color: Colors.grey, fontSize: RSize.fo16),
                          labelStyle: const TextStyle(color: RColor.primaryColor),
                          focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(12),
                              borderSide: const BorderSide(
                                color: RColor.primaryColor,
                              )),
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(12),
                              borderSide: const BorderSide(
                                color: Colors.grey,
                              ))),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    TextFormField(
                      cursorColor: RColor.primaryColor,
                      obscureText: _isVisible,
                      decoration: InputDecoration(
                          prefixIcon: const Icon(
                            Icons.password,
                            color: Colors.grey,
                          ),
                          suffixIcon: InkWell(
                              onTap: () {
                                setState(() {
                                  _isVisible = !_isVisible;
                                });
                              },
                              child: _isVisible
                                  ? const Icon(Icons.visibility_off)
                                  : const Icon(Icons.remove_red_eye)),
                          hintText: 'Password',
                          labelText: 'Password',
                          contentPadding:
                              const EdgeInsets.only(top: 2, left: 5),
                          hintStyle: TextStyle(
                              color: Colors.grey, fontSize: RSize.fo16),
                          labelStyle: const TextStyle(color: RColor.primaryColor),
                          focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(12),
                              borderSide: const BorderSide(
                                color: RColor.primaryColor,
                              )),
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(12),
                              borderSide: const BorderSide(
                                color: Colors.grey,
                              ))),
                    ),
                    const SizedBox(
                      height: 60,
                    ),
                    ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                          backgroundColor: RColor.primaryColor,
                          fixedSize: const Size(160, 45)),
                      child: Text(
                        " SIGN UP",
                        style: TextStyle(
                            color: RColor.appTextColor, fontWeight: RSize.f400),
                      ),
                    ),
                    const SizedBox(
                      height: 40,
                    ),
                    RichText(
                        text: TextSpan(
                            text: "Already have an account? ",
                            style: TextStyle(
                                fontSize: RSize.fo14,
                                color: RColor.primaryColor.withOpacity(.9)),
                            children: [
                              TextSpan(
                                recognizer: TapGestureRecognizer()
                                  ..onTap = () {
                                    Get.to(()=>const SignInScreen());
                                  },
                                text: "Sign In",
                                style: TextStyle(
                                    fontSize: RSize.fo15,
                                    fontWeight: RSize.fBold,
                                    color: RColor.primaryColor),
                              )
                            ])),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
