import 'package:flutter/material.dart';
import 'package:green/data/activities_data.dart';
import 'package:green/data/destinations.dart';
import 'package:green/model/acommodation_model.dart';
import 'package:green/model/destination_model.dart';
import 'package:green/model/tour_detail_model.dart';
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
    List<ActivityDetail> activityList = activityDetailList
        .where((activity) =>
            activity.destinationName == upcomingTrip.destinationName)
        .toList();
    List<AccommodationDetail> accommodationList = accommodationDetailList
        .where((accommodotion) =>
            accommodotion.destinationName == upcomingTrip.destinationName)
        .toList();
    List<TourDetail> tourList = tourDetailList
        .where((tour) => tour.destinationName == upcomingTrip.destinationName)
        .toList();

    final double totAmountPaid = accommodationList[0].price +
        activityList[0].price +
        activityList[0].price;

    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height * 0.8,
        child: SingleChildScrollView(
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
                          upcomingTrip.destinationName,
                          style: AppFonts.heading3Height,
                        ),
                        Text(
                          upcomingTrip.startDate + " - " + upcomingTrip.endDate,
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
                              upcomingTrip.numOfAdult.toString() +
                                  " Adults, " +
                                  upcomingTrip.numOfKid.toString() +
                                  " Kid",
                              style: AppFonts.extraSmallLightText,
                            ),
                          ],
                        ),
                        const SizedBox(height: 10),
                        Row(
                          children: [
                            Text(
                              "Total Amount Paid: MYR " +
                                  totAmountPaid.toString(),
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
                      margin: EdgeInsets.zero,
                      showButton: false,
                    ),
                    const SizedBox(height: 10),
                    RecommendationCard(
                      margin: EdgeInsets.zero,
                      showButton: false,
                    ),
                    const SizedBox(height: 20),
                    Text(
                      "Purchased Packages",
                      style: AppFonts.normalRegularText,
                    ),
                    const SizedBox(height: 10),
                    PackageCarousel(),
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
      ),
    );
  }
}
