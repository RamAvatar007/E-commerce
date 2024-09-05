import 'package:e_cart/controller/google_sign_in_controller.dart';
import 'package:e_cart/screens/screen/drawer/custom_drawer.dart';
import 'package:e_cart/screens/screen/main_screen/widget/all_product.dart';
import 'package:e_cart/screens/screen/main_screen/widget/categories_list.dart';
import 'package:e_cart/screens/screen/main_screen/widget/custom_banner.dart';
import 'package:e_cart/screens/screen/main_screen/widget/custom_list.dart';
import 'package:e_cart/screens/screen/main_screen/widget/heading_widget.dart';
import 'package:e_cart/utils/r_constant/r_color.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  final GoogleSignInController googleSignInController =
      Get.put(GoogleSignInController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: const IconThemeData(color: RColor.appTextColor),
        centerTitle: false,
        title: const Text("Cloth's Collection"),
      ),
      drawer: const CustomDrawer(),
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 10,
            ),
            const CustomBanner(),
            const SizedBox(
              height: 10,
            ),
            HeadingWidget(
              title: 'Treading now',
              subTitle: 'Popular Picks Right Now',
              onTap: () {},
            ),
            const CustomList(
              title: 'Trending',
              width: 60,
            ),
            const SizedBox(
              height: 10,
            ),
            HeadingWidget(
              title: 'Categories',
              subTitle: 'According to your choice',
              onTap: () {},
            ),
            const CategoriesWidget(),
            const SizedBox(
              height: 8,
            ),
            HeadingWidget(
              title: 'Flash Sale',
              subTitle: 'Unbeatable Discount',
              onTap: () {},
            ),
            const CustomList(
              title: 'Sale',
              width: 50,
            ),
            const SizedBox(
              height: 10,
            ),
            HeadingWidget(
              title: 'All Product',
              subTitle: 'Clothes for Every Occasion',
              onTap: () {},
            ),
            AllProduct(),
          ],
        ),
      ),
    );
  }
}
