import 'package:e_cart/utils/r_constant/r_color.dart';
import 'package:e_cart/utils/r_constant/r_size.dart';
import 'package:flutter/material.dart';

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
                style: TextStyle(fontWeight: RSize.fBold, fontSize: RSize.fo16,color: RColor.primaryColor),
              ),
              const SizedBox(
                height: 80,
              ),
              Padding(
                padding:  const EdgeInsets.symmetric(horizontal: 15.0),
                child: Column(
                  children: [
                    TextFormField(
                      decoration:  InputDecoration(
                          prefixIcon: const Icon(Icons.email,color: Colors.grey,),
                          hintText: 'Email',
                          labelText: 'Email',
                          contentPadding: const EdgeInsets.only(top: 2,left: 5),
                          hintStyle: TextStyle(color: Colors.grey,fontSize: RSize.fo16),
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(12),
                              borderSide: const BorderSide(
                                color: Colors.grey,
                              )
                          )
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    TextFormField(
                      decoration:  InputDecoration(
                          prefixIcon: const Icon(Icons.person,color: Colors.grey,),
                          hintText: 'UserName',
                          labelText: 'UserName',
                          contentPadding: const EdgeInsets.only(top: 2,left: 5),
                          hintStyle: TextStyle(color: Colors.grey,fontSize: RSize.fo16),
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(12),
                              borderSide: const BorderSide(
                                color: Colors.grey,
                              )
                          )
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    TextFormField(
                      decoration:  InputDecoration(
                          prefixIcon: const Icon(Icons.phone,color: Colors.grey,),
                          hintText: 'Phone',
                          labelText: 'Phone',
                          contentPadding: const EdgeInsets.only(top: 2,left: 5),
                          hintStyle: TextStyle(color: Colors.grey,fontSize: RSize.fo16),
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(12),
                              borderSide: const BorderSide(
                                color: Colors.grey,
                              )
                          )
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    TextFormField(
                      decoration:  InputDecoration(
                          prefixIcon: const Icon(Icons.location_on,color: Colors.grey,),
                          hintText: 'City',
                          labelText: 'City',
                          contentPadding: const EdgeInsets.only(top: 2,left: 5),
                          hintStyle: TextStyle(color: Colors.grey,fontSize: RSize.fo16),
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(12),
                              borderSide: const BorderSide(
                                color: Colors.grey,
                              )
                          )
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    TextFormField(
                      obscureText: _isVisible,
                      decoration:  InputDecoration(
                          prefixIcon: const Icon(Icons.password,color: Colors.grey,),
                          suffixIcon: InkWell(
                              onTap: (){
                                setState(() {
                                  _isVisible = !_isVisible;
                                });
                              },
                              child: _isVisible ? const Icon(Icons.visibility_off) : const Icon(Icons.remove_red_eye)),
                          hintText: 'Password',
                          labelText: 'Password',
                          contentPadding: const EdgeInsets.only(top: 2,left: 5),
                          hintStyle: TextStyle(color: Colors.grey,fontSize: RSize.fo16),
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(12),
                              borderSide: const BorderSide(
                                color: Colors.grey,
                              )
                          )
                      ),
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
                      height: 20,
                    ),
                    TextButton(onPressed: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context) => const SignInScreen(),));

                    }, child: Text("Already have an account? Sign In",style: TextStyle(fontSize: RSize.fo14,color: RColor.primaryColor),)),
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
