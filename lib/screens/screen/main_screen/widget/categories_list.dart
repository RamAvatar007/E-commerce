import 'package:cached_network_image/cached_network_image.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:e_cart/models/category_model.dart';
import 'package:e_cart/screens/screen/product_screen/product_screen.dart';
import 'package:e_cart/utils/r_constant/r_color.dart';
import 'package:e_cart/utils/r_constant/r_size.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CategoriesWidget extends StatelessWidget {
  const CategoriesWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 85,
      child: FutureBuilder(
        future: FirebaseFirestore.instance.collection('categories').get(),
        builder: (BuildContext context, AsyncSnapshot<QuerySnapshot> snapshot) {
          if (snapshot.hasError) {
            return const Center(
              child: Text("Error"),
            );
          } else if (snapshot.connectionState == ConnectionState.waiting) {
            return const SizedBox(
                height: 50,
                child: Center(
                  child: CupertinoActivityIndicator(),
                ));
          } else if (snapshot.data!.docs.isEmpty) {
            return const Center(
              child: Text("No Category Found!"),
            );
          } else {
            if (snapshot.data != null) {
              return ListView.builder(
                itemCount: snapshot.data!.docs.length,
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  CategoriesModel categoriesModel = CategoriesModel(
                    categoriesId: snapshot.data!.docs[index]['categoriesId'],
                    categoriesImg: snapshot.data!.docs[index]['categoriesImg'],
                    categoriesName: snapshot.data!.docs[index]
                        ['categoriesName'],
                    createdAt: snapshot.data!.docs[index]['createdAt'],
                    updatedAt: snapshot.data!.docs[index]['updatedAt'],
                  );

                  return InkWell(
                    onTap: () {
                      Get.to(() => const ProductScreen());
                    },
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 8.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SizedBox(
                              height: 50,
                              width: 50,
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(100),
                                child: CachedNetworkImage(
                                  imageUrl:
                                      categoriesModel.categoriesImg.toString(),
                                  fit: BoxFit.cover,
                                  placeholder: (context, url) => const Center(
                                    child: CupertinoActivityIndicator(),
                                  ),
                                  errorWidget: (context, url, error) =>
                                      const Icon(Icons.error_outline_rounded),
                                ),
                              )),
                          const SizedBox(
                            height: 5,
                          ),
                          Container(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 5, vertical: 5),
                            decoration: BoxDecoration(
                              color: RColor.primaryColor,
                              borderRadius: BorderRadius.circular(8),
                            ),
                            child: Text(
                              categoriesModel.categoriesName.toString(),
                              style: TextStyle(
                                  fontSize: RSize.fo11,
                                  color: RColor.appTextColor),
                            ),
                          )
                        ],
                      ),
                    ),
                  );
                },
              );
            }
          }
          return Container();
        },
      ),
    );
  }
}
