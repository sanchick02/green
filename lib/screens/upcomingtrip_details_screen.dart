import 'package:flutter/material.dart';
import 'package:green/data/packages.dart';
import 'package:green/data/recommendations.dart';
import 'package:green/data/upcoming_trips.dart';
import 'package:green/model/upcoming_trip_model.dart';
import 'package:green/presets/colors.dart';
import 'package:green/presets/fonts.dart';
import 'package:green/presets/styles.dart';
import 'package:green/widgets/button.dart';
import 'package:green/widgets/package_carousel.dart';
import 'package:green/widgets/recommendation_card.dart';

class UpcomingTripDetailsScreen extends StatelessWidget {
  const UpcomingTripDetailsScreen({super.key, required this.upcomingTrip});

  final UpcomingTrip upcomingTrip;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              children: [
                Image.asset(
                  upcomingTrip.image,
                  height: 300,
                  width: double.infinity,
                  fit: BoxFit.cover,
                ),
                Container(
                  width: double.infinity,
                  height: 300,
                  decoration: BoxDecoration(
                    gradient: AppColor.whiteGradient(),
                  ),
                ),
                Container(
                  height: 300,
                  padding: AppStyles.edgeInsetsLR,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Spacer(),
                      Text(
                        "Mount Kinabalu",
                        style: AppFonts.heading3Height,
                      ),
                      Text(
                        "MAY 30, 2024 - JUNE 3, 2024",
                        style: AppFonts.smallLightText,
                      ),
                      const SizedBox(height: 10),
                      Row(
                        children: [
                          Image.asset(
                            "lib/assets/icons/profile.png",
                            width: 15,
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Text(
                            "2 Adults, 1 Kid",
                            style: AppFonts.extraSmallLightText,
                          ),
                        ],
                      ),
                      const SizedBox(height: 10),
                      Row(
                        children: [
                          Text(
                            "Total Amount Paid: MYR 590",
                            style: AppFonts.smallLightText,
                          ),
                          Spacer(),
                          DefaultButton(
                            text: "View Receipt",
                            press: () {},
                            backgroundColor: AppColor.btnColorPrimary,
                            height: 25,
                            fontStyle: AppFonts.extraSmallLightTextWhite,
                            width: 100,
                            padding: EdgeInsets.zero,
                          )
                        ],
                      ),
                      const SizedBox(height: 30),
                    ],
                  ),
                ),
                AppBar(
                  backgroundColor: Colors.transparent,
                  title: Text(
                    "Your Upcoming Trip Details",
                    style: AppFonts.normalRegularText,
                  ),
                  leading: IconButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    icon: Image.asset(
                      "lib/assets/icons/arrow_back_gray_small.png",
                      width: 30,
                    ),
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Accommodation",
                    style: AppFonts.normalRegularText,
                  ),
                  const SizedBox(height: 5),
                  RecommendationCard(
                    recommendation: recommendationList[0],
                    margin: EdgeInsets.zero,
                    showButton: false,
                  ),
                  const SizedBox(height: 20),
                  Text(
                    "Purchased Activities",
                    style: AppFonts.normalRegularText,
                  ),
                  const SizedBox(height: 5),
                  RecommendationCard(
                    recommendation: recommendationList[0],
                    margin: EdgeInsets.zero,
                    showButton: false,
                  ),
                  const SizedBox(height: 10),
                  RecommendationCard(
                    recommendation: recommendationList[0],
                    margin: EdgeInsets.zero,
                    showButton: false,
                  ),
                  const SizedBox(height: 20),
                  Text(
                    "Purchased Packages",
                    style: AppFonts.normalRegularText,
                  ),
                  const SizedBox(height: 10),
                  PackageCarousel(
                    packageList: packageList,
                  ),
                  const SizedBox(height: 20),
                  DefaultButton(
                    press: () {},
                    text: "View My Itinerary",
                    backgroundColor: AppColor.btnColorPrimary,
                    height: 40,
                    fontStyle: AppFonts.normalRegularTextWhite,
                    width: double.infinity,
                    padding: const EdgeInsets.symmetric(
                      horizontal: 12,
                      vertical: 8,
                    ),
                  ),
                  const SizedBox(height: 30),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
