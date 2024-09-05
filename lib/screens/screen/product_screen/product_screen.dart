import 'package:cached_network_image/cached_network_image.dart';
import 'package:e_cart/utils/r_constant/r_color.dart';
import 'package:e_cart/utils/r_constant/r_size.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ProductScreen extends StatelessWidget {
  const ProductScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Product'),
        centerTitle: false,
        iconTheme: const IconThemeData(color: RColor.appTextColor),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 10,horizontal: 5),
        child: GridView.builder(
          shrinkWrap: true,
          physics: const BouncingScrollPhysics(),
          itemCount: 20,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              mainAxisExtent: 140,
              crossAxisCount: 2,
              crossAxisSpacing: 10,
              mainAxisSpacing: 20),
          itemBuilder: (context, index) {
            return Container(
              height: 120,
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
                      height: 80,
                      width: double.infinity,
                      placeholder: (context, url) => const Center(
                        child: CupertinoActivityIndicator(),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 10.0, left: 10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Align(
                          alignment: Alignment.topLeft,
                          child: Text(
                            "Chiffon End",
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                            style: TextStyle(
                                fontSize: RSize.fo12,
                                fontWeight: RSize.f400,
                                color: RColor.primaryColor),
                          ),
                        ),
                        Text(
                          "Rs. 2000",
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(
                              fontWeight: RSize.f400,
                              fontSize: RSize.fo11, color: RColor.primaryColor),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
