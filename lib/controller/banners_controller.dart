import 'dart:developer';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:get/get.dart';

class BannerController extends GetxController {
  RxList<String> bannerUrl = RxList<String>([]);

  @override
  void onInit() {
    super.onInit();
    fetchBannerUrls();
  }

  Future<void> fetchBannerUrls() async {
    try {
      QuerySnapshot bannersSnapshot =
          await FirebaseFirestore.instance.collection('banners').get();
      if (bannersSnapshot.docs.isNotEmpty) {
        bannerUrl.value =
            bannersSnapshot.docs.map((e) => e['imageUrl'] as String).toList();
      }
    } catch (e) {
      log("\nfetchBannerUrls error : $e");
    }
  }
}
