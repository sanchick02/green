import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:green/data/packages.dart';
import 'package:green/model/packages_model.dart';
import 'package:green/presets/colors.dart';
import 'package:green/presets/fonts.dart';
import 'package:green/presets/shadow.dart';
import 'package:green/presets/styles.dart';

class PackageCarousel extends StatefulWidget {
  final List<Package> packageList;

  const PackageCarousel({
    Key? key,
    required this.packageList,
  }) : super(key: key);

  @override
  State<PackageCarousel> createState() => _PackageCarouselState();
}

class _PackageCarouselState extends State<PackageCarousel> {
  int carouselCurrentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: AppStyles.borderRadiusAll,
      child: CarouselSlider(
        items: widget.packageList.map((item) {
          return Stack(
            children: [
              Stack(
                children: [
                  Image.asset(
                    item.image,
                    fit: BoxFit.cover,
                    width: double.infinity,
                  ),
                  ClipRRect(
                    borderRadius: AppStyles.borderRadiusBottom,
                    child: Container(
                      width: double.infinity,
                      decoration: BoxDecoration(
                        boxShadow: [
                          AppShadow.innerShadow3,
                          AppShadow.innerShadow4,
                        ],
                        gradient: AppColor.blackGradient(),
                      ),
                    ),
                  ),
                ],
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      item.packageName,
                      style: AppFonts.normalRegularTextWhite,
                    ),
                    Text(
                      item.priceFrom,
                      style: AppFonts.extraSmallLightTextWhite,
                    ),
                    Text(
                      item.description1,
                      style: AppFonts.extraSmallLightTextWhite,
                    ),
                    Text(
                      item.description2,
                      style: AppFonts.extraSmallLightTextWhite,
                    )
                  ],
                ),
              ),
            ],
          );
        }).toList(),
        options: CarouselOptions(
          autoPlay: false,
          height: 180,
          aspectRatio: 2.0,
          viewportFraction: 1.0,
          onPageChanged: (index, reason) {
            setState(() {
              carouselCurrentIndex = index;
            });
          },
        ),
      ),
    );
  }
}
