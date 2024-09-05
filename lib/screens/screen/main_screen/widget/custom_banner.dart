import 'package:cached_network_image/cached_network_image.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../controller/banners_controller.dart';

class CustomBanner extends StatefulWidget {
  const CustomBanner({super.key});

  @override
  State<CustomBanner> createState() => _CustomBannerState();
}

class _CustomBannerState extends State<CustomBanner> {
  final CarouselController carouselController = CarouselController();
  final BannerController bannerController = Get.put(BannerController());
  @override
  Widget build(BuildContext context) {
    return Obx(() {
      return CarouselSlider(
          items: bannerController.bannerUrl
              .map((e) => ClipRRect(
                    borderRadius: BorderRadius.circular(12),
                    child: CachedNetworkImage(
                      imageUrl: e,
                      fit: BoxFit.cover,
                      width: double.infinity - 10,
                      placeholder: (context, url) => const ColoredBox(
                        color: Colors.white,
                        child: CupertinoActivityIndicator(),
                      ),
                      errorWidget: (context, url, error) =>
                          const Icon(Icons.error_outline_rounded),
                    ),
                  ))
              .toList(),
          options: CarouselOptions(
            scrollDirection: Axis.horizontal,
            autoPlay: true,
            height: 180,
            aspectRatio: 2.5,
            viewportFraction: 1,
          ));
    });
  }
}
