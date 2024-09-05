import 'package:e_cart/utils/r_constant/r_size.dart';
import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';

import 'screens/auth_screens/splash_screen.dart';
import 'utils/r_constant/r_color.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  initFirebase();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'E Cart',
      theme: ThemeData(
       appBarTheme: AppBarTheme(
         elevation: 0,
         centerTitle: true,
         backgroundColor: RColor.primaryColor,
         titleTextStyle: TextStyle(fontSize: RSize.fo22,fontWeight: RSize.f500,color: RColor.appTextColor)
       )
      ),
      home: const SplashScreen(),
      builder: EasyLoading.init(),
    );
  }
}
 initFirebase() async {
   await Firebase.initializeApp(
     options: DefaultFirebaseOptions.currentPlatform,
   );
 }
