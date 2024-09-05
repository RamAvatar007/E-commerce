import 'package:cached_network_image/cached_network_image.dart';
import 'package:e_cart/utils/r_constant/r_color.dart';
import 'package:e_cart/utils/r_constant/r_size.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomList extends StatelessWidget {
  const CustomList({super.key, required this.title, this.width});
 final String title;
 final double? width;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 120,
      child: ListView.builder(
        padding: const EdgeInsets.symmetric(horizontal: 4),
        scrollDirection: Axis.horizontal,
        itemCount: 15,
        shrinkWrap: true,
        itemBuilder: (context, index) {
          return Container(
            height: 100,
            width: 80,
            margin: const EdgeInsets.symmetric(horizontal: 5),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(7),
              color: RColor.primaryColor.withOpacity(.35),
            ),
            child: Column(
              children: [
                ClipRRect(
                  borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(7),
                      topRight: Radius.circular(7)),
                  child: CachedNetworkImage(
                    imageUrl:
                        "https://nobero.com/cdn/shop/files/Winterwearforwomen.jpg?v=1697198856&width=360",
                    fit: BoxFit.cover,
                    errorWidget: (context, url, error) =>
                        const Icon(Icons.error_outline_rounded),
                    width: 80,
                    height: 50,
                    placeholder: (context, url) => const Center(
                      child: CupertinoActivityIndicator(),
                    ),
                  ),
                ),
                Container(
                  width: width,
                  margin: const EdgeInsets.symmetric(vertical: 5),
                  padding:
                      const EdgeInsets.symmetric(horizontal: 5, vertical: 4),
                  decoration: BoxDecoration(
                    color: RColor.primaryColor,
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Center(
                    child: Text(
                      title,
                      style: TextStyle(
                          fontSize: RSize.fo10, color: RColor.appTextColor),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 5.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Chiffon End",
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(
                            fontSize: RSize.fo11, color: Colors.black),
                      ),
                      Text(
                        "Rs. 2000",
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(
                            fontSize: RSize.fo11, color: Colors.black),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
