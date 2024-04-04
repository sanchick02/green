import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:green/data/destinations.dart';
import 'package:green/page_navigator.dart';
import 'package:green/presets/colors.dart';
import 'package:green/presets/fonts.dart';
import 'package:green/presets/styles.dart';
import 'package:green/screens/destination/destination_details_screen.dart';

class PackageCarousel extends StatefulWidget {
  const PackageCarousel({Key? key, this.showOffer = false}) : super(key: key);

  final bool showOffer;

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
        items: tourDetailList.map((item) {
          return GestureDetector(
            onTap: () {
              navigateNextPage(context, DestinationDetailsScreen(detail: item));
            },
            child: Stack(
              alignment: Alignment.topRight,
              children: [
                Stack(
                  children: [
                    Stack(
                      children: [
                        Image.asset(
                          item.backgroundImage,
                          fit: BoxFit.cover,
                          width: double.infinity,
                        ),
                        ClipRRect(
                          borderRadius: AppStyles.borderRadiusBottom,
                          child: Container(
                            width: double.infinity,
                            decoration: BoxDecoration(
                              gradient: AppColor.blackGradient2(),
                            ),
                          ),
                        ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 10, vertical: 10),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            item.title,
                            style: AppFonts.normalRegularTextWhite,
                          ),
                          Text(
                            item.price.toString(),
                            style: AppFonts.extraSmallLightTextWhite,
                          ),
                          Text(
                            item.descriptionShort,
                            style: AppFonts.extraSmallLightTextWhite,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                if (widget.showOffer)
                  Container(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 5, vertical: 5),
                    width: 120,
                    height: 60,
                    decoration: BoxDecoration(
                      color: Colors.white.withOpacity(0.8),
                      borderRadius: const BorderRadius.only(
                          topRight: Radius.circular(5),
                          bottomLeft: Radius.circular(5)),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          "GET 15% OFF",
                          style: AppFonts.smallRegularText,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Text(
                              "with 150",
                              style: AppFonts.extraSmallLightText,
                            ),
                            const SizedBox(
                              width: 3,
                            ),
                            Image.asset(
                              "lib/assets/images/greenpts.png",
                              width: 20,
                            )
                          ],
                        )
                      ],
                    ),
                  ),
              ],
            ),
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
