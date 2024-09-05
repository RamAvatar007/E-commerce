import 'package:e_cart/controller/google_sign_in_controller.dart';
import 'package:e_cart/screens/auth_screens/splash_screen.dart';
import 'package:e_cart/screens/screen/product_screen/product_screen.dart';
import 'package:e_cart/utils/r_constant/r_color.dart';
import 'package:e_cart/utils/r_constant/r_size.dart';
import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:get/get.dart';
import 'package:google_sign_in/google_sign_in.dart';
import '../main_screen/main_screen.dart';
import 'widget_list_tile/custom_list_tile.dart';

class CustomDrawer extends StatefulWidget {
  const CustomDrawer({super.key});

  @override
  State<CustomDrawer> createState() => _CustomDrawerState();
}

class _CustomDrawerState extends State<CustomDrawer> {
  final GoogleSignInController googleSignInController =
      Get.put(GoogleSignInController());

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Drawer(
        shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
                topRight: Radius.circular(20),
                bottomRight: Radius.circular(20))),
        backgroundColor: RColor.primaryColor,
        child: ListView(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          children: [
            ListTile(
              leading: const CircleAvatar(),
              title: Text("Guest",
                  style: TextStyle(
                      color: RColor.appTextColor,
                      fontWeight: RSize.f500,
                      fontSize: 16)),
              subtitle: const Text('Version 1.1.17'),
            ),
            const Divider(
              color: Colors.grey,
              thickness: 1.5,
            ),
            CustomListTile(
                text: 'Home',
                icon:
                    const Icon(Icons.home_rounded, color: RColor.appTextColor),
                onTap: () {
                  Get.offAll(() => const MainScreen());
                }),
            CustomListTile(
                text: 'Products',
                icon: const Icon(Icons.production_quantity_limits_rounded,
                    color: RColor.appTextColor, size: 21),
                onTap: () {
                  Get.to(() => const ProductScreen());
                }),
            CustomListTile(
                text: 'Contact us',
                icon: const Icon(Icons.call_rounded,
                    color: RColor.appTextColor, size: 22),
                onTap: () {}),
            CustomListTile(
                text: 'Log Out',
                icon: const Icon(
                  Icons.logout_rounded,
                  color: RColor.appTextColor,
                  size: 22,
                ),
                onTap: () async {
                  EasyLoading.show(status: 'Please wait....');
                  GoogleSignIn googleSignIn = GoogleSignIn();
                  await googleSignIn.signOut();
                  Get.offAll(() => const SplashScreen());
                  EasyLoading.dismiss();
                }),
          ],
        ),
      ),
    );
  }
}
