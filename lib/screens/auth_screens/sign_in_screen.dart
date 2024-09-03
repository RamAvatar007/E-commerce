import 'package:flutter/material.dart';
import '../../utils/r_constant/r_color.dart';
import '../../utils/r_constant/r_size.dart';
import 'sign_up_screen.dart';

class SignInScreen extends StatefulWidget {
  const SignInScreen({super.key});

  @override
  State<SignInScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
   bool _isVisible = true;
  @override
  Widget build(BuildContext context) {

    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(
        appBar: AppBar(
          title: const Text("Sign In"),
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
                height: 20,
              ),
              Text(
                "Welcome to my app 🙏",
                style: TextStyle(fontWeight: RSize.fBold, fontSize: RSize.fo16),
              ),
              const SizedBox(
                height: 40,
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
                    Align(
                        alignment: Alignment.topRight,
                        child: TextButton(onPressed: (){}, child: Text("Forget Password?",style: TextStyle(fontSize: RSize.fo14,color: RColor.primaryColor),))),
                    const SizedBox(
                      height: 10,
                    ),
                    ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                          backgroundColor: RColor.primaryColor,
                          fixedSize: const Size(160, 45)),
                      child: Text(
                        " SIGN IN",
                        style: TextStyle(
                            color: RColor.appTextColor, fontWeight: RSize.f400),
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    TextButton(onPressed: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context) => const SignUpScreen(),));

                    }, child: Text("Don't have an account? Sign Up",style: TextStyle(fontSize: RSize.fo14,color: RColor.primaryColor),)),
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
