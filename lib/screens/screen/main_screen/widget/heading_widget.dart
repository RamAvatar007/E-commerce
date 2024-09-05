import 'package:e_cart/utils/r_constant/r_color.dart';
import 'package:e_cart/utils/r_constant/r_size.dart';
import 'package:flutter/material.dart';

class HeadingWidget extends StatelessWidget {
  const HeadingWidget(
      {super.key,
      required this.title,
      required this.subTitle,
      required this.onTap});
  final String title;
  final String subTitle;
  final VoidCallback onTap;
  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(20),
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 5, vertical: 10),
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(6),
          color: RColor.primaryColor.withOpacity(.35),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: RSize.f700,
                      fontSize: RSize.fo14),
                ),
                Text(
                  subTitle,
                  style: TextStyle(
                      color: Colors.black54,
                      fontWeight: RSize.f400,
                      fontSize: RSize.fo12),
                ),
              ],
            ),
            InkWell(
                onTap: onTap,
                child: Text(
                  'See All',
                  style: TextStyle(
                      color: Colors.green,
                      fontWeight: RSize.f500,
                      fontSize: RSize.fo14),
                )),
          ],
        ),
      ),
    );
  }
}
