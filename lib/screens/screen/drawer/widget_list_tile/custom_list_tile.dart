import 'package:e_cart/utils/r_constant/r_color.dart';
import 'package:e_cart/utils/r_constant/r_size.dart';
import 'package:flutter/material.dart';

class CustomListTile extends StatelessWidget {
  const CustomListTile(
      {super.key, required this.text, required this.icon, required this.onTap});
  final String text;
  final Widget icon;
  final Function() onTap;
  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: onTap,
      contentPadding: const EdgeInsets.only(top: 10, left: 25),
      leading: icon,
      title: Text(
        text,
        style: TextStyle(
            color: RColor.appTextColor, fontWeight: RSize.f500, fontSize: 15),
      ),
    );
  }
}
