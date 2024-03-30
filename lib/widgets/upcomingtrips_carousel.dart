import 'package:flutter/material.dart' hide BoxDecoration, BoxShadow;
import 'package:flutter_inset_box_shadow/flutter_inset_box_shadow.dart';
import 'package:green/data/upcoming_trips.dart';
import 'package:green/presets/colors.dart';
import 'package:green/presets/fonts.dart';
import 'package:green/presets/shadow.dart';
import 'package:green/presets/styles.dart';
import 'package:carousel_slider/carousel_slider.dart';

class UpcomingTripCarousel extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: AppStyles.borderRadiusAll,
      child: CarouselSlider(
        items: upcomingTripList.map((item) {
          return Stack(
            children: [
              Stack(
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width,
                    constraints: BoxConstraints(minHeight: 100),
                    decoration: BoxDecoration(
                      boxShadow: [
                        AppShadow.innerShadow3,
                        AppShadow.innerShadow4,
                      ],
                      gradient: AppColor.blackGradient(),
                    ),
                  ),
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
                padding: const EdgeInsets.symmetric(
                  horizontal: 10,
                  vertical: 10,
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      item.destinationName,
                      style: AppFonts.normalRegularTextWhite,
                    ),
                    Text(
                      "MAY 30, 2024 - JUNE 3, 2024",
                      style: AppFonts.extraSmallLightTextWhite,
                    ),
                  ],
                ),
              ),
            ],
          );
        }).toList(),
        options: CarouselOptions(
          autoPlayInterval: const Duration(seconds: 4),
          autoPlay: true,
          height: 180,
          aspectRatio: 2.0,
          viewportFraction: 1.0,
        ),
      ),
    );
  }
}
